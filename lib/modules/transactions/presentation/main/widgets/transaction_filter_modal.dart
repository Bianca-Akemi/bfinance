import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:s_mobills/core/core.dart';
import 'package:s_mobills/ui/ui.dart';

class TransactionFilterResult {
  const TransactionFilterResult({
    this.startDate,
    this.endDate,
    this.type,
  });

  final DateTime? startDate;
  final DateTime? endDate;
  final TransactionType? type;
}

class TransactionFilterModal extends StatefulWidget {
  const TransactionFilterModal({
    super.key,
    this.initialStartDate,
    this.initialEndDate,
    this.initialType,
  });

  final DateTime? initialStartDate;
  final DateTime? initialEndDate;
  final TransactionType? initialType;

  @override
  State<TransactionFilterModal> createState() =>
      _TransactionFilterModalState();
}

class _TransactionFilterModalState extends State<TransactionFilterModal> {
  DateTime? _startDate;
  DateTime? _endDate;
  TransactionType? _selectedType;

  final _dateFormat = DateFormat('dd/MM/yyyy');

  @override
  void initState() {
    super.initState();
    _startDate = widget.initialStartDate;
    _endDate = widget.initialEndDate;
    _selectedType = widget.initialType;
  }

  Future<void> _pickDate({required bool isStart}) async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: isStart
          ? (_startDate ?? now)
          : (_endDate ?? now),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
    }
  }

  void _clearFilters() {
    Navigator.of(context).pop(
      const TransactionFilterResult(),
    );
  }

  void _applyFilters() {
    Navigator.of(context).pop(
      TransactionFilterResult(
        startDate: _startDate,
        endDate: _endDate,
        type: _selectedType,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          SMobillsSpacing.md,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Filtros',
                style: SMobillsTextStyles.h6,
              ),
              TextButton(
                onPressed: _clearFilters,
                child: const Text('Limpar'),
              ),
            ],
          ),
          SMobillsSpacing.md,
          const Text(
            'Tipo',
            style: SMobillsTextStyles.subtitle2,
          ),
          SMobillsSpacing.sm,
          Row(
            children: [
              Expanded(
                child: _FilterChip(
                  label: 'Receita',
                  icon: Icons.north_outlined,
                  color: const Color(0xFF059669),
                  isSelected: _selectedType == TransactionType.income,
                  onTap: () {
                    setState(() {
                      _selectedType =
                          _selectedType == TransactionType.income
                              ? null
                              : TransactionType.income;
                    });
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _FilterChip(
                  label: 'Despesa',
                  icon: Icons.south_outlined,
                  color: const Color(0xFFDC2626),
                  isSelected: _selectedType == TransactionType.expense,
                  onTap: () {
                    setState(() {
                      _selectedType =
                          _selectedType == TransactionType.expense
                              ? null
                              : TransactionType.expense;
                    });
                  },
                ),
              ),
            ],
          ),
          SMobillsSpacing.lg,
          const Text(
            'Período',
            style: SMobillsTextStyles.subtitle2,
          ),
          SMobillsSpacing.sm,
          Row(
            children: [
              Expanded(
                child: _DateField(
                  label: 'Data inicial',
                  value: _startDate != null
                      ? _dateFormat.format(_startDate!)
                      : null,
                  onTap: () => _pickDate(isStart: true),
                  onClear: () => setState(() => _startDate = null),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _DateField(
                  label: 'Data final',
                  value: _endDate != null
                      ? _dateFormat.format(_endDate!)
                      : null,
                  onTap: () => _pickDate(isStart: false),
                  onClear: () => setState(() => _endDate = null),
                ),
              ),
            ],
          ),
          SMobillsSpacing.lg,
          FilledButton(
            onPressed: _applyFilters,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text('Aplicar filtros'),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.icon,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? color.withValues(alpha: 0.15) : null,
          border: Border.all(
            color: isSelected ? color : Colors.grey[300]!,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 20),
            const SizedBox(width: 8),
            Text(
              label,
              style: SMobillsTextStyles.body2.copyWith(
                color: isSelected ? color : null,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DateField extends StatelessWidget {
  const _DateField({
    required this.label,
    required this.value,
    required this.onTap,
    required this.onClear,
  });

  final String label;
  final String? value;
  final VoidCallback onTap;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(
              Icons.calendar_today_outlined,
              size: 18,
              color: Colors.grey[600],
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                value ?? label,
                style: SMobillsTextStyles.body2.copyWith(
                  color: value != null ? null : Colors.grey[500],
                ),
              ),
            ),
            if (value != null)
              GestureDetector(
                onTap: onClear,
                child: Icon(
                  Icons.close,
                  size: 18,
                  color: Colors.grey[600],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

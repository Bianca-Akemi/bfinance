import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    required this.isExpense,
    required this.isDone,
    required this.name,
    required this.description,
    required this.value,
    super.key,
  });

  final bool isExpense;
  final bool isDone;
  final String name;
  final String description;
  final String value;

  @override
  Widget build(BuildContext context) {
    final typeColor = isExpense
        ? const Color(0xFFFB7185)
        : const Color(0xFF34D399);

    final statusColor = isDone
        ? const Color(0xFF34D399)
        : const Color(0xFFFBBF24);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: typeColor.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              isExpense
                  ? Icons.south_outlined
                  : Icons.north_outlined,
              size: 18,
              color: typeColor,
            ),
          ),
          SMobillsInline.md,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: SMobillsTextStyles.body1.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (description.isNotEmpty)
                  Text(
                    description,
                    style: SMobillsTextStyles.caption.copyWith(
                      color: context.colorScheme.onSurface
                          .withValues(alpha: 0.5),
                    ),
                  ),
                const SizedBox(height: 2),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    isExpense
                        ? isDone
                            ? 'Pago'
                            : 'Pendente'
                        : isDone
                            ? 'Recebido'
                            : 'Pendente',
                    style: SMobillsTextStyles.caption.copyWith(
                      fontWeight: FontWeight.w600,
                      color: statusColor,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            value,
            style: SMobillsTextStyles.body2.copyWith(
              fontWeight: FontWeight.w700,
              color: typeColor,
            ),
          ),
        ],
      ),
    );
  }
}

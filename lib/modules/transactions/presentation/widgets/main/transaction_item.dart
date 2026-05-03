import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:s_mobills/ui/ui.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    required this.isExpense,
    required this.isDone,
    required this.name,
    required this.description,
    required this.value,
    required this.date,
    this.accountName = '',
    super.key,
  });

  final bool isExpense;
  final bool isDone;
  final String name;
  final String description;
  final String value;
  final DateTime date;
  final String accountName;

  @override
  Widget build(BuildContext context) {
    final arrowColor = isExpense
        ? const Color(0xFFB91C1C)
        : const Color(0xFF15803D);

    final statusColor = isDone
        ? const Color(0xFF34D399)
        : const Color(0xFFFBBF24);

    final formattedDate =
        DateFormat('dd/MM/yyyy').format(date);

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            isExpense
                ? Icons.arrow_downward
                : Icons.arrow_upward,
            size: 32,
            color: arrowColor,
          ),
          SMobillsInline.md,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style:
                      SMobillsTextStyles.body1.copyWith(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF3B49DF),
                  ),
                ),
                const SizedBox(height: 2),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'descrição',
                        style: SMobillsTextStyles.body2
                            .copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ': $description',
                        style: SMobillsTextStyles.body2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'data',
                        style: SMobillsTextStyles.body2
                            .copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ': $formattedDate',
                        style: SMobillsTextStyles.body2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor
                        .withValues(alpha: 0.15),
                    borderRadius:
                        BorderRadius.circular(6),
                  ),
                  child: Text(
                    isExpense
                        ? isDone
                            ? 'Pago'
                            : 'Pendente'
                        : isDone
                            ? 'Recebido'
                            : 'Pendente',
                    style: SMobillsTextStyles.caption
                        .copyWith(
                      fontWeight: FontWeight.w600,
                      color: statusColor,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SMobillsInline.sm,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (accountName.isNotEmpty)
                Text(
                  accountName,
                  style:
                      SMobillsTextStyles.body2.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              const SizedBox(height: 4),
              Text(
                value,
                style: SMobillsTextStyles.h6.copyWith(
                  fontWeight: FontWeight.w800,
                  color:
                      context.colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class MonthBalance extends StatelessWidget {
  const MonthBalance({
    required this.totalExpanse,
    required this.totalIncome,
    required this.balance,
    required this.balancePercent,
    required this.spentTooMuch,
    super.key,
  });

  final String totalExpanse;
  final String totalIncome;
  final String balance;
  final String balancePercent;
  final bool spentTooMuch;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Balanço mensal',
            style: SMobillsTextStyles.subtitle1.copyWith(
              color: context.colorScheme.onSurface
                  .withValues(alpha: 0.7),
              fontWeight: FontWeight.w600,
            ),
          ),
          SMobillsSpacing.sm,
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  _BalanceRow(
                    label: 'Receitas',
                    value: totalIncome,
                    valueColor: const Color(0xFF34D399),
                    context: context,
                  ),
                  SMobillsSpacing.sm,
                  _BalanceRow(
                    label: 'Despesas',
                    value: totalExpanse,
                    valueColor: const Color(0xFFFB7185),
                    context: context,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Divider(),
                  ),
                  _BalanceRow(
                    label: 'Balanço',
                    value: balance,
                    valueColor: context.colorScheme.onSurface,
                    context: context,
                    isBold: true,
                  ),
                  SMobillsSpacing.lg,
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer
                          .withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Economia: $balancePercent',
                      style: SMobillsTextStyles.subtitle2.copyWith(
                        color:
                            context.colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SMobillsSpacing.md,
                  Text(
                    spentTooMuch
                        ? 'Você está gastando demais. '
                            'Registre suas despesas e se controle.'
                        : 'Você está no controle, '
                            'continue assim!',
                    textAlign: TextAlign.center,
                    style: SMobillsTextStyles.body2.copyWith(
                      color: context.colorScheme.onSurface
                          .withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BalanceRow extends StatelessWidget {
  const _BalanceRow({
    required this.label,
    required this.value,
    required this.valueColor,
    required this.context,
    this.isBold = false,
  });

  final String label;
  final String value;
  final Color valueColor;
  final BuildContext context;
  final bool isBold;

  @override
  Widget build(BuildContext _) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: SMobillsTextStyles.body1.copyWith(
            color: context.colorScheme.onSurface,
          ),
        ),
        Text(
          value,
          style: SMobillsTextStyles.body2.copyWith(
            fontWeight:
                isBold ? FontWeight.w800 : FontWeight.bold,
            color: valueColor,
          ),
        ),
      ],
    );
  }
}

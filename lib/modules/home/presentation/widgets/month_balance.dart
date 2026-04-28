import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class MonthBalance extends StatelessWidget {
  const MonthBalance({
    required this.totalExpanse,
    required this.totalIncome,
    required this.balance,
    required this.balancePercent,
    required this.spentTooMuch,
    required this.hasIncome,
    super.key,
  });

  final String totalExpanse;
  final String totalIncome;
  final String balance;
  final String balancePercent;
  final bool spentTooMuch;
  final bool hasIncome;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 5,
                        children: [
                          const Icon(
                            Icons.south_outlined,
                            color: Colors.green,
                            size: 35,
                          ),
                          _BalanceRow(
                            label: 'receitas',
                            value: totalIncome,
                            valueColor: const Color(0xFF4CAF50),
                            context: context,
                          ),
                        ],
                      ),
                      SMobillsSpacing.sm,
                      Row(
                        spacing: 5,
                        children: [
                          const Icon(
                            Icons.north_outlined,
                            color: Color(0xFFBA3229),
                            size: 35,
                          ),
                          _BalanceRow(
                            label: 'despesas',
                            value: totalExpanse,
                            valueColor: const Color(0xFFBA3229),
                            context: context,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 5,
                        children: [
                          Text(
                            'balanço',
                            style: SMobillsTextStyles.body1.copyWith(
                              fontWeight: FontWeight.w800,
                              color: context.colorScheme.onSurface,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog<void>(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('O que é o balanço?'),
                                  content: const Text(
                                    'O balanço mensal é a diferença entre '
                                    'suas receitas e despesas no mês. '
                                    'Quando positivo, significa que você '
                                    'está economizando. Quando negativo, '
                                    'indica que seus gastos superaram '
                                    'seus ganhos.',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: const Text('Entendi'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: const Icon(Icons.info_outline, size: 20),
                          ),
                        ],
                      ),
                      Text(
                        balance,
                        style: SMobillsTextStyles.body2.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SMobillsSpacing.md,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
            decoration: BoxDecoration(
              color: const Color(0xFF8f09b5).withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'economia',
                  style: SMobillsTextStyles.body1.copyWith(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  balancePercent,
                  style: SMobillsTextStyles.subtitle2.copyWith(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SMobillsSpacing.md,
          Text(
            !hasIncome
                ? 'Você ainda não possui receitas. '
                      'Registre para calcular sua economia.'
                : spentTooMuch
                ? 'Você está gastando demais. '
                      'Registre suas despesas e se controle.'
                : 'Você está no controle, '
                      'continue assim!',
            textAlign: TextAlign.center,
            style: SMobillsTextStyles.body2.copyWith(
              color: context.colorScheme.onSurface.withValues(alpha: 0.6),
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
  });

  final String label;
  final String value;
  final Color valueColor;
  final BuildContext context;

  @override
  Widget build(BuildContext _) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: SMobillsTextStyles.body1.copyWith(
            fontWeight: FontWeight.w600,
            color: valueColor,
          ),
        ),
        Text(
          value,
          style: SMobillsTextStyles.body2.copyWith(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

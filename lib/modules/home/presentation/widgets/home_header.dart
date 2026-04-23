import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeader({
    required this.balance,
    required this.totalExpanse,
    required this.totalIncome,
    super.key,
  });

  final String balance;
  final String totalExpanse;
  final String totalIncome;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            context.colorScheme.primary,
            context.colorScheme.secondary,
          ],
        ),
      ),
      child: Column(
        children: [
          Text(
            'Saldo em contas',
            style: SMobillsTextStyles.subtitle1.copyWith(
              color: Colors.white.withValues(alpha: 0.8),
            ),
          ),
          SMobillsSpacing.sm,
          Text(
            balance,
            style: SMobillsTextStyles.h4.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SMobillsSpacing.lg,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeBalanceItem(
                  title: 'Receitas',
                  icon: Icons.north_outlined,
                  color: const Color(0xFF34D399),
                  value: totalIncome,
                ),
                HomeBalanceItem(
                  title: 'Despesas',
                  icon: Icons.south_outlined,
                  color: const Color(0xFFFB7185),
                  value: totalExpanse,
                ),
              ],
            ),
          ),
          SMobillsSpacing.md,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(200);
}

class HomeBalanceItem extends StatelessWidget {
  const HomeBalanceItem({
    required this.title,
    required this.icon,
    required this.color,
    required this.value,
    super.key,
  });

  final String title;
  final IconData icon;
  final Color color;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: color,
            size: 20,
          ),
        ),
        SMobillsInline.md,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: SMobillsTextStyles.body2.copyWith(
                color: Colors.white.withValues(alpha: 0.8),
              ),
            ),
            Text(
              value,
              style: SMobillsTextStyles.subtitle1.copyWith(
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
              softWrap: true,
            ),
          ],
        ),
      ],
    );
  }
}

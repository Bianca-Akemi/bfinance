import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class HomeHeader extends StatefulWidget implements PreferredSizeWidget {
  const HomeHeader({required this.balance, super.key});
  final String balance;

  @override
  Size get preferredSize => const Size.fromHeight(200);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  bool _balanceVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(28)),
        border: Border.all(color: context.colorScheme.primary, width: 2),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SMobillsSpacing.sm,
          Text(
            'saldo em contas',
            style: SMobillsTextStyles.h6.copyWith(
              color: context.colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SMobillsSpacing.sm,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _balanceVisible ? widget.balance : r'R$•••••',
                style: SMobillsTextStyles.h4.copyWith(color: Colors.black),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () => setState(() => _balanceVisible = !_balanceVisible),
                child: Icon(
                  _balanceVisible ? Icons.visibility : Icons.visibility_off,
                  color: context.colorScheme.primary,
                  size: 30,
                ),
              ),
            ],
          ),
          SMobillsSpacing.sm,
        ],
      ),
    );
  }
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
          child: Icon(icon, color: color, size: 20),
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

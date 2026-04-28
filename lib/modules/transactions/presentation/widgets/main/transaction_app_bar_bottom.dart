import 'package:flutter/material.dart';
import 'package:s_mobills/modules/transactions/presentation/widgets/widgets.dart';
import 'package:s_mobills/ui/utils/s_mobills_styles.dart';

class TransactionAppBarBottom extends StatelessWidget
    implements PreferredSizeWidget {
  const TransactionAppBarBottom({
    required this.title,
    required this.onTapBack,
    required this.onTapNext,
    super.key,
  });

  final String title;
  final VoidCallback onTapNext;
  final VoidCallback onTapBack;

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: context.colorScheme.surface,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),
            ),
            color: context.colorScheme.primary,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Column(
            children: [
              MonthlySelect(
                title: title,
                onTapBack: onTapBack.call,
                onTapNext: onTapNext.call,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

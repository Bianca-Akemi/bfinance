import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class MonthlySelect extends StatelessWidget {
  const MonthlySelect({
    required this.title,
    required this.onTapBack,
    required this.onTapNext,
    super.key,
  });

  final String title;
  final VoidCallback onTapNext;
  final VoidCallback onTapBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: onTapBack.call,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
          SMobillsInline.custom(100),
          Text(
            title,
            style: SMobillsTextStyles.h6.copyWith(
              fontWeight: FontWeight.w700,
              color: context.colorScheme.onPrimary,
            ),
          ),
          SMobillsInline.custom(100),
          InkWell(
            onTap: onTapNext,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.keyboard_arrow_right_outlined,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class HomeEmptyState extends StatelessWidget {
  const HomeEmptyState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SMobillsSpacing.sm,
          const Text(
            'Você não possui movimentações',
            style: SMobillsTextStyles.body1,
          ),
          SMobillsSpacing.md,
          Text(
            'Assim que gastar aparecerá aqui',
            style: SMobillsTextStyles.subtitle2.copyWith(
              color: context.colorScheme.onSurface
                  .withValues(alpha: 0.6),
            ),
          ),
          SMobillsSpacing.sm,
        ],
      ),
    );
  }
}

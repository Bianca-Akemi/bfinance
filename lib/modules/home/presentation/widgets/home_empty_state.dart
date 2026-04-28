import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class HomeEmptyState extends StatelessWidget {
  const HomeEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                SMobillsSpacing.sm,
                const Text(
                  'Você ainda não possui gastos ;)',
                  style: SMobillsTextStyles.body1,
                ),
                SMobillsSpacing.md,
                Text(
                  'Assim que registrar aparecerá aqui',
                  style: SMobillsTextStyles.subtitle2.copyWith(
                    color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                SMobillsSpacing.sm,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:s_mobills/modules/home/presentation/main/cubit/home_cubit.dart';
import 'package:s_mobills/ui/utils/s_mobills_styles.dart';

class SpendingFrequency extends StatelessWidget {
  const SpendingFrequency({
    required this.days,
    required this.chartViewMode,
    super.key,
  });

  final List<SalesData> days;
  final ChartViewMode chartViewMode;

  static final _currencyFormat = NumberFormat.currency(
    locale: 'pt_BR',
    symbol: r'R$',
    decimalDigits: 2,
  );

  String get _title {
    switch (chartViewMode) {
      case ChartViewMode.daily:
        return 'gastos da semana';
      case ChartViewMode.weekly:
        return 'gastos por semana do mês';
      case ChartViewMode.monthly:
        return 'gastos por mês do ano';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            _title,
            style: SMobillsTextStyles.subtitle1.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          SMobillsSpacing.sm,
          Card(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              itemCount: days.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final item = days[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.15),
                    child: const Icon(
                      Icons.north_outlined,
                      color: Color(0xFFBA3229),
                      size: 20,
                    ),
                  ),
                  title: Text(
                    item.year,
                    style: SMobillsTextStyles.body1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Text(
                    _currencyFormat.format(item.sales),
                    style: SMobillsTextStyles.body2.copyWith(
                      color: const Color(0xFFBA3229),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

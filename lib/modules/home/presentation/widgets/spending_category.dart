import 'package:flutter/material.dart';
import 'package:s_mobills/core/core.dart';
import 'package:s_mobills/modules/home/presentation/main/cubit/home_cubit.dart';
import 'package:s_mobills/modules/home/presentation/widgets/home_empty_state.dart';
import 'package:s_mobills/ui/utils/s_mobills_styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SpendingCategory extends StatelessWidget {
  const SpendingCategory({
    required this.categoriesDataSource,
    required this.month,
    super.key,
  });

  final List<PieByCategory> categoriesDataSource;
  final String month;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Text(
                'gastos por categoria - $month',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: SMobillsTextStyles.subtitle1.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SMobillsSpacing.sm,
              categoriesDataSource.isEmpty
                  ? const HomeEmptyState()
                  : SfCircularChart(
                      legend: const Legend(
                        isVisible: true,
                        overflowMode: LegendItemOverflowMode.wrap,
                      ),
                      series: [
                        DoughnutSeries<PieByCategory, String>(
                          explode: true,
                          dataSource: categoriesDataSource,
                          xValueMapper: (PieByCategory data, _) =>
                              data.categoryType.displayName,
                          yValueMapper: (PieByCategory data, _) => data.value,
                          dataLabelMapper: (PieByCategory data, _) =>
                              data.categoryType.displayName,
                        ),
                      ],
                      tooltipBehavior: TooltipBehavior(
                        enable: true,
                        format: r'point.x : R$ point.y',
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

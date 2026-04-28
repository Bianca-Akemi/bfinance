import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:s_mobills/modules/home/presentation/main/cubit/home_cubit.dart';
import 'package:s_mobills/ui/utils/s_mobills_styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SpendingBarChart extends StatelessWidget {
  const SpendingBarChart({
    required this.expenseDays,
    required this.incomeDays,
    super.key,
  });

  final List<SalesData> expenseDays;
  final List<SalesData> incomeDays;

  static final _currencyFormat = NumberFormat.currency(
    locale: 'pt_BR',
    symbol: r'R$',
    decimalDigits: 2,
  );

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Column(
            children: [
              Text(
                'receita x despesa - últimos 7 dias',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: SMobillsTextStyles.subtitle1.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SMobillsSpacing.sm,
              _buildLegend(colorScheme),
              SMobillsSpacing.sm,
              SfCartesianChart(
                primaryXAxis: const CategoryAxis(
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 11,
                  ),
                  majorGridLines: MajorGridLines(width: 0),
                  labelRotation: -45,
                ),
                primaryYAxis: NumericAxis(
                  numberFormat: NumberFormat.compact(
                    locale: 'pt_BR',
                  ),
                  majorGridLines: const MajorGridLines(
                    dashArray: <double>[4, 4],
                    width: 0.5,
                  ),
                  labelStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 11,
                  ),
                ),
                tooltipBehavior: TooltipBehavior(
                  enable: true,
                  builder: (
                    data,
                    point,
                    series,
                    pointIndex,
                    seriesIndex,
                  ) {
                    final item = data! as SalesData;
                    final label = seriesIndex == 0
                        ? 'Receita'
                        : 'Despesa';
                    return Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius:
                            BorderRadius.circular(4),
                      ),
                      child: Text(
                        '$label: '
                        '${_currencyFormat.format(item.sales)}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                    );
                  },
                ),
                series: <CartesianSeries<
                    SalesData, String>>[
                  ColumnSeries<SalesData, String>(
                    name: 'Receita',
                    dataSource: incomeDays,
                    xValueMapper: (SalesData d, _) =>
                        d.year,
                    yValueMapper: (SalesData d, _) =>
                        d.sales,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                    ),
                    color: colorScheme.primary,
                    width: 1,
                    spacing: 0.15,
                  ),
                  ColumnSeries<SalesData, String>(
                    name: 'Despesa',
                    dataSource: expenseDays,
                    xValueMapper: (SalesData d, _) =>
                        d.year,
                    yValueMapper: (SalesData d, _) =>
                        d.sales,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                    ),
                    color: const Color(0xFFBA3229),
                    width: 1,
                    spacing: 0.15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLegend(ColorScheme colorScheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _legendItem('Receita', colorScheme.primary),
        SMobillsInline.md,
        _legendItem('Despesa', const Color(0xFFBA3229)),
      ],
    );
  }

  Widget _legendItem(String label, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        SMobillsInline.xm,
        Text(
          label,
          style: SMobillsTextStyles.caption.copyWith(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

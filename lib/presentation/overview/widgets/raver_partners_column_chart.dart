import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/presentation/overview/widgets/chart_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RaverPartnersColumnChart extends StatelessWidget {
  final List<ChartData> chartData;
  final double maximum;

  const RaverPartnersColumnChart({
    required this.chartData,
    required this.maximum,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        labelStyle: context.bodyText2,
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(width: 0),
        majorGridLines: const MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
        maximum: maximum,
        labelStyle: context.bodyText2,
        majorGridLines: const MajorGridLines(width: 0),
        numberFormat: NumberFormat.compact(),
      ),
      series: [
        ColumnSeries<ChartData, String>(
          dataSource: chartData,
          xValueMapper: (sales, _) => sales.x,
          yValueMapper: (sales, _) => sales.y,
          pointColorMapper: (sales, _) => sales.color,
          dataLabelMapper: (sales, _) => sales.label,
          borderRadius: BorderRadius.circular(8),
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            textStyle: context.bodyText2,
          ),
        ),
      ],
    );
  }
}

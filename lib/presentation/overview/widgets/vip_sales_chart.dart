import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/overview/overview_cubit.dart';
import 'package:raver_partners/presentation/overview/widgets/chart_data.dart';
import 'package:raver_partners/presentation/overview/widgets/raver_partners_column_chart.dart';

class VipSalesChart extends StatelessWidget {
  const VipSalesChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverviewCubit, OverviewState>(
      builder: (context, state) {
        final sales = state.clubSales.getOrCrash();
        final normalVipsSold = sales.vipsSold - sales.exclusiveVipsSold;

        final List<ChartData> chartData = [
          ChartData(
            x: 'Normal events',
            y: normalVipsSold.toDouble(),
            label: '$normalVipsSold',
            color: context.secondaryColor,
          ),
          ChartData(
            // TODO - add translation
            x: 'Exclusive events',
            y: sales.exclusiveVipsSold.toDouble(),
            label: '${sales.exclusiveVipsSold}',
            color: context.primaryColor,
          ),
        ];
        return sales.vipsSold > 0
            ? RaverPartnersColumnChart(
                chartData: chartData,
                maximum: sales.vipsSold.toDouble(),
              )
            : const Center(
                child: Text('Brak sprzedanych vipów'),
              );
      },
    );
  }
}

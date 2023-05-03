import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/overview/overview_cubit.dart';
import 'package:tonight_partners/presentation/overview/widgets/chart_data.dart';
import 'package:tonight_partners/presentation/overview/widgets/statistics_update_info.dart';
import 'package:tonight_partners/presentation/overview/widgets/tonight_partners_column_chart.dart';
import 'package:translations/translations.dart';

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
            x: S().normal,
            y: normalVipsSold.toDouble(),
            label: '$normalVipsSold',
            color: context.secondaryColor,
          ),
          ChartData(
            x: S().exclusive,
            y: sales.exclusiveVipsSold.toDouble(),
            label: '${sales.exclusiveVipsSold}',
            color: context.primaryColor,
          ),
        ];
        return sales.vipsSold > 0
            ? TonightPartnersColumnChart(
                chartData: chartData,
                maximum: sales.vipsSold.toDouble(),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S().noVipsSold,
                      style: context.titleMedium,
                    ),
                    const SizedBox(height: 15),
                    const StatisticsUpdateInfo(),
                  ],
                ),
              );
      },
    );
  }
}

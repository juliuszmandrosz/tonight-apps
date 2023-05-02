import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/overview/overview_cubit.dart';
import 'package:tonight_partners/presentation/overview/widgets/chart_data.dart';
import 'package:tonight_partners/presentation/overview/widgets/statistics_update_info.dart';
import 'package:tonight_partners/presentation/overview/widgets/tonight_partners_column_chart.dart';
import 'package:translations/raver_translations.dart';

class RevenueChart extends StatelessWidget {
  const RevenueChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverviewCubit, OverviewState>(
      builder: (context, state) {
        final sales = state.clubSales.getOrCrash();
        final normalEventsRevenue =
            sales.totalRevenue - sales.exclusiveEventsRevenue;
        final List<ChartData> chartData = [
          ChartData(
            x: S().normal,
            y: normalEventsRevenue,
            label: formatDoubleToMoney(normalEventsRevenue, sales.currency),
            color: context.secondaryColor,
          ),
          ChartData(
            x: S().exclusive,
            y: sales.exclusiveEventsRevenue,
            label: formatDoubleToMoney(
                sales.exclusiveEventsRevenue, sales.currency),
            color: context.primaryColor,
          ),
        ];
        return sales.totalRevenue > 0
            ? TonightPartnersColumnChart(
                chartData: chartData,
                maximum: sales.totalRevenue,
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S().noRevenue,
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

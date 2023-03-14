import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/overview/overview_cubit.dart';
import 'package:tonight_partners/presentation/overview/widgets/chart_data.dart';
import 'package:tonight_partners/presentation/overview/widgets/statistics_update_info.dart';
import 'package:tonight_partners/presentation/overview/widgets/tonight_partners_column_chart.dart';
import 'package:translations/translations.dart';

class TicketSalesChart extends StatelessWidget {
  const TicketSalesChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverviewCubit, OverviewState>(
      builder: (context, state) {
        final sales = state.clubSales.getOrCrash();
        final normalTicketsSold =
            sales.ticketsSold - sales.exclusiveTicketsSold;

        final List<ChartData> chartData = [
          ChartData(
            x: S().normal,
            y: normalTicketsSold.toDouble(),
            label: '$normalTicketsSold',
            color: context.secondaryColor,
          ),
          ChartData(
            x: S().exclusive,
            y: sales.exclusiveTicketsSold.toDouble(),
            label: '${sales.exclusiveTicketsSold}',
            color: context.primaryColor,
          ),
        ];
        return sales.ticketsSold > 0
            ? TonightPartnersColumnChart(
                chartData: chartData,
                maximum: sales.ticketsSold.toDouble(),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S().noTicketsSold,
                      style: context.subtitle1,
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

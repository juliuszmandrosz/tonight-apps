import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/overview/overview_cubit.dart';
import 'package:raver_partners/presentation/overview/widgets/chart_data.dart';
import 'package:raver_partners/presentation/overview/widgets/raver_partners_column_chart.dart';

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
            x: 'Normal events',
            y: normalEventsRevenue,
            label: '${formatDoubleToMoney(normalEventsRevenue, sales.currency)}'
                '${getCurrencySymbolFromCode(sales.currency)}',
            color: context.secondaryColor,
          ),
          ChartData(
            // TODO - add translation
            x: 'Exclusive events',
            y: sales.exclusiveEventsRevenue,
            label:
                '${formatDoubleToMoney(sales.exclusiveEventsRevenue, sales.currency)}'
                '${getCurrencySymbolFromCode(sales.currency)}',
            color: context.primaryColor,
          ),
        ];
        return sales.totalRevenue > 0
            ? RaverPartnersColumnChart(
                chartData: chartData,
                maximum: sales.totalRevenue,
              )
            : const Center(
                child: Text('Brak przychodów'),
              );
      },
    );
  }
}

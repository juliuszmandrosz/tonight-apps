import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/discounts/discounts_cubit.dart';
import 'package:tonight_partners/application/overview/overview_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_app_bar.dart';
import 'package:tonight_partners/presentation/discounts/widgets/current_sales.dart';
import 'package:tonight_partners/presentation/discounts/widgets/discount_list.dart';
import 'package:tonight_partners/presentation/discounts/widgets/discounts_info.dart';
import 'package:translations/raver_translations.dart';

class DiscountsPage extends StatelessWidget {
  final BuildContext blocContext;

  const DiscountsPage({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: blocContext.read<OverviewCubit>(),
      child: Scaffold(
        appBar: TonightPartnersAppBar(title: S().discounts),
        body: BlocProvider(
          create: (context) => getIt<DiscountsCubit>(
            param1: context.read<OverviewCubit>(),
          )..getDiscounts(),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: const [
                CurrentSales(),
                SizedBox(height: 30),
                DiscountsInfo(),
                SizedBox(height: 30),
                DiscountList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

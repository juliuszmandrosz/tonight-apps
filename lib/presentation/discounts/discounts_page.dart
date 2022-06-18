import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/discounts/discounts_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_partners/presentation/discounts/widgets/current_sales.dart';
import 'package:raver_partners/presentation/discounts/widgets/discount_list.dart';
import 'package:raver_partners/presentation/discounts/widgets/discounts_info.dart';
import 'package:raver_translations/raver_translations.dart';

class DiscountsPage extends StatelessWidget {
  const DiscountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverPartnersAppBar(title: S().discounts),
      body: BlocProvider(
        create: (context) => getIt<DiscountsCubit>()..getDiscounts(),
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
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/application/discounts/discounts_cubit.dart';
import 'package:tonight_partners/presentation/core/revenue_tile.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_headline.dart';
import 'package:translations/raver_translations.dart';

class CurrentSales extends StatelessWidget {
  const CurrentSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscountsCubit, DiscountsState>(
      builder: (context, state) {
        final sales = state.clubSales.getOrCrash();
        return Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TonightPartnersHeadline(
                text: S().sales,
                isSmallerVersion: true,
              ),
            ),
            const SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              children: [
                RevenueTile(
                  icon: FontAwesomeIcons.ticket,
                  value: '${sales.exclusiveTicketsSold}',
                  label: S().tickets(2),
                ),
                RevenueTile(
                  icon: FontAwesomeIcons.crown,
                  value: '${sales.exclusiveVipsSold}',
                  label: S().vips,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              color: context.primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: AutoSizeText(
                    '${S().total}: '
                    '${sales.exclusiveTicketsSold + sales.exclusiveVipsSold}',
                    maxLines: 1,
                    style: context.titleMedium,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

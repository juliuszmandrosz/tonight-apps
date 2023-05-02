import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/presentation/core/revenue_tile.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_headline.dart';
import 'package:translations/raver_translations.dart';

class EventRevenue extends StatelessWidget {
  final TicketSales ticketSales;
  final EventReview? eventReview;

  const EventRevenue({
    required this.ticketSales,
    this.eventReview,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TonightPartnersHeadline(
            text: S().statistics,
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
              icon: FontAwesomeIcons.chartSimple,
              value: formatDoubleToMoney(
                  ticketSales.clubIncome, ticketSales.currency),
              label: S().income,
              isFirst: true,
            ),
            RevenueTile(
              icon: FontAwesomeIcons.moneyBills,
              value: formatDoubleToMoney(
                  ticketSales.totalRevenue, ticketSales.currency),
              label: S().totalRevenue,
            ),
            RevenueTile(
              icon: FontAwesomeIcons.ticket,
              value: '${ticketSales.ticketsSold}',
              label: S().ticketsSold,
            ),
            RevenueTile(
              icon: FontAwesomeIcons.crown,
              value: '${ticketSales.vipsSold}',
              label: S().vipsSold,
            ),
            if (eventReview != null)
              RevenueTile(
                icon: FontAwesomeIcons.solidStar,
                value: eventReview!.reviewAvg.toStringAsFixed(1),
                label: S().reviewAvg,
              ),
            if (eventReview != null)
              RevenueTile(
                icon: Icons.reviews,
                value: '${eventReview!.reviewQuantity}',
                label: S().reviewsQuantity,
              ),
          ],
        ),
      ],
    );
  }
}

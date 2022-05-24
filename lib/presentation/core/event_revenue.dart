import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/presentation/core/event_revenue_tile.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_translations/raver_translations.dart';

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
          child: RaverPartnersHeadline(text: S().eventRevenue),
        ),
        const SizedBox(height: 20),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: [
            EventRevenueTile(
              icon: FontAwesomeIcons.chartSimple,
              value:
                  '${formatDoubleToMoneyDecimal(ticketSales.clubIncome, ticketSales.currency)} '
                  '${getCurrencySymbolFromCode(ticketSales.currency)}',
              label: S().income,
              isFirst: true,
            ),
            EventRevenueTile(
              icon: FontAwesomeIcons.moneyBills,
              value:
                  '${formatDoubleToMoneyDecimal(ticketSales.totalRevenue, ticketSales.currency)} '
                  '${getCurrencySymbolFromCode(ticketSales.currency)}',
              label: S().totalRevenue,
            ),
            EventRevenueTile(
              icon: FontAwesomeIcons.ticket,
              value: '${ticketSales.ticketsSold}',
              label: S().ticketsSold,
            ),
            EventRevenueTile(
              icon: FontAwesomeIcons.crown,
              value: '${ticketSales.vipsSold}',
              label: S().vipsSold,
            ),
            if (eventReview != null)
              // TODO - add translation
              EventRevenueTile(
                icon: FontAwesomeIcons.solidStar,
                value: eventReview!.reviewAvg.toStringAsFixed(1),
                label: 'Średnia z opinii',
              ),
            if (eventReview != null)
              // TODO - add translation
              EventRevenueTile(
                icon: Icons.reviews,
                value: '${eventReview!.reviewQuantity}',
                label: 'Ilość opinii',
              ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/event_tickets/entities/ticket_sales_entity.dart';
import 'package:raver_partners/presentation/core/event_revenue_tile.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class EventRevenue extends StatelessWidget {
  final TicketSales ticketSales;
  final bool isPastEvent;

  const EventRevenue({
    required this.ticketSales,
    this.isPastEvent = false,
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
            if (isPastEvent)
              // TODO - implement
              const EventRevenueTile(
                icon: FontAwesomeIcons.solidStar,
                value: '4.5',
                label: 'Średnia z opinii',
              ),
            if (isPastEvent)
              // TODO - implement
              const EventRevenueTile(
                icon: Icons.reviews,
                value: '15',
                label: 'Ilość opinii',
              ),
          ],
        ),
      ],
    );
  }
}

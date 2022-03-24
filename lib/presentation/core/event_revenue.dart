import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/event_tickets/entities/ticket_sales_entity.dart';
import 'package:raver_partners/presentation/core/event_revenue_tile.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class EventRevenue extends StatelessWidget {
  final TicketSales ticketSales;

  const EventRevenue({
    required this.ticketSales,
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
              icon: FontAwesomeIcons.chartLine,
              value:
                  '${formatDoubleToMoneyDecimal(ticketSales.clubIncome, ticketSales.currency)} '
                  '${getCurrencySymbolFromCode(ticketSales.currency)}',
              label: S().income,
              isFirst: true,
            ),
            EventRevenueTile(
              icon: FontAwesomeIcons.ticketAlt,
              value: '${ticketSales.ticketsSold}',
              label: S().ticketsSold,
            ),
            EventRevenueTile(
              icon: FontAwesomeIcons.star,
              value: '${ticketSales.vipsSold}',
              label: S().vipsSold,
            ),
            EventRevenueTile(
              icon: Icons.payments,
              value:
                  '${formatDoubleToMoneyDecimal(ticketSales.totalRevenue, ticketSales.currency)} '
                  '${getCurrencySymbolFromCode(ticketSales.currency)}',
              label: S().totalRevenue,
            ),
          ],
        ),
      ],
    );
  }
}

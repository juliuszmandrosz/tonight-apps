import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/events_details/utils/event_details_formatters.dart';
import 'package:tonight/presentation/events_details/widgets/tiles/event_detail_tile.dart';
import 'package:translations/translations.dart';

class EventDetailsSection extends StatelessWidget {
  final Event event;
  final int? ticketPrice;
  final EventTickets? eventTickets;

  const EventDetailsSection({
    required this.event,
    required this.ticketPrice,
    required this.eventTickets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentPrice = eventTickets?.getCurrentTicketPrice() ?? ticketPrice;
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TonightHeadline(text: S().details, isSmallerVersion: true),
        ),
        const SizedBox(height: 15),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: [
            EventDetailTile(
              icon: FontAwesomeIcons.ticket,
              value: currentPrice == null
                  ? ''
                  : '$currentPrice'
                      '${getCurrencySymbolFromCode(event.currency)}',
              label: S().price,
            ),
            EventDetailTile(
              icon: FontAwesomeIcons.solidUser,
              value: '${event.minAge}+',
              label: S().minAge,
            ),
            EventDetailTile(
              icon: FontAwesomeIcons.shirt,
              value: event.allowedOutfit,
              label: S().dressCode,
            ),
            EventDetailTile(
              icon: FontAwesomeIcons.music,
              value: displayMusicalGenres(
                event.musicalGenres,
                EventDetailsSeparator.comma,
              ),
              label: S().musicalGenres,
            ),
          ],
        ),
      ],
    );
  }
}

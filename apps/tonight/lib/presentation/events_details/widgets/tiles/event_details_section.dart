import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/events_details/utils/event_details_formatters.dart';
import 'package:tonight/presentation/events_details/widgets/tiles/event_detail_tile.dart';
import 'package:translations/translations.dart';

class EventDetailsSection extends StatelessWidget {
  final Event event;

  const EventDetailsSection({
    required this.event,
    Key? key,
  }) : super(key: key);

  String get price {
    if (event.entryFee.isNotEmpty) {
      return event.entryFee.toLowerCase();
    }

    return event.price == 0 ? S().free.toLowerCase() : S().paid.toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          children: [
            EventDetailTile(
              icon: FontAwesomeIcons.ticket,
              value: price,
              label: S().entry,
              event: event,
              isEntryFee: true,
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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/events_details/utils/event_details_formatters.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsMusicalGenres extends StatelessWidget {
  final Event event;

  const EventDetailsMusicalGenres({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: Align(
        alignment: Alignment.centerLeft,
        child: AutoSizeText(
          S().musicalGenres,
          style: context.headline6,
          maxLines: 1,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: AutoSizeText(
          displayMusicalGenres(
              event.musicalGenres, EventDetailsSeparator.comma),
          style: context.subtitle1.copyWith(color: context.secondaryColor),
          maxLines: 1,
        ),
      ),
    );
  }
}

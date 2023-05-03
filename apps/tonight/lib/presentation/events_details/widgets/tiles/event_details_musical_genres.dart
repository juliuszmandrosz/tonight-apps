import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/events_details/utils/event_details_formatters.dart';
import 'package:translations/translations.dart';

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
          style: context.titleLarge,
          maxLines: 1,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: AutoSizeText(
          displayMusicalGenres(
              event.musicalGenres, EventDetailsSeparator.comma),
          style: context.titleMedium.copyWith(color: context.secondaryColor),
          maxLines: 1,
        ),
      ),
    );
  }
}

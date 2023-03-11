import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsEndDateTime extends StatelessWidget {
  final Event event;

  const EventDetailsEndDateTime({
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
        child: RaverHeadline(text: S().endDate, isSmallerVersion: true),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: AutoSizeText(
          context.formatDateTimeToLocaleYMDHM(event.eventEndDateTime),
          style: context.subtitle1.copyWith(color: context.secondaryColor),
        ),
      ),
    );
  }
}

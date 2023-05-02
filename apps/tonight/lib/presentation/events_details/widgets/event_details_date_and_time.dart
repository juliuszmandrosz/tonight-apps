import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/raver_translations.dart';

class EventDetailsDateAndTime extends StatelessWidget {
  final Event event;

  const EventDetailsDateAndTime({required this.event, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(
        left: 0.0,
        right: 0.0,
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: TonightHeadline(text: S().dateAndTime, isSmallerVersion: true),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          children: [
            Flexible(
              child: AutoSizeText(
                context.formatDateTimeToLocaleYMDHM(event.eventStartDateTime),
                style:
                    context.titleMedium.copyWith(color: context.secondaryColor),
                maxLines: 1,
              ),
            ),
            const SizedBox(width: 10),
            FaIcon(
              FontAwesomeIcons.arrowRight,
              color: context.secondaryColor,
              size: 16,
            ),
            const SizedBox(width: 10),
            Flexible(
              child: AutoSizeText(
                context.formatDateTimeToLocaleYMDHM(event.eventEndDateTime),
                style:
                    context.titleMedium.copyWith(color: context.secondaryColor),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

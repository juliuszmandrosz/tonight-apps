import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/events/utils/event_details_formatters.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsSection extends StatelessWidget {
  final Event event;

  const EventDetailsSection({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Row(
          children: [RaverHeadline(text: S().details)],
        ),
        const SizedBox(height: 20),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.userAlt,
                    size: 30,
                    color: DefaultColors.primaryColor,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${event.minAge}+',
                    style: textTheme.subtitle1,
                  ),
                ],
              ),
              Column(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.ticketAlt,
                    size: 30,
                    color: DefaultColors.primaryColor,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${event.price} ${getCurrencySymbolFromCode(event.currency)}',
                    style: textTheme.subtitle1,
                  ),
                ],
              ),
              Column(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.tshirt,
                    size: 30,
                    color: DefaultColors.primaryColor,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    event.allowedOutfit,
                    style: textTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.music,
                    size: 30,
                    color: DefaultColors.primaryColor,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    displayMusicalGenres(
                      event.musicalGenres,
                      EventDetailsSeparator.newLine,
                    ),
                    style: textTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

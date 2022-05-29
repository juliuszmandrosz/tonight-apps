import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/events/widgets/event_favorite_button.dart';
import 'package:raver/presentation/events_details/utils/event_details_formatters.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventCard extends StatelessWidget {
  final Event event;
  final bool isFavoriteCard;

  const EventCard({
    Key? key,
    required this.event,
    this.isFavoriteCard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
        AutoRouter.of(context).push(EventDetailsRoute(event: event));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.network(event.eventPhotoUrl).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 220,
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  left: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: context.surfaceColor.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: AutoSizeText(
                            '${event.attending} ${S().attending(event.attending).toUpperCase()}',
                            style: context.subtitle1,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      EventFavoriteButton(eventId: event.id),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 15,
                  left: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.surfaceColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: AutoSizeText(
                        event.eventName,
                        maxLines: 2,
                        style: context.headline6,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  if (event.isConcert && !isFavoriteCard)
                    Column(
                      children: [
                        Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.microphone,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            AutoSizeText(
                              '${'Koncert'.toUpperCase()} - ${event.artistName!.toUpperCase()}',
                              style: context.subtitle1,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.building,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      AutoSizeText(
                        event.clubName,
                        style: context.subtitle1,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.calendar,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      AutoSizeText(
                        context.formatDateTimeToLocaleYMDHM(
                          event.eventStartDateTime,
                        ),
                        textAlign: TextAlign.center,
                        style: context.subtitle1,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  if (!isFavoriteCard)
                    Column(
                      children: [
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.circleInfo,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            AutoSizeText(
                              displayEventTags(context, event),
                              style: context.subtitle1,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

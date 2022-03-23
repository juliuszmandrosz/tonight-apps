import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/events/utils/event_details_formatters.dart';
import 'package:raver/presentation/home/events_tab/widgets/event_favorite_button.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: InkWell(
            splashColor: DefaultColors.navbarUnselectedColor,
            onTap: () {
              FocusScope.of(context).unfocus();
              AutoRouter.of(context).push(EventDetailsRoute(event: event));
            },
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset('assets/images/party_photo.jpeg').image,
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    color: DefaultColors.textColor,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              elevation: 0,
                              color: DefaultColors.accentColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    6, 2, 6, 2),
                                child: Text(
                                  '${event.attending} ${S().attending(event.attending).toUpperCase()}',
                                  style: theme.textTheme.headline3,
                                ),
                              ),
                            ),
                            EventFavoriteButton(eventId: event.id),
                          ],
                        ),
                      ),
                      if (event.isConcert)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                elevation: 0,
                                color: DefaultColors.accentColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      6, 2, 6, 2),
                                  child: Text(
                                    '${S().live.toUpperCase()} - ${event.artistName!.toUpperCase()}',
                                    style: theme.textTheme.headline3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      color: DefaultColors.navbarUnselectedColor,
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: DefaultColors.primaryColor,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                context.formatDateTimeToLocaleYMD(
                                    event.eventStartDateTime),
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headline3,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                context.formatDateTimeToLocaleHM(
                                    event.eventStartDateTime),
                                style: theme.textTheme.headline3,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(event.clubName,
                                      style: theme.textTheme.headline3),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.only(top: 3),
                                  child: FittedBox(
                                    child: Text(
                                      event.eventName,
                                      style: theme.textTheme.headline3,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text(
                                    displayEventTags(context, event),
                                    style: theme.textTheme.headline3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/events/widgets/event_canceled_info.dart';
import 'package:tonight/presentation/events/widgets/event_club_info.dart';
import 'package:tonight/presentation/events/widgets/event_concert_info.dart';
import 'package:tonight/presentation/events/widgets/event_date_info.dart';
import 'package:tonight/presentation/events/widgets/event_favorite_button.dart';
import 'package:tonight/presentation/events/widgets/event_location_info.dart';
import 'package:tonight/presentation/events/widgets/event_name_bar.dart';
import 'package:tonight/presentation/events/widgets/event_photo.dart';
import 'package:tonight/presentation/events/widgets/event_tags_info.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventCard extends StatelessWidget {
  final Event event;
  final bool isFavoriteCard;
  final String heroTag;
  final double height;

  EventCard({
    Key? key,
    required this.event,
    required String heroPhrase,
    this.isFavoriteCard = false,
    this.height = 250,
  })  : heroTag = '$heroPhrase-${event.id}',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return InkWell(
          onTap: () {
            context.unfocus();
            context.pushRoute(
              EventDetailsRoute(
                event: event,
                heroTag: heroTag,
                ticketPrice: event.price,
              ),
            );
          },
          child: Card(
            color: context.backgroundColor,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    EventPhoto(
                      event: event,
                      heroTag: heroTag,
                      height: height,
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: EventFavoriteButton(event: event),
                    ),
                    if (event.isCanceled)
                      const Positioned(
                        top: 15,
                        left: 15,
                        child: EventCanceledInfo(),
                      ),
                    Positioned(
                      bottom: 15,
                      right: 15,
                      left: 15,
                      child: EventNameBar(event: event),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      if (event.isConcert && !isFavoriteCard)
                        EventConcertInfo(event: event),
                      EventDateInfo(event: event),
                      const SizedBox(height: 12),
                      if (event.locationString.isNotNullOrEmpty &&
                          !isFavoriteCard)
                        EventLocationInfo(event: event),
                      EventClubInfo(event: event),
                      if (!isFavoriteCard && event.locationString == null)
                        EventTagsInfo(event: event),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

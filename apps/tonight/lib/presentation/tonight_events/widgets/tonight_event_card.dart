import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class TonightEventCard extends StatelessWidget {
  final Event event;
  final String heroTag;

  TonightEventCard({required this.event, Key? key})
      : heroTag = 'tonight-event-card-${event.id}',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushRoute(
          EventDetailsRoute(
            event: event,
            heroTag: heroTag,
            ticketPrice: event.price,
          ),
        );
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
                Hero(
                  tag: heroTag,
                  child: NetworkPhoto(
                    photoUrl: event.eventPhotoUrl,
                    photoHeight: 250,
                  ),
                ),
                // Positioned(
                //   top: 15,
                //   right: 15,
                //   child: EventFavoriteButton(event: event),
                // ),
                // if (event.isCanceled)
                //   const Positioned(
                //     top: 15,
                //     left: 15,
                //     child: EventCanceledInfo(),
                //   ),
                // if (checkIfEventIsLive(event))
                //   const Positioned(
                //     top: 15,
                //     left: 15,
                //     child: EventLiveInfo(),
                //   ),
                // if (state.eventTickets.fold(
                //       () => false,
                //       (tickets) =>
                //   tickets.isSoldOut && !tickets.isSaleOnlyAtGate,
                // ))
                //   Positioned(
                //     top: checkIfEventIsLive(event) ? 70 : 15,
                //     left: 15,
                //     child: EventSoldOutInfo(event: event),
                //   ),
                // if (checkIfShouldShowLastTicketsMessage(
                //   event,
                //   eventTickets,
                // ))
                //   Positioned(
                //     top: checkIfEventIsLive(event) ? 70 : 15,
                //     left: 15,
                //     child: LastTicketsLeftInfo(event: event),
                //   ),
                // Positioned(
                //   bottom: 15,
                //   right: 15,
                //   left: 15,
                //   child: EventNameBar(event: event),
                // ),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.all(15),
            //   child: Column(
            //     children: [
            //       if (event.isConcert && !isFavoriteCard)
            //         EventConcertInfo(event: event),
            //       EventClubInfo(event: event),
            //       const SizedBox(height: 15),
            //       EventDateInfo(event: event),
            //       if (!isFavoriteCard)
            //         EventTagsInfo(
            //           event: event,
            //           eventTickets: eventTickets,
            //         ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

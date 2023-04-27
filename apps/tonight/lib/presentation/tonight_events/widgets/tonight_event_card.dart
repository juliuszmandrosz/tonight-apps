import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/tonight_events/models/tonight_event_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_participants_row.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_photo.dart';

class TonightEventCard extends StatelessWidget {
  final TonightEvent event;
  final String heroTag;

  TonightEventCard({required this.event, Key? key})
      : heroTag = 'tonight-event-card-${event.eventId}',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushRoute(
          EventDetailsRoute(
            event: event.toDomain(),
            heroTag: heroTag,
            ticketPrice: event.price,
          ),
        );
      },
      child: Card(
        color: context.backgroundColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                TonightEventPhoto(
                  photoUrl: event.eventPhotoUrl,
                  heroTag: heroTag,
                ),
              ],
            ),
            event.firstParticipants.fold(
              () => const SizedBox.shrink(),
              (participants) => Container(
                height: 55,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: InkWell(
                  onTap: () => context.pushRoute(
                    EventParticipantsRoute(eventId: event.eventId),
                  ),
                  child: TonightEventParticipantsRow(
                    firstParticipants: participants,
                    totalParticipants: event.totalParticipants,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

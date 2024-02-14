import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/dashboard/models/tonight_event_model.dart';
import 'package:tonight/presentation/dashboard/tonight_events_from_venues_widgets/tonight_event_info_row.dart';
import 'package:tonight/presentation/dashboard/tonight_events_from_venues_widgets/tonight_event_participants_row.dart';
import 'package:tonight/presentation/dashboard/tonight_events_from_venues_widgets/tonight_event_photo.dart';
import 'package:tonight/presentation/dashboard/tonight_events_from_venues_widgets/tonight_ticket_row.dart';
import 'package:tonight/presentation/dashboard/tonight_events_from_venues_widgets/tonight_voucher_row.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

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
            voucher: event.voucher.fold(
              () => null,
              (voucher) => voucher,
            ),
          ),
        );
      },
      child: Card(
        color: context.backgroundColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: context.surfaceColor,
                width: 2,
              ),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 8),
              TonightEventInfoRow(event: event),
              const SizedBox(height: 8),
              TonightEventPhoto(
                photoUrl: event.eventPhotoUrl,
                heroTag: heroTag,
              ),
              event.firstParticipants.fold(
                () => const SizedBox(height: 4),
                (participants) => TonightEventParticipantsRow(
                  firstParticipants: participants,
                  totalParticipants: event.totalParticipants,
                  eventId: event.eventId,
                ),
              ),
              event.voucher.fold(
                () => const SizedBox.shrink(),
                (voucher) => voucher.isExpired
                    ? const SizedBox.shrink()
                    : TonightVoucherRow(voucher: voucher),
              ),
              if (event.areTicketsAvailableInApp)
                TonightTicketRow(event: event),
            ],
          ),
        ),
      ),
    );
  }
}

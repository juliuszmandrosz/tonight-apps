import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/core/extensions/bloc_extensions.dart';
import 'package:tonight/application/tonight_events/models/tonight_event_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_info_row.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_participants_row.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_photo.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_voucher_row.dart';
import 'package:tonight/presentation/utils/show_sign_in_dialog.dart';

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
                () => const SizedBox(height: 4),
                (voucher) => voucher.isExpired
                    ? const SizedBox(height: 4)
                    : TonightVoucherRow(voucher: voucher),
              ),
              if (event.areTicketsAvailableInApp)
                InkWell(
                  onTap: () async {
                    if (context.readAuthCubit.checkIfUserIsAnonymous()) {
                      await showSignInDialog(context);
                      return;
                    }
                    context.pushRoute(
                      TicketCheckoutRoute(event: event.toDomain()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      top: 4,
                      right: 12,
                      bottom: 8,
                    ),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.ticket,
                          size: 20,
                          color: context.secondaryColor,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            // TODO - add translation
                            'Bilety dostępne w aplikacji za ${event.price}${event.currency}',
                            style: context.labelSmall.copyWith(
                              color: context.secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

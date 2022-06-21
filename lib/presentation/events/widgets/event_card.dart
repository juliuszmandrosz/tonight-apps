import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/events/utils/event_utils.dart';
import 'package:raver/presentation/events/widgets/event_canceled_info.dart';
import 'package:raver/presentation/events/widgets/event_club_info.dart';
import 'package:raver/presentation/events/widgets/event_concert_info.dart';
import 'package:raver/presentation/events/widgets/event_date_info.dart';
import 'package:raver/presentation/events/widgets/event_favorite_button.dart';
import 'package:raver/presentation/events/widgets/event_live_info.dart';
import 'package:raver/presentation/events/widgets/event_name_bar.dart';
import 'package:raver/presentation/events/widgets/event_photo.dart';
import 'package:raver/presentation/events/widgets/event_sold_out_info.dart';
import 'package:raver/presentation/events/widgets/event_tags_info.dart';
import 'package:raver/presentation/events/widgets/last_tickets_left_info.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_events/raver_events.dart';

class EventCard extends StatelessWidget {
  final Event event;
  final bool isFavoriteCard;
  final String heroTag;

  EventCard({
    Key? key,
    required this.event,
    required String heroPhrase,
    this.isFavoriteCard = false,
  })  : heroTag = '${event.id}$heroPhrase',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EventTicketsCubit>()
        ..getEventTickets(clubId: event.clubId, eventId: event.id),
      child: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
          context.pushRoute(
            EventDetailsRoute(
              event: event,
              heroTag: heroTag,
            ),
          );
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: BlocBuilder<EventTicketsCubit, EventTicketsState>(
            builder: (context, state) {
              final eventTickets = state.eventTickets.fold(
                () => null,
                (tickets) => tickets,
              );
              return Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      EventPhoto(
                        event: event,
                        heroTag: heroTag,
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: EventFavoriteButton(event: event),
                      ),
                      if (event.isCanceled)
                        const Positioned(
                          top: 15,
                          left: 15,
                          child: EventCanceledInfo(),
                        ),
                      if (checkIfEventIsLive(event))
                        const Positioned(
                          top: 15,
                          left: 15,
                          child: EventLiveInfo(),
                        ),
                      if (state.eventTickets
                          .fold(() => false, (tickets) => tickets.isSoldOut))
                        Positioned(
                          top: checkIfEventIsLive(event) ? 70 : 15,
                          left: 15,
                          child: EventSoldOutInfo(event: event),
                        ),
                      if (checkIfShouldShowLastTicketsMessage(
                        event,
                        eventTickets,
                      ))
                        Positioned(
                          top: checkIfEventIsLive(event) ? 70 : 15,
                          left: 15,
                          child: LastTicketsLeftInfo(event: event),
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
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        if (event.isConcert && !isFavoriteCard)
                          EventConcertInfo(event: event),
                        EventClubInfo(event: event),
                        const SizedBox(height: 15),
                        EventDateInfo(event: event),
                        if (!isFavoriteCard)
                          EventTagsInfo(
                            event: event,
                            eventTickets: eventTickets,
                          ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

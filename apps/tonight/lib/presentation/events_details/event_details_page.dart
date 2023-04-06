import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tickets/tickets.dart';
import 'package:tonight/application/events/event_details/event_details_cubit.dart';
import 'package:tonight/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:tonight/application/ticket_list/ticket_list_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/details_hero_image.dart';
import 'package:tonight/presentation/events_details/widgets/canceled_event_message.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_additional_info.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_artist_name.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_club_name.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_date_and_time.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_event_description.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_event_name.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_ticket.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_ticket_pools.dart';
import 'package:tonight/presentation/events_details/widgets/tiles/event_details_section.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventDetailsPage extends StatelessWidget {
  final String? eventId;
  final Event? event;
  final String? heroTag;
  final int? ticketPrice;

  EventDetailsPage({
    this.eventId,
    this.event,
    this.heroTag,
    int? ticketPrice,
    Key? key,
  })  : ticketPrice = ticketPrice ?? event?.price,
        assert((eventId != null || event != null), 'Event is not available'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EventTicketsCubit>(),
      child: BlocProvider(
        create: (context) {
          final cubit = getIt<EventDetailsCubit>(
            param1: context.read<EventTicketsCubit>(),
          );
          eventId != null
              ? cubit.getEventById(eventId!)
              : cubit.addEventToState(event!);
          return cubit;
        },
        child: BlocConsumer<EventDetailsCubit, EventDetailsState>(
          listener: (context, state) {
            if (state.status.isFailure()) {
              final cubit = context.read<EventDetailsCubit>();
              final callback = eventId != null
                  ? cubit.getEventById(eventId!)
                  : cubit.addEventToState(event!);
              context.pushRoute(
                FailureRoute(retryCallback: () => callback),
              );
            }
          },
          builder: (context, state) {
            if (state.status.isInitial() || state.status.isFailure()) {
              return Container();
            }

            if (state.status.isLoading()) {
              return const TicketLogoAnimation();
            }

            final event = state.event.getOrCrash();
            return BlocBuilder<TicketListCubit, TicketListState>(
              builder: (context, state) {
                final ticket = state.upcomingLiveTickets.singleWhereOrNull(
                  (ticket) => ticket.eventId == event.id && !ticket.isReturned,
                );
                return BlocBuilder<EventTicketsCubit, EventTicketsState>(
                  builder: (context, state) {
                    final eventTickets = state.eventTickets.fold(
                      () => null,
                      (tickets) => tickets,
                    );
                    return Scaffold(
                      floatingActionButtonLocation:
                          FloatingActionButtonLocation.centerFloat,
                      floatingActionButtonAnimator:
                          FloatingActionButtonAnimator.scaling,
                      floatingActionButton: _checkIfFabIsAvailable(
                        event: event,
                        ticket: ticket,
                        eventTickets: eventTickets,
                      )
                          ? EventDetailsTicket(event: event)
                          : null,
                      body: SafeArea(
                        child: NestedScrollView(
                          headerSliverBuilder: (context, value) {
                            return [
                              SliverAppBar(
                                automaticallyImplyLeading: false,
                                expandedHeight: 250,
                                floating: true,
                                backgroundColor: context.backgroundColor,
                                flexibleSpace: FlexibleSpaceBar(
                                  collapseMode: CollapseMode.pin,
                                  background: Column(
                                    children: [
                                      DetailsHeroImage(
                                        imageUrl: event.eventPhotoUrl,
                                        heroTag: heroTag,
                                        sharePath: 'events?eventId=${event.id}',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ];
                          },
                          body: SingleChildScrollView(
                            child: Column(
                              children: [
                                if (event.isCanceled)
                                  const CanceledEventMessage(),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      if (!event.isCanceled)
                                        Column(
                                          children: [
                                            EventDetailsSection(
                                              event: event,
                                              eventTickets: eventTickets,
                                              ticketPrice: ticketPrice,
                                            ),
                                            const SizedBox(height: 20),
                                          ],
                                        ),
                                      EventDetailsEventName(event: event),
                                      const SizedBox(height: 20),
                                      EventDetailsClubName(event: event),
                                      const SizedBox(height: 20),
                                      if (event.isConcert)
                                        EventDetailsArtistName(event: event),
                                      EventDetailsDateAndTime(event: event),
                                      const SizedBox(height: 20),
                                      if (event.description != null &&
                                          event.description!.isNotEmpty)
                                        EventDetailsEventDescription(
                                          event: event,
                                        ),
                                      EventDetailsAdditionalInfo(event: event),
                                      if (!event.isCanceled &&
                                          event.eventEndDateTime
                                              .isAfter(DateTime.now()))
                                        BlocBuilder<EventTicketsCubit,
                                            EventTicketsState>(
                                          builder: (context, state) {
                                            final eventTickets =
                                                state.eventTickets.fold(
                                              () => null,
                                              (tickets) => tickets,
                                            );
                                            return Column(
                                              children: [
                                                EventDetailsTicketPools(
                                                  event: event,
                                                ),
                                                if (_checkIfFabIsAvailable(
                                                  event: event,
                                                  ticket: ticket,
                                                  eventTickets: eventTickets,
                                                ))
                                                  const SizedBox(height: 60),
                                              ],
                                            );
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  _checkIfFabIsAvailable({
    required Event event,
    required Ticket? ticket,
    required EventTickets? eventTickets,
  }) {
    if (event.isCanceled) {
      return false;
    }

    if (event.eventEndDateTime.isBefore(DateTime.now())) {
      return false;
    }

    if (ticket != null && !ticket.isExpired) {
      return true;
    }

    if (ticket != null && ticket.isExpired) {
      return false;
    }

    if (eventTickets != null && eventTickets.isSoldOut) {
      return false;
    }

    if (eventTickets != null && eventTickets.isSaleOnlyAtGate) {
      return false;
    }

    return true;
  }
}

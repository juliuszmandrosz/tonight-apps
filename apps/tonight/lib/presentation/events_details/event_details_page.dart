import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_details/event_details_cubit.dart';
import 'package:tonight/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/details_hero_image.dart';
import 'package:tonight/presentation/events_details/widgets/bottom_bar/event_details_bottom_bar.dart';
import 'package:tonight/presentation/events_details/widgets/bottom_bar/event_details_join_button.dart';
import 'package:tonight/presentation/events_details/widgets/canceled_event_message.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_additional_info.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_artist_name.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_club_name.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_date_and_time.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_event_description.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_event_name.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_ticket_pools.dart';
import 'package:tonight/presentation/events_details/widgets/tiles/event_details_section.dart';

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
        child: BlocBuilder<EventDetailsCubit, EventDetailsState>(
          builder: (context, state) {
            if (state.status.isInitial()) {
              return const SizedBox.shrink();
            }

            if (state.status.isLoading()) {
              return const WaveLoadingIndicator();
            }

            if (state.status.isFailure()) {
              final cubit = context.read<EventDetailsCubit>();
              final callback = eventId != null
                  ? cubit.getEventById(eventId!)
                  : cubit.addEventToState(event!);
              return FailureInfo(retryCallback: () => callback);
            }

            final eventInState = state.event.getOrCrash();

            return SafeArea(
              child: Scaffold(
                backgroundColor: context.backgroundColor,
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.endContained,
                floatingActionButton: _checkIfBottomBarIsAvailable(eventInState)
                    ? EventDetailsJoinButton(event: eventInState)
                    : null,
                bottomNavigationBar: _checkIfBottomBarIsAvailable(eventInState)
                    ? EventDetailsBottomBar(event: eventInState)
                    : null,
                body: LayoutBuilder(builder: (context, constraints) {
                  final photoHeight = constraints.maxHeight * 0.420;
                  return NestedScrollView(
                    headerSliverBuilder: (context, value) {
                      return [
                        SliverAppBar(
                          automaticallyImplyLeading: false,
                          expandedHeight: photoHeight,
                          floating: true,
                          flexibleSpace: FlexibleSpaceBar(
                            collapseMode: CollapseMode.pin,
                            background: Column(
                              children: [
                                DetailsHeroImage(
                                  imageUrl: eventInState.eventPhotoUrl,
                                  heroTag: heroTag,
                                  height: photoHeight,
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
                          if (eventInState.isCanceled)
                            const CanceledEventMessage(),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                if (!eventInState.isCanceled)
                                  Column(
                                    children: [
                                      EventDetailsSection(
                                        event: eventInState,
                                        ticketPrice: ticketPrice,
                                      ),
                                      const SizedBox(height: 20),
                                    ],
                                  ),
                                const SizedBox(height: 10),
                                EventDetailsEventName(event: eventInState),
                                const SizedBox(height: 20),
                                EventDetailsClubName(event: eventInState),
                                const SizedBox(height: 20),
                                if (eventInState.isConcert)
                                  EventDetailsArtistName(event: eventInState),
                                EventDetailsDateAndTime(event: eventInState),
                                const SizedBox(height: 20),
                                if (eventInState.description != null &&
                                    eventInState.description!.isNotEmpty)
                                  EventDetailsEventDescription(
                                    event: eventInState,
                                  ),
                                EventDetailsAdditionalInfo(event: eventInState),
                                if (!eventInState.isCanceled &&
                                    eventInState.eventEndDateTime
                                        .isAfter(DateTime.now()))
                                  EventDetailsTicketPools(event: eventInState),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}

bool _checkIfBottomBarIsAvailable(Event event) {
  if (event.isCanceled) {
    return false;
  }

  if (event.eventEndDateTime.isBefore(DateTime.now())) {
    return false;
  }

  return true;
}

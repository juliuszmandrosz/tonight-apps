import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_details/event_details_cubit.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/details_hero_image.dart';
import 'package:raver/presentation/events_details/widgets/canceled_event_message.dart';
import 'package:raver/presentation/events_details/widgets/event_details_additional_info.dart';
import 'package:raver/presentation/events_details/widgets/event_details_artist_name.dart';
import 'package:raver/presentation/events_details/widgets/event_details_club_name.dart';
import 'package:raver/presentation/events_details/widgets/event_details_end_date_time.dart';
import 'package:raver/presentation/events_details/widgets/event_details_event_description.dart';
import 'package:raver/presentation/events_details/widgets/event_details_event_name.dart';
import 'package:raver/presentation/events_details/widgets/event_details_event_place.dart';
import 'package:raver/presentation/events_details/widgets/event_details_start_date_time.dart';
import 'package:raver/presentation/events_details/widgets/event_details_ticket.dart';
import 'package:raver/presentation/events_details/widgets/event_details_ticket_pools.dart';
import 'package:raver/presentation/events_details/widgets/tiles/event_details_section.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsPage extends StatelessWidget {
  final String? eventId;
  final Event? event;
  final String? heroTag;

  const EventDetailsPage({
    this.eventId,
    this.event,
    this.heroTag,
    Key? key,
  })  : assert((eventId != null || event != null), 'Event is not available'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = getIt<EventDetailsCubit>();
        eventId != null
            ? cubit.getEventById(eventId!)
            : cubit.addEventToState(event!);
        return cubit;
      },
      child: BlocBuilder<EventDetailsCubit, EventDetailsState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_) => Center(
              child: Text(S().errorLoadingEventDetails),
            ),
            loadSuccess: (state) {
              final event = state.event;
              return BlocProvider(
                create: (context) => getIt<EventTicketsCubit>()
                  ..getEventTickets(
                    eventId: event.id,
                    clubId: event.clubId,
                  ),
                child: Scaffold(
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerFloat,
                  floatingActionButtonAnimator:
                      FloatingActionButtonAnimator.scaling,
                  floatingActionButton: !event.isCanceled &&
                          event.eventEndDateTime.isAfter(DateTime.now())
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
                            if (event.isCanceled) const CanceledEventMessage(),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  if (!event.isCanceled)
                                    Column(
                                      children: [
                                        EventDetailsSection(event: event),
                                        const SizedBox(height: 20),
                                      ],
                                    ),
                                  EventDetailsEventName(event: event),
                                  const SizedBox(height: 20),
                                  EventDetailsClubName(event: event),
                                  const SizedBox(height: 20),
                                  if (event.isConcert)
                                    EventDetailsArtistName(event: event),
                                  EventDetailsStartDateTime(event: event),
                                  const SizedBox(height: 20),
                                  EventDetailsEndDateTime(event: event),
                                  const SizedBox(height: 20),
                                  if (event.description != null &&
                                      event.description!.isNotEmpty)
                                    EventDetailsEventDescription(
                                      event: event,
                                    ),
                                  EventDetailsAdditionalInfo(event: event),
                                  EventDetailsEventPlace(event: event),
                                  if (!event.isCanceled &&
                                      event.eventEndDateTime
                                          .isAfter(DateTime.now()))
                                    Column(
                                      children: [
                                        const SizedBox(height: 30),
                                        EventDetailsTicketPools(event: event),
                                        const SizedBox(height: 60),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

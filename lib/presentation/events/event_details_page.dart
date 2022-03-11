import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_details/event_details_cubit.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/events/widgets/event_details_additional_info.dart';
import 'package:raver/presentation/events/widgets/event_details_artist_name.dart';
import 'package:raver/presentation/events/widgets/event_details_club_name.dart';
import 'package:raver/presentation/events/widgets/event_details_event_date.dart';
import 'package:raver/presentation/events/widgets/event_details_event_name.dart';
import 'package:raver/presentation/events/widgets/event_details_event_place.dart';
import 'package:raver/presentation/events/widgets/event_details_navigate_to_club.dart';
import 'package:raver/presentation/events/widgets/event_details_section.dart';
import 'package:raver/presentation/events/widgets/event_details_ticket.dart';

class EventDetailsPage extends StatelessWidget {
  final String? eventId;
  final Event? event;

  const EventDetailsPage({
    this.eventId,
    this.event,
    Key? key,
  })  : assert((eventId != null || event != null), 'Event is not available'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: RaverAppBar(title: S().eventDetails),
        body: BlocProvider(
          create: (context) {
            final cubit = getIt<EventDetailsCubit>();
            eventId != null
                ? cubit.getEventById(eventId!)
                : cubit.addEventToState(event!);
            return cubit;
          },
          child: BlocBuilder<EventDetailsCubit, EventDetailsState>(
            builder: (context, state) {
              return Builder(
                builder: (context) {
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
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              if (event.isConcert)
                                EventDetailsArtistName(event: event),
                              EventDetailsClubName(event: event),
                              EventDetailsEventName(event: event),
                              const SizedBox(height: 10),
                              EventDetailsEventDate(event: event),
                              const SizedBox(height: 10),
                              EventDetailsSection(event: event),
                              const SizedBox(height: 10),
                              EventDetailsEventPlace(event: event),
                              const SizedBox(height: 10),
                              EventDetailsAdditionalInfo(event: event),
                              const SizedBox(height: 30),
                              EventDetailsNavigateToClub(event: event),
                              const SizedBox(height: 10),
                              EventDetailsTicket(event: event),
                            ],
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
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/event_chat/bloc/event_chat_bloc.dart';
import 'package:tonight/application/event_photos/event_photos_bloc.dart';
import 'package:tonight/application/event_room/bloc/event_room_bloc.dart';
import 'package:tonight/application/event_room_participants/event_room_participants_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/event_chat/event_chat_page.dart';
import 'package:tonight/presentation/event_photos/event_photos_page.dart';
import 'package:tonight/presentation/event_room/widgets/event_room_app_bar.dart';
import 'package:tonight/presentation/event_room/widgets/event_room_fab.dart';
import 'package:tonight/presentation/event_room_participants/event_room_participants_page.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventRoomPage extends StatelessWidget {
  final Event? event;
  final String? eventId;

  const EventRoomPage({
    this.event,
    this.eventId,
    Key? key,
  })  : assert((eventId != null || event != null), 'Event is not available'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.unfocus(),
      child: TonightOverlay(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<EventRoomBloc>()
                ..add(
                  EventRoomEvent.joinedToEvent(
                    eventId: event?.id ?? eventId!,
                    event: event,
                  ),
                ),
            ),
            BlocProvider(
              create: (context) => getIt<EventChatBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<EventPhotosBloc>()
                ..add(
                  EventPhotosEvent.photosFetched(
                    eventId: event?.id ?? eventId!,
                    event: event,
                  ),
                ),
            ),
            BlocProvider(
              create: (context) => getIt<EventRoomParticipantsBloc>()
                ..add(
                  EventRoomParticipantsEvent.participantsFetched(
                    event?.id ?? eventId!,
                  ),
                ),
            ),
          ],
          child: BlocConsumer<EventRoomBloc, EventRoomState>(
            listener: (context, state) {
              state.snackbarMessage.fold(
                () {},
                (message) => context.showSnackbarMessage(message),
              );
              state.previousEvent.fold(
                () {},
                (previousEvent) => previousEvent.maybeMap(
                  joinedToEvent: (_) {
                    if (!state.joinStatus.isSuccess()) return;
                    _initializeChat(context, state);
                  },
                  leavedFromEvent: (_) {
                    state.leaveStatus.isLoading()
                        ? context.loaderOverlay.show()
                        : context.loaderOverlay.hide();
                    if (state.leaveStatus.isSuccess()) {
                      context.router.popUntil((route) {
                        final popUntilRoute = event != null
                            ? EventDetailsRoute.name
                            : WelcomeLoaderRoute.name;
                        return route.settings.name == popUntilRoute;
                      });
                    }
                  },
                  orElse: () {},
                ),
              );
            },
            builder: (context, state) {
              switch (state.joinStatus) {
                case CubitStatus.initial:
                  return const SizedBox.shrink();
                case CubitStatus.loading:
                  return const WaveLoadingIndicator();
                case CubitStatus.failure:
                  return FailureInfo(
                    retryCallback: () => context.read<EventRoomBloc>().add(
                          EventRoomEvent.joinedToEvent(
                            eventId: event?.id ?? eventId!,
                            event: event,
                          ),
                        ),
                  );
                case CubitStatus.success:
                  final eventInState = state.event.getOrCrash();
                  final isEventEnded =
                      eventInState.eventEndDateTime.isBefore(DateTime.now());
                  return DefaultTabController(
                    length: isEventEnded ? 2 : 3,
                    child: SafeArea(
                      child: Scaffold(
                        appBar: EventRoomAppBar(
                          event: eventInState,
                          isKeyboardOpen: context.isKeyboardOpen,
                          isEventEnded: isEventEnded,
                        ),
                        floatingActionButton: const EventRoomFab(),
                        body: TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            EventChatPage(
                              event: eventInState,
                              currentUser: state.participant.getOrCrash(),
                            ),
                            if (!isEventEnded) const EventPhotosPage(),
                            const EventRoomParticipantsPage(),
                          ],
                        ),
                      ),
                    ),
                  );
              }
            },
          ),
        ),
      ),
    );
  }

  _initializeChat(BuildContext context, EventRoomState state) {
    context.read<EventChatBloc>().add(
          EventChatEvent.chatInitialized(
            event: state.event.getOrCrash(),
            participant: state.participant.getOrCrash(),
          ),
        );
  }
}

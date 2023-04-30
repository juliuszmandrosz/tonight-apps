import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/event_chat/bloc/event_chat_bloc.dart';
import 'package:tonight/application/event_photos/event_photos_bloc.dart';
import 'package:tonight/application/event_room/bloc/event_room_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/event_chat/event_chat_page.dart';
import 'package:tonight/presentation/event_photos/event_photos_page.dart';
import 'package:tonight/presentation/event_room/widgets/event_room_app_bar.dart';
import 'package:tonight/presentation/event_room/widgets/event_room_fab.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventRoomPage extends StatelessWidget {
  final Event event;

  const EventRoomPage({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.unfocus(),
      child: TonightOverlay(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<EventRoomBloc>()
                ..add(EventRoomEvent.joinedToEvent(event)),
            ),
            BlocProvider(
              create: (context) => getIt<EventChatBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<EventPhotosBloc>()
                ..add(EventPhotosEvent.photosFetched(event)),
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
                      context.router.popUntil((route) =>
                          route.settings.name == EventDetailsRoute.name);
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
                  return const SizedBox.shrink();
                case CubitStatus.success:
                  return DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      appBar: EventRoomAppBar(
                        event: event,
                        isKeyboardOpen: context.isKeyboardOpen,
                      ),
                      floatingActionButton: const EventRoomFab(),
                      body: const TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          EventChatPage(),
                          EventPhotosPage(),
                        ],
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
            event: event,
            participant: state.participant.getOrCrash(),
          ),
        );
  }
}

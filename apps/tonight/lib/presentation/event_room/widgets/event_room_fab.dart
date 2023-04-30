import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/event_room/bloc/event_room_bloc.dart';
import 'package:tonight/application/event_room/bloc/event_room_tab.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventRoomFab extends StatelessWidget {
  const EventRoomFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventRoomBloc, EventRoomState>(
      builder: (context, state) {
        final event = dartz.some(state.event.getOrCrash());
        return state.selectedTab != EventRoomTab.photos
            ? const SizedBox.shrink()
            : FloatingActionButton(
                onPressed: () => context.pushRoute(
                  WallPhotoCameraPreviewRoute(event: event),
                ),
                child: const FaIcon(FontAwesomeIcons.camera),
              );
      },
    );
  }
}

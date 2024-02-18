import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/event_room/bloc/event_room_bloc.dart';
import 'package:tonight/application/event_room/bloc/event_room_tab.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/utils/show_confirm_phone_number_dialog.dart';
import 'package:translations/generated/l10n.dart';

class EventRoomFab extends StatelessWidget {
  const EventRoomFab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventRoomBloc, EventRoomState>(
      builder: (context, eventRoomState) {
        final event = dartz.some(eventRoomState.event.getOrCrash());
        return eventRoomState.selectedTab != EventRoomTab.photos
            ? const SizedBox.shrink()
            : FloatingActionButton(
                onPressed: () async {
                  if (context
                      .read<AuthCubit>()
                      .checkIfPhoneNumberIsVerified()) {
                    final eventStartDateTime =
                        event.getOrCrash().eventStartDateTime;
                    if (eventStartDateTime.isAfter(DateTime.now())) {
                      context.showSnackbarMessage(S().eventNotStartedYet);
                      return;
                    }
                    context.pushRoute(
                      WallPhotoCameraPreviewRoute(
                        event: event,
                        timeTask: dartz.none(),
                      ),
                    );
                    return;
                  }

                  await showConfirmPhoneNumberDialog(context);
                },
                child: const FaIcon(FontAwesomeIcons.camera),
              );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/presentation/event/widgets/current_event.dart';
import 'package:raver_scanner/presentation/event/widgets/no_live_event.dart';
import 'package:raver_translations/raver_translations.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentEventCubit, CurrentEventState>(
      builder: (context, state) {
        if (state.status.isLoading()) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.status.isFailure()) {
          return Center(
            child: Text(S().errorLoadingEventDetails),
          );
        }

        return state.currentEvent.fold(
          () => const NoLiveEvent(),
          (event) => CurrentEvent(event: event),
        );
      },
    );
  }
}

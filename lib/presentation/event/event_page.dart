import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_headline.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentEventCubit, CurrentEventState>(
      // TODO - add refresh here
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
          () => Center(child: Text(S().noLiveEvent)),
          (event) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaverScannerHeadline(text: event.eventName),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () =>
                      AutoRouter.of(context).push(const ScannerRoute()),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(S().startScanning),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

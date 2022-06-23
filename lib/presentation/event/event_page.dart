import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_headline.dart';
import 'package:raver_scanner/presentation/core/ticket_logo_animation.dart';
import 'package:raver_scanner/presentation/event/widgets/current_event.dart';
import 'package:raver_scanner/presentation/event/widgets/no_access.dart';
import 'package:raver_scanner/presentation/event/widgets/no_live_event.dart';
import 'package:raver_scanner/presentation/event/widgets/refresh_icon.dart';
import 'package:raver_scanner/presentation/event/widgets/selector_club.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentEventCubit, CurrentEventState>(
      builder: (context, state) {
        if (state.status.isLoading()) {
          return const TicketLogoAnimation();
        }

        if (state.status.isFailure()) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: state.failure.getOrCrash().map(
                    unexpected: (_) => RaverScannerHeadline(
                      text: S().errorLoadingEventDetails,
                    ),
                    noAccess: (_) => const NoAccess(),
                  ),
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const SelectorClub(),
                const SizedBox(height: 30),
                state.currentEvent.fold(
                  () => const NoLiveEvent(),
                  (event) => CurrentEvent(event: event),
                ),
                const SizedBox(height: 30),
                const RefreshCurrentEventButton(),
                const Spacer(),
                if (state.currentEvent.isSome())
                  SizedBox(
                    width: 300,
                    child: ElevatedButton.icon(
                      icon: const FaIcon(FontAwesomeIcons.qrcode),
                      onPressed: () => AutoRouter.of(context).push(
                        const ScannerRoute(),
                      ),
                      label: Text(S().startScanning),
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

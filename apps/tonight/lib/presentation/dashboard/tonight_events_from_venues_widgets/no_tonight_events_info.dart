import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/dashboard/bloc/tonight_events_from_venues_bloc.dart';
import 'package:tonight/presentation/dashboard/tonight_events_from_venues_widgets/tonight_event_countdown.dart';
import 'package:tonight/presentation/navigator/tonight_navigation_destinations.dart';
import 'package:translations/translations.dart';

class NoTonightEventsInfo extends StatelessWidget {
  const NoTonightEventsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TonightEventsFromVenuesBloc,
        TonightEventsFromVenuesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: state.appliedMenuFilters.isNotEmpty
              ? Center(
                  child: Text(
                    S().noEventsMatchingCriteria,
                    style: context.titleMedium.copyWithSecondaryColor(),
                    textAlign: TextAlign.center,
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (state.nearestEventStartDateTime.isSome() &&
                          state.nearestEventStartDateTime.getOrCrash() != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Text(
                            state.eventFilters.maxDistanceFilter.enabled
                                ? S().untilNextEventInAreaRemains.toUpperCase()
                                : S().untilNextEventRemains.toUpperCase(),
                            style: context.titleMedium.copyWith(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                              shadows: [
                                Shadow(
                                  offset: const Offset(1.0, 1.0),
                                  blurRadius: 2.0,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      state.nearestEventStartDateTime.fold(
                        () => _buildNoEventsText(state, context),
                        (dateTime) => dateTime == null
                            ? _buildNoEventsText(state, context)
                            : TonightEventCountdown(
                                onTimerCompleted: () => context
                                    .read<TonightEventsFromVenuesBloc>()
                                    .add(const TonightEventsFromVenuesEvent
                                        .eventsRefreshed()),
                                secondsLeft: dateTime
                                    .difference(DateTime.now())
                                    .inSeconds,
                              ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: kButtonHeight,
                        child: ElevatedButton.icon(
                          onPressed: () =>
                              AutoTabsRouter.of(context).setActiveIndex(
                            TonightNavigationDestination.discover.index,
                          ),
                          label: Text(S().discover),
                          icon: const FaIcon(FontAwesomeIcons.compass),
                        ),
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }

  Text _buildNoEventsText(
          TonightEventsFromVenuesState state, BuildContext context) =>
      Text(
        state.eventFilters.maxDistanceFilter.enabled
            ? S().noEventsNearYou
            : S().events(0),
        style: context.titleMedium.copyWithSecondaryColor(),
        textAlign: TextAlign.center,
      );
}

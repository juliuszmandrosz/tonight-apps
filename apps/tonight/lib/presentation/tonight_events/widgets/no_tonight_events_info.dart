import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:tonight/presentation/navigator/tonight_navigation_destinations.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_countdown.dart';
import 'package:translations/translations.dart';

class NoTonightEventsInfo extends StatelessWidget {
  const NoTonightEventsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(),
        BlocBuilder<TonightEventsBloc, TonightEventsState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: state.appliedMenuFilters.isNotEmpty
                  ? Center(
                      child: Text(
                        // TODO - add translation
                        'Brak wydarzeń spełniających kryteria wyszukiwania',
                        style: context.titleMedium.copyWithSecondaryColor(),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (state.nearestEventStartDateTime.isSome() &&
                              state.nearestEventStartDateTime.getOrCrash() !=
                                  null)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: Text(
                                // TODO - add translation
                                state.eventFilters.maxDistanceFilter.enabled
                                    ? 'DO NAJBLIŻSZEGO WYDARZENIA W POBLIŻU POZOSTAŁO'
                                    : 'DO NAJBLIŻSZEGO WYDARZENIA POZOSTAŁO',
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
                                        .read<TonightEventsBloc>()
                                        .add(const TonightEventsEvent
                                            .eventsRefreshed()),
                                    secondsLeft: dateTime
                                        .difference(DateTime.now())
                                        .inSeconds,
                                  ),
                          ),
                          const SizedBox(height: 40),
                          SizedBox(
                            height: kButtonHeight,
                            child: ElevatedButton.icon(
                              onPressed: () => AutoTabsRouter.of(context)
                                  .setActiveIndex(TonightNavigationDestination
                                      .discover.index),
                              label: Text(S().discover),
                              icon: const FaIcon(FontAwesomeIcons.compass),
                            ),
                          ),
                        ],
                      ),
                    ),
            );
          },
        ),
      ],
    );
  }

  Text _buildNoEventsText(TonightEventsState state, BuildContext context) =>
      Text(
        state.eventFilters.maxDistanceFilter.enabled
            ? S().noEventsNearYou
            : S().events(0),
        style: context.titleMedium.copyWithSecondaryColor(),
        textAlign: TextAlign.center,
      );
}

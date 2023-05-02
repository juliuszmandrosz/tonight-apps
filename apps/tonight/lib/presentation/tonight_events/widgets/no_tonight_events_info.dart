import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:translations/raver_translations.dart';

class NoTonightEventsInfo extends StatelessWidget {
  const NoTonightEventsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TonightEventsBloc, TonightEventsState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                state.eventFilters.maxDistanceFilter.userLocation.isSome() &&
                        state.eventFilters.maxDistanceFilter.enabled
                    ? S().noEventsNearYou
                    : S().events(0),
                style: context.titleSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () => context
                    .read<TonightEventsBloc>()
                    .add(const TonightEventsEvent.eventsRefreshed()),
                child: Text(S().refresh),
              ),
            ],
          ),
        );
      },
    );
  }
}

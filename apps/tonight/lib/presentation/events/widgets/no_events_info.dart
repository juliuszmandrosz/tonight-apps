import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:translations/translations.dart';

class NoEventsInfo extends StatelessWidget {
  final Function(BuildContext context) onEventsRefreshed;

  const NoEventsInfo({
    required this.onEventsRefreshed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc, EventsState>(
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
                style: context.titleMedium,
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () => onEventsRefreshed(context),
                child: Text(S().refresh),
              ),
            ],
          ),
        );
      },
    );
  }
}

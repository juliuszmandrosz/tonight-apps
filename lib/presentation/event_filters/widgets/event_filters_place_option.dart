import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersPlaceOption extends StatelessWidget {
  const EventFiltersPlaceOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.maxDistanceFilter.enabled !=
          current.filters.maxDistanceFilter.enabled,
      builder: (context, filtersState) {
        return Column(
          children: [
            Row(
              children: [
                RaverHeadline(text: '${S().findEventPlaceBy}:'),
              ],
            ),
            RadioListTile<bool>(
              title: Text(S().findByCity),
              value: false,
              groupValue: filtersState.filters.maxDistanceFilter.enabled,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsMaxDistanceOption(false),
            ),
            RadioListTile<bool>(
              title: Text(S().findByMaxDistance),
              value: true,
              groupValue: filtersState.filters.maxDistanceFilter.enabled,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsMaxDistanceOption(true),
            ),
          ],
        );
      },
    );
  }
}

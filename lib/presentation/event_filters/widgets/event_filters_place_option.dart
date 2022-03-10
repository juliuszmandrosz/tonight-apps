import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_headline.dart';

class EventFiltersPlaceOption extends StatelessWidget {
  const EventFiltersPlaceOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.isMaxDistanceOption !=
          current.filters.isMaxDistanceOption,
      builder: (context, filtersState) {
        return Column(
          children: [
            Row(
              children: const [
                RaverHeadline(text: 'Find event place by:'),
              ],
            ),
            RadioListTile<bool>(
              activeColor: DefaultColors.primaryColor,
              title: const Text('City'),
              value: false,
              groupValue: filtersState.filters.isMaxDistanceOption,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsMaxDistanceOption(false),
            ),
            RadioListTile<bool>(
              activeColor: DefaultColors.primaryColor,
              title: const Text('Maximum distance'),
              value: true,
              groupValue: filtersState.filters.isMaxDistanceOption,
              onChanged: (value) => BlocProvider.of<EventFiltersCubit>(context)
                  .changeIsMaxDistanceOption(true),
            ),
          ],
        );
      },
    );
  }
}

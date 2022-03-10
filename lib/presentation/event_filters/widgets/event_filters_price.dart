import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_headline.dart';

class EventFiltersPrice extends StatelessWidget {
  final int availableMaxPrice;

  const EventFiltersPrice({
    required this.availableMaxPrice,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.minPrice != current.filters.minPrice ||
          previous.filters.maxPrice != current.filters.maxPrice,
      builder: (context, state) {
        if (state.filters.maxPrice == null) {
          context.read<EventFiltersCubit>().changePriceRange(
                state.filters.minPrice,
                availableMaxPrice,
              );
        }

        var _currentRangeValues = RangeValues(
          state.filters.minPrice.toDouble(),
          state.filters.maxPrice?.toDouble() ?? availableMaxPrice.toDouble(),
        );

        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RaverHeadline(text: 'Price range (pln)'),
                RaverHeadline(
                  text:
                      '${_currentRangeValues.start.round()}-${_currentRangeValues.end.round()}',
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: RangeSlider(
                    values: _currentRangeValues,
                    activeColor: DefaultColors.primaryColor,
                    inactiveColor: DefaultColors.backgroundColor,
                    max: availableMaxPrice.toDouble(),
                    min: 0,
                    divisions: (availableMaxPrice / 10).round(),
                    labels: RangeLabels(
                      '${_currentRangeValues.start.round()}',
                      '${_currentRangeValues.end.round()}',
                    ),
                    onChanged: (values) =>
                        context.read<EventFiltersCubit>().changePriceRange(
                              values.start.round(),
                              values.end.round(),
                            ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

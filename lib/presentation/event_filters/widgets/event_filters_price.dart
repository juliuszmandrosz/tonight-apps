import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersPrice extends StatelessWidget {
  const EventFiltersPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO - change after merge https://github.com/juliuszmandrosz/Raver/pull/40
    const availableMaxPrice = 1000;

    final theme = Theme.of(context);
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.priceRangeFilter.minPrice !=
              current.filters.priceRangeFilter.minPrice ||
          previous.filters.priceRangeFilter.maxPrice !=
              current.filters.priceRangeFilter.maxPrice,
      builder: (context, state) {
        if (state.filters.priceRangeFilter.maxPrice == null) {
          context.read<EventFiltersCubit>().changePriceRange(
                state.filters.priceRangeFilter.minPrice,
                availableMaxPrice,
              );
        }

        var _currentRangeValues = RangeValues(
          state.filters.priceRangeFilter.minPrice.toDouble(),
          state.filters.priceRangeFilter.maxPrice?.toDouble() ??
              availableMaxPrice.toDouble(),
        );

        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaverHeadline(
                    text: '${S().priceRange} (${context.getCurrencyName()})'),
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
                    activeColor: theme.primaryColor,
                    inactiveColor: theme.backgroundColor,
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

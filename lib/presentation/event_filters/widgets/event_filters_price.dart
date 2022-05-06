import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_max_price.dart';
import 'package:raver/presentation/event_filters/widgets/event_filters_min_price.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersPrice extends StatelessWidget {
  const EventFiltersPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.currencyFilter.currency !=
          current.filters.currencyFilter.currency,
      builder: (context, state) {
        final currentCurrency = state.filters.currencyFilter.currency;

        final currencyHeadline = currentCurrency.isNotEmpty
            ? '(${getCurrencySymbolFromCode(currentCurrency)})'
            : '';

        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaverHeadline(text: '${S().priceRange} $currencyHeadline'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Expanded(child: EventFiltersMinPrice()),
                SizedBox(width: 20),
                Expanded(child: EventFiltersMaxPrice()),
              ],
            ),
          ],
        );
      },
    );
  }
}

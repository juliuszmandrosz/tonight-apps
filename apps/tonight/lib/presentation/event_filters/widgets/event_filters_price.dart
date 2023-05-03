import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_max_price.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_min_price.dart';
import 'package:translations/translations.dart';

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

        return ListTileTheme(
          contentPadding: const EdgeInsets.all(0),
          dense: true,
          child: ExpansionTile(
            leading: TonightHeadline(
              text: '${S().priceRange} $currencyHeadline',
              isSmallerVersion: true,
            ),
            title: const SizedBox.shrink(),
            children: [
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
          ),
        );
      },
    );
  }
}

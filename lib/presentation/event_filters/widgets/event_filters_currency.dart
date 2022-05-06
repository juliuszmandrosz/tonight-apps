import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class EventFiltersCurrency extends StatelessWidget {
  final List<String> currencies;

  const EventFiltersCurrency({
    required this.currencies,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: RaverHeadline(text: S().currency),
        ),
        const SizedBox(height: 20),
        BlocBuilder<EventFiltersCubit, EventFiltersState>(
          buildWhen: (previous, current) =>
              previous.filters.currencyFilter.currency !=
              current.filters.currencyFilter.currency,
          builder: (context, state) {
            final currentValue = state.filters.currencyFilter.currency;
            return DropdownButtonFormField<String>(
              value: currentValue.isNotEmpty ? currentValue : null,
              decoration: InputDecoration(labelText: S().select),
              items: currencies.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value.toUpperCase()),
                );
              }).toList(),
              onChanged: (value) =>
                  context.read<EventFiltersCubit>().changeCurrency(value!),
            );
          },
        ),
      ],
    );
  }
}

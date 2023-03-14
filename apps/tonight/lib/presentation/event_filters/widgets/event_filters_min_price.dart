import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:translations/translations.dart';

class EventFiltersMinPrice extends HookWidget {
  const EventFiltersMinPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventFiltersCubit = context.read<EventFiltersCubit>();
    final initialMinPrice =
        eventFiltersCubit.state.filters.priceRangeFilter.minPrice;

    final minPriceController = useTextEditingController(
      text: initialMinPrice > 0 ? '$initialMinPrice' : '',
    );

    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.priceRangeFilter.minPrice !=
              current.filters.priceRangeFilter.minPrice ||
          previous.filters.priceRangeFilter.maxPrice !=
              current.filters.priceRangeFilter.maxPrice,
      builder: (context, state) {
        final currentMaxPrice = state.filters.priceRangeFilter.maxPrice;
        return TextField(
          controller: minPriceController,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          decoration: InputDecoration(
            labelText: S().from,
            suffixIcon: minPriceController.text.isNotEmpty
                ? InkWell(
                    onTap: () {
                      eventFiltersCubit.changePriceRange(0, currentMaxPrice);
                      minPriceController.text = '';
                    },
                    child: const Icon(
                      Icons.clear,
                      size: 18,
                    ),
                  )
                : null,
          ),
          onChanged: (value) => eventFiltersCubit.changePriceRange(
            int.tryParse(value),
            currentMaxPrice,
          ),
        );
      },
    );
  }
}

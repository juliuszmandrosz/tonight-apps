import 'package:common/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:translations/raver_translations.dart';

class EventFiltersMaxPrice extends HookWidget {
  const EventFiltersMaxPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventFiltersCubit = context.read<EventFiltersCubit>();

    final initialMaxPrice =
        eventFiltersCubit.state.filters.priceRangeFilter.maxPrice;

    final maxPriceController = useTextEditingController(
      text: '${initialMaxPrice ?? ''}',
    );

    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.priceRangeFilter.maxPrice !=
              current.filters.priceRangeFilter.maxPrice ||
          previous.filters.priceRangeFilter.minPrice !=
              current.filters.priceRangeFilter.minPrice,
      builder: (context, state) {
        final currentMinPrice = state.filters.priceRangeFilter.minPrice;
        return TextField(
          controller: maxPriceController,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          decoration: InputDecoration(
            labelText: S().to,
            suffixIcon: maxPriceController.text.isNotEmpty
                ? InkWell(
                    onTap: () {
                      context.unfocus();
                      eventFiltersCubit.changePriceRange(currentMinPrice, null);
                      maxPriceController.text = '';
                    },
                    child: const Icon(
                      Icons.clear,
                      size: 18,
                    ),
                  )
                : null,
          ),
          onChanged: (value) => eventFiltersCubit.changePriceRange(
            currentMinPrice,
            int.tryParse(value),
          ),
        );
      },
    );
  }
}

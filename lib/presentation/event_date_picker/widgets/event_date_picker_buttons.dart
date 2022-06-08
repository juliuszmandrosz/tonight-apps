import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDatePickerButtons extends StatelessWidget {
  const EventDatePickerButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      builder: (context, state) {
        return SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: state.filters.dateRangeFilter.fromDate != null
                ? () {
                    context.read<EventFiltersCubit>().submitFilters();
                    AutoRouter.of(context).pop();
                  }
                : null,
            child: Text(S().applySelectedDate),
          ),
        );
      },
    );
  }
}

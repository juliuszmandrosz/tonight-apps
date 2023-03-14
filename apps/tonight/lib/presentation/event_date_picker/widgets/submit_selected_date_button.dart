import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:translations/translations.dart';

class SubmitSelectedDateButton extends StatelessWidget {
  const SubmitSelectedDateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      builder: (context, state) {
        return SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: state.filters.dateRangeFilter.fromDate != null
                ? () {
                    final filtersCubit = context.read<EventFiltersCubit>();
                    filtersCubit.changeDay(
                      state.filters.dateRangeFilter.toDate ??
                          DateUtils.dateOnly(DateTime.now()),
                    );
                    filtersCubit.submitFilters(isDateFilterApplied: true);
                    context.popRoute();
                  }
                : null,
            child: Text(S().applySelectedDate),
          ),
        );
      },
    );
  }
}

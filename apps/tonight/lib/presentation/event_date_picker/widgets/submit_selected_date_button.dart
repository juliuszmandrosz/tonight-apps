import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_date_picker/event_date_picker_cubit.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:translations/raver_translations.dart';

class SubmitSelectedDateButton extends StatelessWidget {
  const SubmitSelectedDateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventDatePickerCubit, EventDatePickerState>(
      listenWhen: (previous, current) =>
          previous.isDateFilterApplied != current.isDateFilterApplied,
      listener: (context, state) {
        context
            .read<EventsBloc>()
            .add(EventsEvent.dateFilterApplied(state.filter));
        context.popRoute();
      },
      builder: (context, state) {
        return SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: state.filter.fromDate != null
                ? () {
                    final filtersCubit = context.read<EventDatePickerCubit>();
                    filtersCubit.changeDay(
                      state.filter.toDate ?? DateUtils.dateOnly(DateTime.now()),
                    );
                    filtersCubit.submitDateFilter();
                  }
                : null,
            child: Text(S().applySelectedDate),
          ),
        );
      },
    );
  }
}

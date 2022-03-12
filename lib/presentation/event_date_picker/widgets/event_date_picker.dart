import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class EventDatePicker extends StatelessWidget {
  const EventDatePicker({Key? key}) : super(key: key);

  _onSelectionChanged(BuildContext context, DateTime selectedDay) {
    context.read<EventFiltersCubit>().changeDay(selectedDay);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.day != current.filters.day,
      builder: (context, state) {
        return SfDateRangePicker(
          initialSelectedDate: state.filters.day,
          onSelectionChanged: (args) =>
              _onSelectionChanged(context, args.value),
          view: DateRangePickerView.month,
          selectionMode: DateRangePickerSelectionMode.single,
          selectionColor: DefaultColors.primaryColor,
          todayHighlightColor: DefaultColors.primaryColor,
          minDate: DateTime.now(),
        );
      },
    );
  }
}

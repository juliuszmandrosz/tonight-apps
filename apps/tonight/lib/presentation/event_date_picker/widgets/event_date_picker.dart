import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:tonight/application/events/event_date_picker/event_date_picker_cubit.dart';

class EventDatePicker extends StatelessWidget {
  const EventDatePicker({Key? key}) : super(key: key);

  _onSelectionChanged(BuildContext context, DateTime selectedDay) {
    context.read<EventDatePickerCubit>().changeDay(selectedDay);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventDatePickerCubit, EventDatePickerState>(
      builder: (context, state) {
        return SfDateRangePicker(
          initialSelectedDate: state.filter.fromDate,
          onSelectionChanged: (args) =>
              _onSelectionChanged(context, args.value),
          view: DateRangePickerView.month,
          selectionMode: DateRangePickerSelectionMode.single,
          selectionColor: context.primaryColor,
          todayHighlightColor: context.primaryColor,
          minDate: DateTime.now(),
          initialDisplayDate: state.filter.fromDate,
          monthViewSettings: const DateRangePickerMonthViewSettings(
            firstDayOfWeek: 1,
          ),
        );
      },
    );
  }
}

import 'package:common/extensions/date_time_extensions.dart';
import 'package:events/domain/filters/filter/date_range_filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_date_picker_cubit.freezed.dart';
part 'event_date_picker_state.dart';

class EventDatePickerCubit extends Cubit<EventDatePickerState> {
  EventDatePickerCubit() : super(EventDatePickerState.initial());

  initDate(DateRangeFilter filter) {
    emit(state.copyWith(filter: filter));
  }

  void changeDay(DateTime day) {
    final filter = DateRangeFilter(
      fromDate: day.startOfDay,
      toDate: day.endOfDay,
    );
    emit(state.copyWith(filter: filter));
  }

  submitDateFilter() {
    emit(state.copyWith(isDateFilterApplied: true));
  }
}

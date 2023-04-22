part of 'event_date_picker_cubit.dart';

@freezed
class EventDatePickerState with _$EventDatePickerState {
  const factory EventDatePickerState({
    required DateRangeFilter filter,
    required bool isDateFilterApplied,
  }) = _EventDatePickerState;

  factory EventDatePickerState.initial() => EventDatePickerState(
        filter: DateRangeFilter.empty(),
        isDateFilterApplied: false,
      );
}

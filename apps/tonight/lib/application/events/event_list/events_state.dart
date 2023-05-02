part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    required CubitStatus getEventsStatus,
    required CubitStatus nextPageStatus,
    required Option<String> errorMessage,
    required List<Event> events,
    required bool hasReachedMax,
    required EventFilters eventFilters,
    required EventSortModel sortModel,
    required Map<MenuEventFilter, IFilter> appliedMenuFilters,
    required Option<CommonEventFailure> failure,
  }) = _EventsState;

  factory EventsState.initial() => EventsState(
        getEventsStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        errorMessage: none(),
        hasReachedMax: false,
        eventFilters: EventFilters.empty(),
        sortModel: EventSortModel.empty(),
        events: [],
        appliedMenuFilters: {},
        failure: none(),
      );
}

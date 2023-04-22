part of 'event_overview_bloc.dart';

@freezed
class EventOverviewState with _$EventOverviewState {
  EventOverviewState._();

  factory EventOverviewState({
    required List<Event> events,
    required bool hasReachedMax,
    required CubitStatus status,
    required CubitStatus nextPageStatus,
    required EventFilters eventFilters,
    required EventSortModel sortModel,
    required Option<CommonEventFailure> failure,
  }) = _EventOverviewState;

  factory EventOverviewState.initial() => EventOverviewState(
        hasReachedMax: false,
        status: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        events: [],
        eventFilters: EventFilters.empty(),
        sortModel: EventSortModel.empty(),
        failure: none(),
      );
}

part of 'tonight_events_bloc.dart';

@freezed
class TonightEventsState with _$TonightEventsState {
  const factory TonightEventsState({
    required CubitStatus getEventsStatus,
    required CubitStatus nextPageStatus,
    required CubitStatus useVoucherStatus,
    required Option<String> errorMessage,
    required List<TonightEvent> events,
    required bool hasReachedMax,
    required String filterPhrase,
    required EventFilters eventFilters,
    required Map<MenuEventFilter, IFilter> appliedMenuFilters,
    required Option<TonightEventsFailure> failure,
  }) = _TonightEventsState;

  factory TonightEventsState.initial() => TonightEventsState(
        getEventsStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        useVoucherStatus: CubitStatus.initial,
        errorMessage: none(),
        hasReachedMax: false,
        events: [],
        filterPhrase: '',
        appliedMenuFilters: {},
        eventFilters: EventFilters.empty().copyWith(
          showOnlyFilter: ShowOnlyFilter(showOnlyTonight: true),
        ),
        failure: none(),
      );
}

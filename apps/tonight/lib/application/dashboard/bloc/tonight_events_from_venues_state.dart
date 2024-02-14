part of 'tonight_events_from_venues_bloc.dart';

@freezed
class TonightEventsFromVenuesState with _$TonightEventsFromVenuesState {
  const factory TonightEventsFromVenuesState({
    required CubitStatus getEventsStatus,
    required CubitStatus nextPageStatus,
    required CubitStatus useVoucherStatus,
    required Option<String> errorMessage,
    required List<TonightEvent> events,
    required Option<DateTime?> nearestEventStartDateTime,
    required bool hasReachedMax,
    required String filterPhrase,
    required EventFilters eventFilters,
    required Map<MenuEventFilter, IFilter> appliedMenuFilters,
    required Option<DashboardFailure> failure,
    required Option<EventVoucher> usedVoucher,
  }) = _TonightEventsFromVenuesState;

  factory TonightEventsFromVenuesState.initial() =>
      TonightEventsFromVenuesState(
        getEventsStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        useVoucherStatus: CubitStatus.initial,
        errorMessage: none(),
        hasReachedMax: false,
        events: [],
        nearestEventStartDateTime: none(),
        filterPhrase: '',
        appliedMenuFilters: {},
        eventFilters: EventFilters.empty().copyWith(
          showOnlyFilter: ShowOnlyFilter(showOnlyTonight: true),
        ),
        failure: none(),
        usedVoucher: none(),
      );
}

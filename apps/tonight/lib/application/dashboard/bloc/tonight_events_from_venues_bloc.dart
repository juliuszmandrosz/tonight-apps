import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/filters/event_filters_entity.dart';
import 'package:events/domain/filters/filter/allowed_outfits_filter.dart';
import 'package:events/domain/filters/filter/event_filters_show_only_concerts.dart';
import 'package:events/domain/filters/filter/max_distance_filter.dart';
import 'package:events/domain/filters/filter/min_ages_filter.dart';
import 'package:events/domain/filters/filter/musical_genres_filter.dart';
import 'package:events/domain/filters/filter/price_range_filter.dart';
import 'package:events/domain/filters/filter/show_only_filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/application/dashboard/aggregator/dashboard_aggregator.dart';
import 'package:tonight/application/dashboard/aggregator/dashboard_failure.dart';
import 'package:tonight/application/dashboard/models/event_voucher_model.dart';
import 'package:tonight/application/dashboard/models/tonight_event_model.dart';
import 'package:tonight/application/events/event_filters/menu_event_filter.dart';

part 'tonight_events_from_venues_bloc.freezed.dart';
part 'tonight_events_from_venues_event.dart';
part 'tonight_events_from_venues_state.dart';

const _pageSize = 10;

class TonightEventsFromVenuesBloc
    extends Bloc<TonightEventsFromVenuesEvent, TonightEventsFromVenuesState> {
  final DashboardAggregator _dashboardAggregator;

  TonightEventsFromVenuesBloc(this._dashboardAggregator)
      : super(TonightEventsFromVenuesState.initial()) {
    on<_EventsFetched>(_onEventsFetched);
    on<_NextPageEventsFetched>(
      _onNextPageEventsFetched,
      transformer: throttleDroppable(),
    );
    on<_EventsRefreshed>(_onEventsRefreshed);
    on<_MenuFiltersApplied>(_onMenuFiltersApplied);
    on<_MenuFilterRemoved>(_onMenuFilterRemoved);
    on<_EventVoucherUsed>(_onEventVoucherUsed);
  }

  FutureOr<void> _onEventsFetched(
    _EventsFetched event,
    Emitter<TonightEventsFromVenuesState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    final filters = event.userLocation.fold(
      () => state.eventFilters,
      (location) => state.eventFilters.copyWith(
        maxDistanceFilter: MaxDistanceFilter.empty().copyWith(
          userLocation: some(location),
          enabled: true,
        ),
      ),
    );

    emit(state.copyWith(eventFilters: filters));

    final result = await _dashboardAggregator
        .fetchTonightEventsOrNearestEventStartDateTime(
      filters: filters,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getEventsStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (success) => success.fold(
        (events) => emit(
          state.copyWith(
            getEventsStatus: CubitStatus.success,
            events: events,
            hasReachedMax: events.length != _pageSize,
          ),
        ),
        (dateTime) => emit(
          state.copyWith(
            getEventsStatus: CubitStatus.success,
            nearestEventStartDateTime: some(dateTime),
            events: [],
          ),
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageEventsFetched(
    _NextPageEventsFetched event,
    Emitter<TonightEventsFromVenuesState> emit,
  ) async {
    if (state.hasReachedMax || state.events.isEmpty) return;

    emit(state.copyWith(nextPageStatus: CubitStatus.loading));

    final result = await _dashboardAggregator.fetchTonightEventsFromVenues(
      filters: state.eventFilters,
      pageSize: _pageSize,
      offset: state.events.length,
    );

    result.fold(
      (failure) => emit(state.copyWith(nextPageStatus: CubitStatus.failure)),
      (events) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          events: [...state.events, ...events],
          hasReachedMax: events.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onEventsRefreshed(
    _EventsRefreshed event,
    Emitter<TonightEventsFromVenuesState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    final result = await _dashboardAggregator
        .fetchTonightEventsOrNearestEventStartDateTime(
      filters: state.eventFilters,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getEventsStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (success) => success.fold(
        (events) => emit(
          state.copyWith(
            getEventsStatus: CubitStatus.success,
            events: events,
            hasReachedMax: events.length != _pageSize,
            nearestEventStartDateTime: none(),
          ),
        ),
        (dateTime) => emit(
          state.copyWith(
            getEventsStatus: CubitStatus.success,
            nearestEventStartDateTime: some(dateTime),
            events: [],
          ),
        ),
      ),
    );
  }

  FutureOr<void> _onMenuFiltersApplied(
    _MenuFiltersApplied event,
    Emitter<TonightEventsFromVenuesState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    final filters = state.eventFilters.copyWith(
      allowedOutfitsFilter: event.filters.allowedOutfitsFilter,
      musicalGenresFilter: event.filters.musicalGenresFilter,
      priceRangeFilter: event.filters.priceRangeFilter,
      showOnlyConcertsFilter: event.filters.showOnlyConcertsFilter,
      minAgesFilter: event.filters.minAgesFilter,
      clubFilter: event.filters.clubFilter,
      maxDistanceFilter: event.filters.maxDistanceFilter,
    );

    emit(
      state.copyWith(
        appliedMenuFilters: event.appliedFilters,
        eventFilters: filters,
      ),
    );

    final result = await _dashboardAggregator.fetchTonightEventsFromVenues(
      filters: filters,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getEventsStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (events) => emit(
        state.copyWith(
          getEventsStatus: CubitStatus.success,
          events: events,
          hasReachedMax: events.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onMenuFilterRemoved(
    _MenuFilterRemoved event,
    Emitter<TonightEventsFromVenuesState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    switch (event.filter) {
      case MenuEventFilter.dressCode:
        _resetAllowedOutfitsFilter(emit);
        break;
      case MenuEventFilter.music:
        _resetMusicalGenresFilter(emit);
        break;
      case MenuEventFilter.minAge:
        _resetMinAgesFilter(emit);
        break;
      case MenuEventFilter.price:
        _resetPriceFilter(emit);
        break;
      case MenuEventFilter.showOnlyConcerts:
        _resetIsConcertFilter(emit);
        break;
      case MenuEventFilter.showWholeWorld:
        _resetMaxDistanceFilter(emit);
        break;
    }

    final result = await _dashboardAggregator
        .fetchTonightEventsOrNearestEventStartDateTime(
      filters: state.eventFilters,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getEventsStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (success) => success.fold(
        (events) => emit(
          state.copyWith(
            getEventsStatus: CubitStatus.success,
            events: events,
            hasReachedMax: events.length != _pageSize,
            nearestEventStartDateTime: none(),
          ),
        ),
        (dateTime) => emit(
          state.copyWith(
            getEventsStatus: CubitStatus.success,
            nearestEventStartDateTime: some(dateTime),
            events: [],
          ),
        ),
      ),
    );
  }

  FutureOr<void> _onEventVoucherUsed(
    _EventVoucherUsed event,
    Emitter<TonightEventsFromVenuesState> emit,
  ) async {
    emit(state.copyWith(useVoucherStatus: CubitStatus.loading));
    final result = await _dashboardAggregator.useVoucher(event.voucher.id);
    result.fold(
      (failure) {
        emit(state.copyWith(useVoucherStatus: CubitStatus.failure));
        _showSnackbar(emit, failure.message);
      },
      (_) {
        emit(
          state.copyWith(
            useVoucherStatus: CubitStatus.success,
            usedVoucher: some(event.voucher),
          ),
        );
        emit(state.copyWith(usedVoucher: none()));
      },
    );
  }

  _resetAllowedOutfitsFilter(Emitter<TonightEventsFromVenuesState> emit) {
    final currentFilters = state.eventFilters.copyWith(
      allowedOutfitsFilter: AllowedOutfitsFilter.empty(),
    );
    final appliedFilterCopy = {...state.appliedMenuFilters};
    appliedFilterCopy.remove(MenuEventFilter.dressCode);
    emit(
      state.copyWith(
        eventFilters: currentFilters,
        appliedMenuFilters: appliedFilterCopy,
      ),
    );
  }

  _resetPriceFilter(Emitter<TonightEventsFromVenuesState> emit) {
    final currentFilters = state.eventFilters.copyWith(
      priceRangeFilter: PriceRangeFilter.empty(),
    );
    final appliedFilterCopy = {...state.appliedMenuFilters};
    appliedFilterCopy.remove(MenuEventFilter.price);
    emit(
      state.copyWith(
        eventFilters: currentFilters,
        appliedMenuFilters: appliedFilterCopy,
      ),
    );
  }

  _resetMinAgesFilter(Emitter<TonightEventsFromVenuesState> emit) {
    final currentFilters = state.eventFilters.copyWith(
      minAgesFilter: MinAgesFilter.empty(),
    );
    final appliedFilterCopy = {...state.appliedMenuFilters};
    appliedFilterCopy.remove(MenuEventFilter.minAge);
    emit(
      state.copyWith(
        eventFilters: currentFilters,
        appliedMenuFilters: appliedFilterCopy,
      ),
    );
  }

  _resetMusicalGenresFilter(Emitter<TonightEventsFromVenuesState> emit) {
    final currentFilters = state.eventFilters.copyWith(
      musicalGenresFilter: MusicalGenresFilter.empty(),
    );
    final appliedFilterCopy = {...state.appliedMenuFilters};
    appliedFilterCopy.remove(MenuEventFilter.music);
    emit(
      state.copyWith(
        eventFilters: currentFilters,
        appliedMenuFilters: appliedFilterCopy,
      ),
    );
  }

  _resetIsConcertFilter(Emitter<TonightEventsFromVenuesState> emit) {
    final currentFilters = state.eventFilters.copyWith(
      showOnlyConcertsFilter: ShowOnlyConcertsFilter.empty(),
    );
    final appliedFilterCopy = {...state.appliedMenuFilters};
    appliedFilterCopy.remove(MenuEventFilter.showOnlyConcerts);
    emit(
      state.copyWith(
        eventFilters: currentFilters,
        appliedMenuFilters: appliedFilterCopy,
      ),
    );
  }

  _resetMaxDistanceFilter(Emitter<TonightEventsFromVenuesState> emit) {
    final maxDistanceFilter = state.eventFilters.maxDistanceFilter;
    final currentFilters = state.eventFilters.copyWith(
      maxDistanceFilter: maxDistanceFilter.copyWith(
        enabled: maxDistanceFilter.userLocation.isSome(),
      ),
    );
    final appliedFilterCopy = {...state.appliedMenuFilters}
      ..remove(MenuEventFilter.showWholeWorld);
    emit(
      state.copyWith(
        eventFilters: currentFilters,
        appliedMenuFilters: appliedFilterCopy,
      ),
    );
  }

  _showSnackbar(
    Emitter<TonightEventsFromVenuesState> emit,
    String message,
  ) {
    emit(state.copyWith(errorMessage: some(message)));
    emit(state.copyWith(errorMessage: none()));
  }
}

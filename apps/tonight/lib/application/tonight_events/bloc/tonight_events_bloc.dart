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
import 'package:tonight/application/events/event_filters/menu_event_filter.dart';
import 'package:tonight/application/tonight_events/aggregator/tonight_events_aggregator.dart';
import 'package:tonight/application/tonight_events/aggregator/tonight_events_failure.dart';
import 'package:tonight/application/tonight_events/models/tonight_event_model.dart';

part 'tonight_events_bloc.freezed.dart';
part 'tonight_events_event.dart';
part 'tonight_events_state.dart';

const _pageSize = 15;

class TonightEventsBloc extends Bloc<TonightEventsEvent, TonightEventsState> {
  final TonightEventsAggregator _tonightEventsAggregator;

  TonightEventsBloc(this._tonightEventsAggregator)
      : super(TonightEventsState.initial()) {
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
    Emitter<TonightEventsState> emit,
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

    final result = await _tonightEventsAggregator.fetchTonightEvents(
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

  FutureOr<void> _onNextPageEventsFetched(
    _NextPageEventsFetched event,
    Emitter<TonightEventsState> emit,
  ) async {
    if (state.hasReachedMax || state.events.isEmpty) return;

    emit(state.copyWith(nextPageStatus: CubitStatus.loading));

    final result = await _tonightEventsAggregator.fetchTonightEvents(
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
    Emitter<TonightEventsState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    final result = await _tonightEventsAggregator.fetchTonightEvents(
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
      (events) => emit(
        state.copyWith(
          getEventsStatus: CubitStatus.success,
          events: events,
          hasReachedMax: events.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onMenuFiltersApplied(
    _MenuFiltersApplied event,
    Emitter<TonightEventsState> emit,
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

    final result = await _tonightEventsAggregator.fetchTonightEvents(
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
    Emitter<TonightEventsState> emit,
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

    final result = await _tonightEventsAggregator.fetchTonightEvents(
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
      (events) => emit(
        state.copyWith(
          getEventsStatus: CubitStatus.success,
          events: events,
          hasReachedMax: events.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onEventVoucherUsed(
    _EventVoucherUsed event,
    Emitter<TonightEventsState> emit,
  ) async {
    emit(state.copyWith(useVoucherStatus: CubitStatus.loading));
    final result = await _tonightEventsAggregator.useVoucher(event.eventId);
    result.fold(
      (failure) {
        emit(state.copyWith(useVoucherStatus: CubitStatus.failure));
        _showSnackbar(emit, failure.message);
      },
      (_) => emit(state.copyWith(useVoucherStatus: CubitStatus.success)),
    );
  }

  _resetAllowedOutfitsFilter(Emitter<TonightEventsState> emit) {
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

  _resetPriceFilter(Emitter<TonightEventsState> emit) {
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

  _resetMinAgesFilter(Emitter<TonightEventsState> emit) {
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

  _resetMusicalGenresFilter(Emitter<TonightEventsState> emit) {
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

  _resetIsConcertFilter(Emitter<TonightEventsState> emit) {
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

  _resetMaxDistanceFilter(Emitter<TonightEventsState> emit) {
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
    Emitter<TonightEventsState> emit,
    String message,
  ) {
    emit(state.copyWith(errorMessage: some(message)));
    emit(state.copyWith(errorMessage: none()));
  }
}

import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/application/events/event_filters/menu_event_filter.dart';

part 'events_bloc.freezed.dart';
part 'events_event.dart';
part 'events_state.dart';

const _pageSize = 15;

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final CommonEventFacade _eventFacade;

  EventsBloc(this._eventFacade) : super(EventsState.initial()) {
    on<_EventsFetched>(_onEventsFetched);
    on<_PhraseFilterApplied>(_onPhraseFilterApplied);
    on<_MenuFiltersApplied>(_onMenuFiltersApplied);
    on<_MenuFilterRemoved>(_onMenuFilterRemoved);
    on<_DateFilterApplied>(_onDateFilterApplied);
    on<_CityFilterApplied>(_onCityFilterApplied);
    on<_EventsRefreshed>(_onEventsRefreshed);
    on<_NextPageEventsFetched>(
      _onNextPageEventsFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onEventsFetched(
    _EventsFetched event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    var cityName = '';

    if (event.userLocation.isSome()) {
      final location = event.userLocation.getOrCrash();
      cityName = await location.getCityName();
    }

    final filters = event.userLocation.fold(
      () => EventFilters.empty(),
      (location) => EventFilters.empty().copyWith(
        maxDistanceFilter: MaxDistanceFilter.empty().copyWith(
          userLocation: some(location),
          enabled: true,
        ),
        cityFilter: CityFilter.empty().copyWith(
          cityName: cityName,
        ),
      ),
    );

    emit(state.copyWith(eventFilters: filters));

    final result = await _eventFacade.getEvents(
      filters,
      state.sortModel,
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

  FutureOr<void> _onPhraseFilterApplied(
    _PhraseFilterApplied event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    final filters = state.eventFilters.copyWith(
      phraseFilter: PhraseFilter(phrase: event.phrase),
    );

    emit(state.copyWith(eventFilters: filters));

    final result = await _eventFacade.getEvents(
      filters,
      state.sortModel,
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
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    final filters = state.eventFilters.copyWith(
      allowedOutfitsFilter: event.filters.allowedOutfitsFilter,
      musicalGenresFilter: event.filters.musicalGenresFilter,
      priceRangeFilter: event.filters.priceRangeFilter,
      showOnlyConcertsFilter: event.filters.showOnlyConcertsFilter,
      minAgesFilter: event.filters.minAgesFilter,
      clubFilter: event.filters.clubFilter,
    );

    emit(
      state.copyWith(
        appliedMenuFilters: event.appliedFilters,
        eventFilters: filters,
      ),
    );

    final result = await _eventFacade.getEvents(
      filters,
      state.sortModel,
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
    Emitter<EventsState> emit,
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
        break;
    }

    final result = await _eventFacade.getEvents(
      state.eventFilters,
      state.sortModel,
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

  FutureOr<void> _onDateFilterApplied(
    _DateFilterApplied event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    final filters = state.eventFilters.copyWith(
      dateRangeFilter: event.filter,
    );

    emit(state.copyWith(eventFilters: filters));

    final result = await _eventFacade.getEvents(
      filters,
      state.sortModel,
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

  FutureOr<void> _onCityFilterApplied(
    _CityFilterApplied event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    final filters = state.eventFilters.copyWith(
      cityFilter: event.filter,
      maxDistanceFilter: state.eventFilters.maxDistanceFilter.copyWith(
        enabled: false,
      ),
    );

    emit(state.copyWith(eventFilters: filters));

    final result = await _eventFacade.getEvents(
      filters,
      state.sortModel,
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

  FutureOr<void> _onEventsRefreshed(
    _EventsRefreshed event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    final result = await _eventFacade.getEvents(
      state.eventFilters,
      state.sortModel,
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
    Emitter<EventsState> emit,
  ) async {
    if (state.hasReachedMax || state.events.isEmpty) return;

    emit(state.copyWith(nextPageStatus: CubitStatus.loading));

    final result = await _eventFacade.getEvents(
      state.eventFilters,
      state.sortModel,
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

  _resetAllowedOutfitsFilter(Emitter<EventsState> emit) {
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

  _resetPriceFilter(Emitter<EventsState> emit) {
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

  _resetMinAgesFilter(Emitter<EventsState> emit) {
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

  _resetMusicalGenresFilter(Emitter<EventsState> emit) {
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

  _resetIsConcertFilter(Emitter<EventsState> emit) {
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
}

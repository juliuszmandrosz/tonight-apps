import 'dart:async';

import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'clubs_bloc.freezed.dart';
part 'clubs_event.dart';
part 'clubs_state.dart';

const _pageSize = 15;

class ClubsBloc extends Bloc<ClubsEvent, ClubsState> {
  final UserClubFacade _clubFacade;

  ClubsBloc(this._clubFacade) : super(ClubsState.initial()) {
    on<_ClubsFetched>(_onClubsFetched);
    on<_QueryChanged>(_onQueryChanged);
    on<_CityFilterApplied>(_onCityFilterApplied);
    on<_ClubsRefreshed>(_onClubsRefreshed);
    on<_NextPageClubsFetched>(
      _onNextPageClubsFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onClubsFetched(
    _ClubsFetched event,
    Emitter<ClubsState> emit,
  ) async {
    emit(state.copyWith(getClubsStatus: CubitStatus.loading));

    final filters = await _getClubFiltersOnEventsFetched(event);

    emit(state.copyWith(clubFilters: filters));

    final result = await _clubFacade.getClubs(
      filters,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getClubsStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (clubs) => emit(
        state.copyWith(
          getClubsStatus: CubitStatus.success,
          clubs: clubs,
          hasReachedMax: clubs.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onQueryChanged(
    _QueryChanged event,
    Emitter<ClubsState> emit,
  ) async {
    emit(state.copyWith(getClubsStatus: CubitStatus.loading));

    final filters = state.clubFilters.copyWith(
      phraseFilter: PhraseFilter(phrase: event.query),
    );

    emit(state.copyWith(clubFilters: filters));

    final result = await _clubFacade.getClubs(
      filters,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getClubsStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (clubs) => emit(
        state.copyWith(
          getClubsStatus: CubitStatus.success,
          clubs: clubs,
          hasReachedMax: clubs.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onCityFilterApplied(
    _CityFilterApplied event,
    Emitter<ClubsState> emit,
  ) async {
    emit(state.copyWith(getClubsStatus: CubitStatus.loading));

    final filters = state.clubFilters.copyWith(
      cityFilter: event.filter,
      maxDistanceFilter: state.clubFilters.maxDistanceFilter.copyWith(
        enabled: false,
      ),
    );

    emit(state.copyWith(clubFilters: filters));

    final result = await _clubFacade.getClubs(
      filters,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getClubsStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (clubs) => emit(
        state.copyWith(
          getClubsStatus: CubitStatus.success,
          clubs: clubs,
          hasReachedMax: clubs.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onClubsRefreshed(
    _ClubsRefreshed event,
    Emitter<ClubsState> emit,
  ) async {
    emit(state.copyWith(getClubsStatus: CubitStatus.loading));

    final result = await _clubFacade.getClubs(
      state.clubFilters,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getClubsStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (clubs) => emit(
        state.copyWith(
          getClubsStatus: CubitStatus.success,
          clubs: clubs,
          hasReachedMax: clubs.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageClubsFetched(
      event, Emitter<ClubsState> emit) async {
    if (state.hasReachedMax || state.clubs.isEmpty) return;

    emit(state.copyWith(nextPageStatus: CubitStatus.loading));

    final result = await _clubFacade.getClubs(
      state.clubFilters,
      pageSize: _pageSize,
      offset: state.clubs.length,
    );

    result.fold(
      (failure) => emit(state.copyWith(nextPageStatus: CubitStatus.failure)),
      (clubs) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          clubs: [...state.clubs, ...clubs],
          hasReachedMax: clubs.length != _pageSize,
        ),
      ),
    );
  }

  Future<ClubFilters> _getClubFiltersOnEventsFetched(
    _ClubsFetched event,
  ) async {
    if (state.clubFilters != ClubFilters.empty()) {
      return state.clubFilters.copyWith(phraseFilter: event.phraseFilter);
    }

    var cityName = '';
    if (event.userLocation.isSome()) {
      final location = event.userLocation.getOrCrash();
      cityName = await location.getCityName();
    }

    return event.userLocation.fold(
      () => ClubFilters.empty().copyWith(phraseFilter: event.phraseFilter),
      (location) {
        return ClubFilters.empty().copyWith(
          phraseFilter: event.phraseFilter,
          maxDistanceFilter: MaxDistanceFilter.empty().copyWith(
            userLocation: some(location),
            enabled: true,
          ),
          cityFilter: CityFilter.empty().copyWith(
            cityName: cityName,
          ),
        );
      },
    );
  }
}

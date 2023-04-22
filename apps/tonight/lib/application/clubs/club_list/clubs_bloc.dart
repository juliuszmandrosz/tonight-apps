import 'dart:async';

import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'clubs_bloc.freezed.dart';
part 'clubs_event.dart';
part 'clubs_state.dart';

const _pageSize = 15;

class ClubsBloc extends Bloc<ClubsEvent, ClubsState> {
  final UserClubFacade _clubFacade;

  ClubsBloc(this._clubFacade) : super(ClubsState.initial()) {
    on<_ClubsFetched>(_onClubsFetched);
    on<_PhraseFilterApplied>(_onPhraseFilterApplied);
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

    var cityName = '';

    if (event.userLocation.isSome()) {
      final location = event.userLocation.getOrCrash();
      final placemarks = await placemarkFromCoordinates(
        location.latitude,
        location.longitude,
      );
      cityName = placemarks.first.locality ?? '';
    }

    final filters = event.userLocation.fold(
      () => ClubFilters.empty(),
      (location) => ClubFilters.empty().copyWith(
        maxDistanceFilter: MaxDistanceFilter.empty().copyWith(
          userLocation: some(location),
        ),
        cityFilter: CityFilter.empty().copyWith(
          cityName: cityName,
        ),
      ),
    );

    emit(state.copyWith(clubFilters: filters));

    final result = await _clubFacade.getClubs(
      filters,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(state.copyWith(getClubsStatus: CubitStatus.failure)),
      (clubs) => emit(
        state.copyWith(
          getClubsStatus: CubitStatus.success,
          clubs: clubs,
          hasReachedMax: clubs.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onPhraseFilterApplied(
    _PhraseFilterApplied event,
    Emitter<ClubsState> emit,
  ) async {
    emit(state.copyWith(getClubsStatus: CubitStatus.loading));

    final filters = state.clubFilters.copyWith(
      phraseFilter: PhraseFilter(phrase: event.phrase),
    );

    emit(state.copyWith(clubFilters: filters));

    final result = await _clubFacade.getClubs(
      filters,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(state.copyWith(getClubsStatus: CubitStatus.failure)),
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
      (failure) => emit(state.copyWith(getClubsStatus: CubitStatus.failure)),
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
      (failure) => emit(state.copyWith(getClubsStatus: CubitStatus.failure)),
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
}

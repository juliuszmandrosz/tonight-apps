import 'package:clubs/domain/club/club_entity.dart';
import 'package:clubs/domain/club/user_club_facade.dart';
import 'package:clubs/infrastructure/filters/club_filters_entity.dart';
import 'package:clubs/infrastructure/filters/filter/max_distance_filter.dart';
import 'package:clubs/infrastructure/filters/filter/phrase_filter.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'select_club_cubit.freezed.dart';
part 'select_club_state.dart';

const _pageSize = 20;

class SelectClubCubit extends Cubit<SelectClubState> {
  final UserClubFacade _clubFacade;

  SelectClubCubit(this._clubFacade) : super(SelectClubState.initial());

  initState(LatLng? userLocation) {
    emit(
      state.copyWith(
        userLocation: userLocation != null ? some(userLocation) : none(),
      ),
    );
  }

  Future<void> fetchClubs() async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));
    final filters = _getClubFilters();
    final result = await _clubFacade.getClubs(filters, pageSize: _pageSize);
    result.fold(
      (_) => emit(state.copyWith(initialStatus: CubitStatus.failure)),
      (clubs) => emit(
        state.copyWith(
          clubs: clubs,
          hasReachedMax: clubs.length < _pageSize,
          initialStatus: CubitStatus.success,
        ),
      ),
    );
  }

  Future<void> fetchNextClubsPage(LatLng? userLocation) async {
    if (state.hasReachedMax) return;
    emit(state.copyWith(fetchNextPageStatus: CubitStatus.loading));
    final filters = _getClubFilters();
    final result = await _clubFacade.getClubs(
      filters,
      pageSize: _pageSize,
      offset: state.clubs.length,
    );
    result.fold(
      (_) => emit(state.copyWith(fetchNextPageStatus: CubitStatus.failure)),
      (clubs) => emit(
        state.copyWith(
          clubs: [...state.clubs, ...clubs],
          hasReachedMax: clubs.length < _pageSize,
          fetchNextPageStatus: CubitStatus.success,
        ),
      ),
    );
  }

  void selectClub(Club club) {
    emit(state.copyWith(selectedClub: some(club)));
  }

  Future<void> filterClubs(String phrase) async {
    final filters = _getClubFilters().copyWith(
      phraseFilter: PhraseFilter(phrase: phrase),
    );
    emit(state.copyWith(filterClubsStatus: CubitStatus.loading));
    final result = await _clubFacade.getClubs(filters, pageSize: _pageSize);
    result.fold(
      (_) => emit(state.copyWith(filterClubsStatus: CubitStatus.failure)),
      (clubs) => emit(
        state.copyWith(
          clubs: clubs,
          hasReachedMax: clubs.length < _pageSize,
          filterClubsStatus: CubitStatus.success,
        ),
      ),
    );
  }

  ClubFilters _getClubFilters() {
    if (state.userLocation.isNone()) {
      return ClubFilters.empty();
    }
    final userLocation = state.userLocation.getOrCrash();
    return ClubFilters.empty().copyWith(
      maxDistanceFilter: MaxDistanceFilter(
        enabled: true,
        userLocation: {
          latitude: userLocation.latitude,
          longitude: userLocation.longitude,
        },
        maxDistance: 50,
      ),
    );
  }
}

import 'dart:async';

import 'package:clubs/domain/club/user_club_facade.dart';
import 'package:clubs/infrastructure/filters/club_filters_entity.dart';
import 'package:clubs/infrastructure/filters/filter/phrase_filter.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/add_wall_photo/wall_photo_venue_model.dart';
import 'package:translations/translations.dart';

part 'select_club_bloc.freezed.dart';
part 'select_club_event.dart';
part 'select_club_state.dart';

const _pageSize = 20;

class SelectClubBloc extends Bloc<SelectClubEvent, SelectClubState> {
  final UserClubFacade _clubFacade;

  SelectClubBloc(this._clubFacade) : super(SelectClubState.initial()) {
    on<_VenuesFetched>(_onVenuesFetched);
    on<_NextPageVenuesFetched>(
      _onNextVenuesPageFetched,
      transformer: throttleDroppable(),
    );
    on<_VenueSelected>(_onVenueSelected);
    on<_VenuesFiltered>(_onVenuesFiltered);
  }

  FutureOr<void> _onVenuesFetched(
    _VenuesFetched event,
    Emitter<SelectClubState> emit,
  ) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));
    final result = await _clubFacade.getClubs(
      ClubFilters.empty(),
      pageSize: _pageSize,
    );
    result.fold(
      (_) => emit(state.copyWith(initialStatus: CubitStatus.failure)),
      (clubs) => emit(
        state.copyWith(
          venues: clubs.map((c) => WallPhotoVenue.fromClub(c)).toList(),
          hasReachedMax: clubs.length < _pageSize,
          initialStatus: CubitStatus.success,
        ),
      ),
    );
  }

  FutureOr<void> _onNextVenuesPageFetched(
    _NextPageVenuesFetched event,
    Emitter<SelectClubState> emit,
  ) async {
    if (state.hasReachedMax) return;
    emit(state.copyWith(fetchNextPageStatus: CubitStatus.loading));
    final result = await _clubFacade.getClubs(
      ClubFilters.empty(),
      pageSize: _pageSize,
      offset: state.venues.length,
    );
    result.fold(
      (_) => emit(state.copyWith(fetchNextPageStatus: CubitStatus.failure)),
      (clubs) => emit(
        state.copyWith(
          venues: [
            ...state.venues,
            ...clubs.map((c) => WallPhotoVenue.fromClub(c))
          ],
          hasReachedMax: clubs.length < _pageSize,
          fetchNextPageStatus: CubitStatus.success,
        ),
      ),
    );
  }

  FutureOr<void> _onVenueSelected(
    _VenueSelected event,
    Emitter<SelectClubState> emit,
  ) {
    emit(state.copyWith(selectedVenue: some(event.venue)));
  }

  FutureOr<void> _onVenuesFiltered(
    _VenuesFiltered event,
    Emitter<SelectClubState> emit,
  ) async {
    emit(state.copyWith(filterVenuesStatus: CubitStatus.loading));
    final filters = ClubFilters.empty().copyWith(
      phraseFilter: PhraseFilter(phrase: event.phrase),
    );
    final result = await _clubFacade.getClubs(filters, pageSize: _pageSize);
    result.fold(
      (_) {
        emit(
          state.copyWith(
            filterVenuesStatus: CubitStatus.failure,
            searchPhrase: event.phrase,
          ),
        );
        _showSnackbarMessage(
          message: S().serverError,
          emit: emit,
        );
      },
      (clubs) => emit(
        state.copyWith(
          venues: clubs.map((c) => WallPhotoVenue.fromClub(c)).toList(),
          hasReachedMax: clubs.length < _pageSize,
          filterVenuesStatus: CubitStatus.success,
          searchPhrase: event.phrase,
        ),
      ),
    );
  }

  _showSnackbarMessage({
    required String message,
    required Emitter<SelectClubState> emit,
  }) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}

import 'dart:async';

import 'package:clubs/domain/club/club_entity.dart';
import 'package:clubs/domain/club/user_club_facade.dart';
import 'package:clubs/infrastructure/filters/club_filters_entity.dart';
import 'package:clubs/infrastructure/filters/filter/phrase_filter.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'select_club_bloc.freezed.dart';
part 'select_club_event.dart';
part 'select_club_state.dart';

const _pageSize = 20;

class SelectClubBloc extends Bloc<SelectClubEvent, SelectClubState> {
  final UserClubFacade _clubFacade;

  SelectClubBloc(this._clubFacade) : super(SelectClubState.initial()) {
    on<_ClubsFetched>(_onClubsFetched);
    on<_NextPageClubsFetched>(
      _onNextClubsPageFetched,
      transformer: throttleDroppable(),
    );
    on<_ClubSelected>(_onClubSelected);
    on<_ClubsFiltered>(_onClubsFiltered);
  }

  FutureOr<void> _onClubsFetched(
    _ClubsFetched event,
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
          clubs: clubs,
          hasReachedMax: clubs.length < _pageSize,
          initialStatus: CubitStatus.success,
        ),
      ),
    );
  }

  FutureOr<void> _onNextClubsPageFetched(
    _NextPageClubsFetched event,
    Emitter<SelectClubState> emit,
  ) async {
    if (state.hasReachedMax) return;
    emit(state.copyWith(fetchNextPageStatus: CubitStatus.loading));
    final result = await _clubFacade.getClubs(
      ClubFilters.empty(),
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

  FutureOr<void> _onClubSelected(
    _ClubSelected event,
    Emitter<SelectClubState> emit,
  ) {
    emit(state.copyWith(selectedClub: some(event.club)));
  }

  FutureOr<void> _onClubsFiltered(
    _ClubsFiltered event,
    Emitter<SelectClubState> emit,
  ) async {
    emit(state.copyWith(filterClubsStatus: CubitStatus.loading));
    final filters = ClubFilters.empty().copyWith(
      phraseFilter: PhraseFilter(phrase: event.phrase),
    );
    final result = await _clubFacade.getClubs(filters, pageSize: _pageSize);
    result.fold(
      (_) {
        emit(
          state.copyWith(
            filterClubsStatus: CubitStatus.failure,
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
          clubs: clubs,
          hasReachedMax: clubs.length < _pageSize,
          filterClubsStatus: CubitStatus.success,
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

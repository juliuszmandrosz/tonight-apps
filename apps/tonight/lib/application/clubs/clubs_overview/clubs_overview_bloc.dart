import 'dart:async';

import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clubs_overview_bloc.freezed.dart';
part 'clubs_overview_event.dart';
part 'clubs_overview_state.dart';

const _pageSize = 20;

class ClubsOverviewBloc extends Bloc<ClubsOverviewEvent, ClubsOverviewState> {
  final UserClubFacade _clubFacade;

  ClubsOverviewBloc(this._clubFacade) : super(ClubsOverviewState.initial()) {
    on<_NextPageClubsFetched>(
      _onNextPageClubsFetched,
      transformer: throttleDroppable(),
    );

    on<_ClubsFetched>(_onClubsFetched);
  }

  Future<void> _onClubsFetched(
      _ClubsFetched event, Emitter<ClubsOverviewState> emit) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess =
        await _clubFacade.getClubs(event.clubFilter, pageSize: _pageSize);

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          status: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (clubs) => emit(
        state.copyWith(
          status: CubitStatus.success,
          clubs: clubs,
          hasReachedMax: clubs.length != _pageSize,
          clubFilter: event.clubFilter,
        ),
      ),
    );
  }

  Future<void> _onNextPageClubsFetched(
      _NextPageClubsFetched event, Emitter<ClubsOverviewState> emit) async {
    if (state.hasReachedMax) return;

    final failureOrSuccess = await _clubFacade.getClubs(state.clubFilter,
        offset: state.clubs.length, pageSize: _pageSize);

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          status: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (clubs) => emit(
        state.copyWith(
          status: CubitStatus.success,
          clubs: List.of(state.clubs)..addAll(clubs),
          hasReachedMax: clubs.length != _pageSize,
        ),
      ),
    );
  }
}

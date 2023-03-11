import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';

part 'clubs_overview_bloc.freezed.dart';
part 'clubs_overview_event.dart';
part 'clubs_overview_state.dart';

const pageSize = 20;

const throttleDuration = Duration(milliseconds: 500);

class ClubsOverviewBloc extends Bloc<ClubsOverviewEvent, ClubsOverviewState> {
  final UserClubFacade _clubFacade;

  ClubsOverviewBloc(this._clubFacade) : super(ClubsOverviewState.initial()) {
    on<_NextPageClubsFetched>(
      _onNextPageClubsFetched,
      transformer: throttleDroppable(throttleDuration),
    );

    on<_ClubsFetched>(_onClubsFetched);
  }

  Future<void> _onClubsFetched(
      _ClubsFetched event, Emitter<ClubsOverviewState> emit) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess =
        await _clubFacade.getClubs(event.clubFilter, pageSize: pageSize);

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
          hasReachedMax: clubs.length != pageSize,
          clubFilter: event.clubFilter,
        ),
      ),
    );
  }

  Future<void> _onNextPageClubsFetched(
      _NextPageClubsFetched event, Emitter<ClubsOverviewState> emit) async {
    if (state.hasReachedMax) return;

    final failureOrSuccess = await _clubFacade.getClubs(state.clubFilter,
        offset: state.clubs.length, pageSize: pageSize);

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
          hasReachedMax: clubs.length != pageSize,
        ),
      ),
    );
  }
}

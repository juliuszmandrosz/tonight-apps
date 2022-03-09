import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/core/cubit_status.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/domain/clubs/failures/club_failure.dart';
import 'package:raver/domain/clubs/filters/club_filter.dart';
import 'package:rxdart/rxdart.dart';

part 'clubs_overview_bloc.freezed.dart';

part 'clubs_overview_event.dart';

part 'clubs_overview_state.dart';

const pageSize = 10;

const throttleDuration = Duration(milliseconds: 500);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.debounceTime(duration), mapper);
  };
}

class ClubsOverviewBloc extends Bloc<ClubsOverviewEvent, ClubsOverviewState> {
  final ClubFacade _clubFacade;

  ClubsOverviewBloc(this._clubFacade) : super(ClubsOverviewState.initial()) {
    on<_ClubsFetched>(_onClubsFetched,
        transformer: throttleDroppable(throttleDuration));
  }

  Future<void> _onClubsFetched(
      _ClubsFetched event, Emitter<ClubsOverviewState> emit) async {
    if (state.hasReachedMax) {
      return;
    }

    if (state.clubs.isEmpty) {
      emit(state.copyWith(status: CubitStatus.loading));
    }

    Either<ClubFailure, List<Club>> failureOrSuccess = await _clubFacade
        .getClubs(event.clubFilter, offset: state.clubs.length, pageSize: 10);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (clubs) => emit(
        clubs.isEmpty
            ? state.copyWith(hasReachedMax: true)
            : state.copyWith(
                status: CubitStatus.success,
                clubs: List.of(state.clubs)..addAll(clubs),
                hasReachedMax: clubs.length != pageSize,
                clubFilter: event.clubFilter,
              ),
      ),
    );
  }
}

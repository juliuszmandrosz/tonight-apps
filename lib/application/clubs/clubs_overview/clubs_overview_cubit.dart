import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/domain/clubs/failures/club_failure.dart';
import 'package:raver/domain/clubs/filters/club_filter.dart';

part 'clubs_overview_cubit.freezed.dart';
part 'clubs_overview_state.dart';

class ClubsOverviewCubit extends Cubit<ClubsOverviewState> {
  final ClubFacade _clubFacade;

  ClubsOverviewCubit(this._clubFacade)
      : super(const ClubsOverviewState.initial());

  Future<void> getClubs(ClubFilter filters) async {
    emit(const ClubsOverviewState.loadInProgress());

    Either<ClubFailure, List<Club>> failureOrSuccess =
        await _clubFacade.getClubs(filters);

    failureOrSuccess.fold(
        (failure) => emit(ClubsOverviewState.loadFailure(failure)),
        (clubs) => emit(ClubsOverviewState.loadSuccess(clubs)));
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:raver/domain/clubs/club_overview/club_failure.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_entity.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_facade.dart';
import 'package:raver/infrastructure/clubs/clubs_overview/filters/club_filter.dart';

part 'clubs_overview_cubit.freezed.dart';
part 'clubs_overview_state.dart';

@injectable
class ClubsOverviewCubit extends Cubit<ClubsOverviewState> {
  final ClubOverviewFacade _clubOverviewFacade;

  ClubsOverviewCubit(this._clubOverviewFacade)
      : super(const ClubsOverviewState.initial());

  Future<void> getClubs(ClubFilter filters) async {
    emit(const ClubsOverviewState.loadInProgress());

    Either<ClubFailure, List<ClubOverview>> failureOrSuccess =
        await _clubOverviewFacade.getClubs(filters);

    failureOrSuccess.fold(
        (failure) => emit(ClubsOverviewState.loadFailure(failure)),
        (clubs) => emit(ClubsOverviewState.loadSuccess(clubs)));
  }
}

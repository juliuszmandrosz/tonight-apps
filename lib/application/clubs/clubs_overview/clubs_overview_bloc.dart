import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:raver/domain/clubs/club_overview/club_failure.dart';
import 'package:raver/domain/clubs/club_overview/i_club_overview_repository.dart';

import 'package:raver/domain/clubs/club_overview/club_overview_entity.dart';
import 'package:raver/infrastructure/clubs/clubs_overview/filters/club_filter.dart';

part 'clubs_overview_event.dart';

part 'clubs_overview_state.dart';

part 'clubs_overview_bloc.freezed.dart';

@injectable
class ClubsOverviewBloc extends Bloc<ClubsOverviewEvent, ClubsOverviewState> {
  final IClubOverviewRepository _clubRepository;

  ClubsOverviewBloc(this._clubRepository) : super(const ClubsOverviewState.initial()) {
    on<OnClubPageOpened>(_onPageOpened);
    on<ClubsReceived>(_onClubsReceived);
  }

  Future<void> _onPageOpened(
      OnClubPageOpened event, Emitter<ClubsOverviewState> emit) async {
    emit(const ClubsOverviewState.loadInProgress());
    final result = await _clubRepository.getClubs(event.clubFilter);
    add(ClubsOverviewEvent.clubsReceived(result));

  }

  void _onClubsReceived(ClubsReceived event, Emitter<ClubsOverviewState> emit) async {
    event.failureOrClubs.fold((l) => emit(ClubsOverviewState.loadFailure(l)),
        (r) => emit(ClubsOverviewState.loadSuccess(r)));
  }
}

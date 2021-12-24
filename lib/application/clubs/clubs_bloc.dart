import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:raver/domain/clubs/club_failure.dart';
import 'package:raver/domain/clubs/i_club_repository.dart';

import 'package:raver/domain/clubs/club_entity.dart';

part 'clubs_event.dart';

part 'clubs_state.dart';

part 'clubs_bloc.freezed.dart';

@injectable
class ClubsBloc extends Bloc<ClubsEvent, ClubsState> {
  final IClubRepository _clubRepository;

  ClubsBloc(this._clubRepository) : super(const ClubsState.initial()) {
    on<OnClubPageOpened>(_onPageOpened);
    on<ClubsReceived>(_onClubsReceived);
  }

  late StreamSubscription<Either<ClubFailure, List<Club>>>
      _clubStreamSubscription;

  void _onPageOpened(OnClubPageOpened event, Emitter<ClubsState> emit) async {
    emit(const ClubsState.loadInProgress());
    await _clubStreamSubscription?.cancel();
    _clubStreamSubscription =
        _clubRepository.getClubs().listen((failureOrClubs) {
      add(ClubsEvent.clubsReceived(failureOrClubs));
    });
  }

  void _onClubsReceived(ClubsReceived event, Emitter<ClubsState> emit) async {
    event.failureOrClubs.fold(
        (l) => ClubsState.loadFailure(l), (r) => ClubsState.loadSuccess(r));
  }
}

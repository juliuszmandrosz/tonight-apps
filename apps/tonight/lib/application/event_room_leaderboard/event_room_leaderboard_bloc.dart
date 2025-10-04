import 'dart:async';
import 'dart:io';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_facade.dart';

part 'event_room_leaderboard_bloc.freezed.dart';
part 'event_room_leaderboard_event.dart';
part 'event_room_leaderboard_state.dart';

const _pageSize = 20;

class EventRoomLeaderboardBloc
    extends Bloc<EventRoomLeaderboardEvent, EventRoomLeaderboardState> {
  final ParticipantFacade _participantFacade;

  EventRoomLeaderboardBloc(this._participantFacade)
      : super(EventRoomLeaderboardState.initial()) {
    on<_Initialized>(
      _onInitialized,
      transformer: (events, mapper) => events
          .throttleTime(const Duration(milliseconds: 300))
          .exhaustMap(mapper),
    );
    on<_NextPageLeaderboardFetched>(
      _onNextPageLeaderboardFetched,
      transformer: throttleDroppable(),
    );
    on<_LeaderboardRefreshed>(_onLeaderboardRefreshed);
    on<_PermissionsRequested>(_onPermissionsRequested);
  }

  FutureOr<void> _onInitialized(
    _Initialized event,
    Emitter<EventRoomLeaderboardState> emit,
  ) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));
    final results = await Future.wait([
      _participantFacade.fetchCurrentUser(eventId: event.event.id),
      _participantFacade.fetchLeaderboard(
        eventId: event.event.id,
        pageSize: _pageSize,
      ),
    ]);

    if (results.whereType<Left>().isNotEmpty) {
      emit(state.copyWith(initialStatus: CubitStatus.failure));
      return;
    }

    var currentUser = results[0].getRightOrCrash() as Participant;
    final leaderboard = results[1].getRightOrCrash() as List<Participant>;

    final permissionGranted = await _permission.isGranted;

    if (!permissionGranted) {
      return emit(
        state.copyWith(
          hasReachedMax: leaderboard.length < _pageSize,
          event: some(event.event),
          initialStatus: CubitStatus.success,
          currentUser: some(currentUser),
          participants: leaderboard,
        ),
      );
    }

    if (currentUser.initialStepCount == 0) {
      final initialStepCount = await Pedometer.stepCountStream.first;
      currentUser = currentUser.copyWith(
        initialStepCount: initialStepCount.steps,
      );
      final updateParticipant = await _participantFacade.updateParticipant(
        roomId: event.event.id,
        participant: currentUser,
      );
      if (updateParticipant.isLeft()) {
        return emit(state.copyWith(initialStatus: CubitStatus.failure));
      }
    }

    emit(
      state.copyWith(
        hasReachedMax: leaderboard.length < _pageSize,
        event: some(event.event),
        initialStatus: CubitStatus.success,
        currentUser: some(currentUser),
        participants: leaderboard,
        permissionsGranted: true,
      ),
    );

    final now = DateTime.now();
    final isLiveEvent = event.event.eventStartDateTime.isBefore(now) &&
        event.event.eventEndDateTime.isAfter(now);
    if (!isLiveEvent) {
      return;
    }

    await emit.forEach(
      Pedometer.stepCountStream
          .throttleTime(const Duration(seconds: 10))
          .takeWhile((_) {
        final now = DateTime.now();
        final event = state.event.getOrCrash();
        final isLiveEvent = event.eventStartDateTime.isBefore(now) &&
            event.eventEndDateTime.isAfter(now);
        return isLiveEvent;
      }).asyncMap((event) async => await _onStepCount(event, emit)),
      onData: (stepCount) {
        final currentUser = state.currentUser.getOrCrash();
        return state.copyWith(
          currentUser: some(currentUser.copyWith(stepCount: stepCount)),
        );
      },
      onError: (error, stackTrace) => state.copyWith(
        initialStatus: CubitStatus.failure,
      ),
    );
  }

  FutureOr<void> _onLeaderboardRefreshed(
    _LeaderboardRefreshed event,
    Emitter<EventRoomLeaderboardState> emit,
  ) async {
    emit(state.copyWith(refreshLeaderboardStatus: CubitStatus.loading));
    final result = await _participantFacade.fetchLeaderboard(
      eventId: state.event.getOrCrash().id,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) =>
          emit(state.copyWith(refreshLeaderboardStatus: CubitStatus.failure)),
      (leaderboard) => emit(
        state.copyWith(
          refreshLeaderboardStatus: CubitStatus.success,
          participants: leaderboard,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageLeaderboardFetched(
    _NextPageLeaderboardFetched event,
    Emitter<EventRoomLeaderboardState> emit,
  ) async {
    if (state.hasReachedMax || state.participants.isEmpty) return;

    emit(state.copyWith(nextPageStatus: CubitStatus.loading));

    final result = await _participantFacade.fetchLeaderboard(
      eventId: state.event.getOrCrash().id,
      lastParticipant: state.participants.last,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(state.copyWith(nextPageStatus: CubitStatus.failure)),
      (leaderboard) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          participants: [...state.participants, ...leaderboard],
          hasReachedMax: leaderboard.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onPermissionsRequested(
    _PermissionsRequested event,
    Emitter<EventRoomLeaderboardState> emit,
  ) async {
    emit(state.copyWith(permissionsStatus: CubitStatus.loading));

    final currentPermission = await _permission.status;

    if (currentPermission.isGranted) {
      return emit(
        state.copyWith(
          permissionsStatus: CubitStatus.success,
          permissionsGranted: true,
        ),
      );
    }

    if (currentPermission.isPermanentlyDenied) {
      final settingsOpened = await openAppSettings();
      if (!settingsOpened) {
        return emit(state.copyWith(permissionsStatus: CubitStatus.failure));
      }
      final granted = await _permission.isGranted;
      return emit(
        state.copyWith(
          permissionsStatus: CubitStatus.success,
          permissionsGranted: granted,
        ),
      );
    }

    final permission = await _permission.request();
    return emit(
      state.copyWith(
        permissionsStatus: CubitStatus.success,
        permissionsGranted: permission.isGranted,
      ),
    );
  }

  Future<int> _onStepCount(
    StepCount event,
    Emitter<EventRoomLeaderboardState> emit,
  ) async {
    final currentUser = state.currentUser.getOrCrash();
    final stepCount = event.steps - currentUser.initialStepCount;
    await _participantFacade.updateParticipant(
      roomId: state.event.getOrCrash().id,
      participant: currentUser.copyWith(stepCount: stepCount),
    );
    return stepCount;
  }

  Permission get _permission =>
      Platform.isAndroid ? Permission.activityRecognition : Permission.sensors;
}

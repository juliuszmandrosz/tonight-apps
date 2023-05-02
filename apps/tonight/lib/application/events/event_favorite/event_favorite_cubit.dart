import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/raver_translations.dart';

part 'event_favorite_cubit.freezed.dart';

part 'event_favorite_state.dart';

class EventFavoriteCubit extends Cubit<EventFavoriteState> {
  final UserEventFacade _eventFacade;

  EventFavoriteCubit(this._eventFacade) : super(EventFavoriteState.initial());

  Future<void> getFavoriteEvents() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _eventFacade.getFavoriteEvents();

    failureOrSuccess.fold(
      (_) => _emitFetchFailure(),
      (favoriteEvents) => emit(
        state.copyWith(
          status: CubitStatus.success,
          favoriteEvents: favoriteEvents,
        ),
      ),
    );

    emit(state.copyWith(status: CubitStatus.success));
  }

  Future<void> toggleEventFavoriteStatus(Event event) async {
    emit(state.copyWith(isChangingFavoriteStatus: true));

    final favoriteEvents = state.favoriteEvents;
    final favoriteEventsCopy = [...favoriteEvents];

    final currentStatus = favoriteEventsCopy.contains(event);

    currentStatus
        ? favoriteEventsCopy.remove(event)
        : favoriteEventsCopy.add(event);

    emit(state.copyWith(favoriteEvents: favoriteEventsCopy));

    final failureOrSuccess =
        await _eventFacade.toggleEventFavoriteStatus(event.id);

    emit(state.copyWith(isChangingFavoriteStatus: false));

    failureOrSuccess.fold(
      (failure) => _emitToggleFailure(favoriteEvents, failure),
      (success) {},
    );
  }

  void _emitToggleFailure(
      List<Event> previousEvents, UserEventFailure failure) {
    emit(
      state.copyWith(
        snackbarMessage: some(failure.message),
        favoriteEvents: previousEvents,
      ),
    );

    emit(
      state.copyWith(snackbarMessage: none()),
    );
  }

  void _emitFetchFailure() {
    emit(
      state.copyWith(
        snackbarMessage: some(S().errorLoadingFavoriteEventsInfo),
        status: CubitStatus.failure,
      ),
    );
    emit(
      state.copyWith(snackbarMessage: none()),
    );
  }
}

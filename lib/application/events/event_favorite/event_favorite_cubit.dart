import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

part 'event_favorite_cubit.freezed.dart';
part 'event_favorite_state.dart';

class EventFavoriteCubit extends Cubit<EventFavoriteState> {
  final UserEventFacade _eventFacade;

  EventFavoriteCubit(this._eventFacade) : super(EventFavoriteState.initial());

  Future<void> getFavoriteEvents() async {
    // TODO - implement
    emit(state.copyWith(status: CubitStatus.success));
  }

  Future<void> toggleEventFavoriteStatus(Event event) async {
    emit(state.copyWith(
      isChangingFavoriteStatus: true,
    ));

    final favoriteEvents = state.favoriteEvents;
    final favoriteEventsCopy = [...favoriteEvents];

    final currentStatus = favoriteEventsCopy.contains(event);

    currentStatus
        ? favoriteEventsCopy.remove(event)
        : favoriteEventsCopy.add(event);

    emit(state.copyWith(
      favoriteEvents: favoriteEventsCopy,
    ));

    final failureOrSuccess =
        await _eventFacade.toggleEventFavoriteStatus(event.id);

    emit(state.copyWith(
      isChangingFavoriteStatus: false,
    ));

    failureOrSuccess.fold(
      (failure) {
        emit(
          state.copyWith(
            errorMessage: some(S().errorChangingEventStatus),
            status: CubitStatus.failure,
            favoriteEvents: favoriteEvents,
          ),
        );

        emit(
          state.copyWith(errorMessage: none()),
        );
      },
      (success) {},
    );
  }

  void _emitFetchFailure() {
    emit(
      state.copyWith(
        errorMessage: some(S().errorLoadingFavoriteEventsInfo),
        status: CubitStatus.failure,
      ),
    );
    emit(
      state.copyWith(errorMessage: none()),
    );
  }
}

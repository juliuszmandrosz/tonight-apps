import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/core/cubit_status.dart';
import 'package:raver/domain/events/event_facade.dart';
import 'package:raver/generated/l10n.dart';

part 'event_favorite_cubit.freezed.dart';
part 'event_favorite_state.dart';

class EventFavoriteCubit extends Cubit<EventFavoriteState> {
  final EventFacade _eventFacade;

  EventFavoriteCubit(this._eventFacade) : super(EventFavoriteState.initial());

  Future<void> getFavoriteEventIds() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _eventFacade.getFavoriteEventIds();

    failureOrSuccess.fold(
      (failure) {
        emit(
          state.copyWith(
            status: CubitStatus.failure,
            errorMessage: some(S().errorLoadingFavoriteEventsInfo),
          ),
        );

        emit(
          state.copyWith(errorMessage: none()),
        );
      },
      (favoriteEventIds) => emit(
        state.copyWith(
          status: CubitStatus.success,
          favoriteEventIds: favoriteEventIds,
        ),
      ),
    );
  }

  Future<void> toggleEventFavoriteStatus(String eventId) async {
    emit(state.copyWith(
      isChangingFavoriteStatus: true,
    ));

    final favoriteEvents = state.favoriteEventIds;
    final favoriteEventsCopy = [...state.favoriteEventIds];

    final currentStatus = favoriteEventsCopy.contains(eventId);

    currentStatus
        ? favoriteEventsCopy.remove(eventId)
        : favoriteEventsCopy.add(eventId);

    emit(state.copyWith(
      favoriteEventIds: favoriteEventsCopy,
    ));

    final failureOrSuccess =
        await _eventFacade.toggleEventFavoriteStatus(eventId);

    emit(state.copyWith(
      isChangingFavoriteStatus: false,
    ));

    failureOrSuccess.fold(
      (failure) {
        emit(
          state.copyWith(
            errorMessage: some(S().errorChangingEventStatus),
            status: CubitStatus.failure,
            favoriteEventIds: favoriteEvents,
          ),
        );

        emit(
          state.copyWith(errorMessage: none()),
        );
      },
      (success) {},
    );
  }
}

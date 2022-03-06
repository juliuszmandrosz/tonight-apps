import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/events/event_facade.dart';
import 'package:raver/domain/events/event_failure.dart';

part 'event_favorite_cubit.freezed.dart';
part 'event_favorite_state.dart';

class EventFavoriteCubit extends Cubit<EventFavoriteState> {
  final EventFacade _eventFacade;

  late StreamSubscription<Either<EventFailure, List<String>>>
      _favoriteEventsIdsSubscription;

  EventFavoriteCubit(this._eventFacade) : super(EventFavoriteState.initial());

  Future<void> getFavoriteEventIds() async {
    emit(
      state.copyWith(isLoading: true),
    );

    final failureOrSuccess = await _eventFacade.getFavoriteEventIds();

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          failureOption: some(failure),
        ),
      ),
      (favoriteEventIds) => emit(
        state.copyWith(
          isLoading: false,
          favoriteEventIds: favoriteEventIds,
        ),
      ),
    );
  }

  Future<void> toggleEventFavoriteStatus(String eventId) async {
    emit(state.copyWith(
      isChangingFavoriteStatus: true,
    ));

    final favoriteEventsCopy = [...state.favoriteEventIds];
    final favoriteEvents = state.favoriteEventIds;
    final currentStatus = favoriteEventsCopy.any((id) => id == eventId);

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
        emit(state.copyWith(
          failureOption: some(failure),
          favoriteEventIds: favoriteEvents,
        ));
      },
      (success) {},
    );

    emit(state.copyWith(
      failureOption: none(),
    ));
  }

  @override
  Future<void> close() {
    _favoriteEventsIdsSubscription.cancel();
    return super.close();
  }
}

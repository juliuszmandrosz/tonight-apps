import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_details_cubit.freezed.dart';
part 'event_details_state.dart';

class EventDetailsCubit extends Cubit<EventDetailsState> {
  final UserEventFacade _eventFacade;

  EventDetailsCubit({
    required UserEventFacade userEventFacade,
  })  : _eventFacade = userEventFacade,
        super(EventDetailsState.initial());

  Future<void> getEventById(String eventId) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _eventFacade.getEventById(eventId);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (event) => emit(
        state.copyWith(
          event: some(event),
          status: CubitStatus.success,
        ),
      ),
    );
  }

  void addEventToState(Event event) {
    emit(
      state.copyWith(
        event: some(event),
        status: CubitStatus.success,
      ),
    );
  }
}

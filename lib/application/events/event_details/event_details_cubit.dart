import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

part 'event_details_cubit.freezed.dart';
part 'event_details_state.dart';

class EventDetailsCubit extends Cubit<EventDetailsState> {
  final UserEventFacade _eventFacade;
  final EventTicketsCubit _eventTicketsCubit;

  EventDetailsCubit({
    required UserEventFacade userEventFacade,
    required EventTicketsCubit eventTicketsCubit,
  })  : _eventFacade = userEventFacade,
        _eventTicketsCubit = eventTicketsCubit,
        super(EventDetailsState.initial());

  Future<void> getEventById(String eventId) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _eventFacade.getEventById(eventId);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (event) {
        emit(state.copyWith(event: some(event)));
        _getEventTickets(event);
      },
    );
  }

  void addEventToState(Event event) {
    emit(
      state.copyWith(
        event: some(event),
        status: CubitStatus.loading,
      ),
    );
    _getEventTickets(event);
  }

  _getEventTickets(Event event) {
    _eventTicketsCubit.getEventTickets(clubId: event.clubId, eventId: event.id);
    _eventTicketsCubit.stream.listen((event) {
      if (event.status.isFailure()) {
        emit(state.copyWith(status: CubitStatus.failure));
      }

      if (event.status.isSuccess()) {
        emit(state.copyWith(status: CubitStatus.success));
      }
    });
  }
}

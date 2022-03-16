import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_events/domain/event_entity.dart';
import 'package:raver_events/domain/event_facade.dart';
import 'package:raver_events/domain/event_failure.dart';


part 'event_details_cubit.freezed.dart';
part 'event_details_state.dart';

class EventDetailsCubit extends Cubit<EventDetailsState> {
  final EventFacade _eventFacade;

  EventDetailsCubit(this._eventFacade)
      : super(const EventDetailsState.initial());

  Future<void> getEventById(String eventId) async {
    emit(const EventDetailsState.loadInProgress());

    final failureOrSuccess = await _eventFacade.getEventById(eventId);

    failureOrSuccess.fold(
      (failure) => emit(
        EventDetailsState.loadFailure(failure),
      ),
      (event) => {
        emit(
          EventDetailsState.loadSuccess(event),
        ),
      },
    );
  }

  void addEventToState(Event event) {
    emit(EventDetailsState.loadSuccess(event));
  }
}

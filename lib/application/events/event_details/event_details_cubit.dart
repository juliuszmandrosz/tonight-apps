import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/domain/events/event_facade.dart';
import 'package:raver/domain/events/event_failure.dart';

part 'event_details_cubit.freezed.dart';
part 'event_details_state.dart';

@injectable
class EventDetailsCubit extends Cubit<EventDetailsState> {
  final EventFacade _eventFacade;

  EventDetailsCubit(this._eventFacade)
      : super(const EventDetailsState.initial());

  Future<void> getEventById(String eventId) async {
    emit(const EventDetailsState.loadInProgress());

    _eventFacade.getEventById(eventId).then((result) {
      result.fold(
        (failure) => emit(
          EventDetailsState.loadFailure(failure),
        ),
        (event) => {
          emit(
            EventDetailsState.loadSuccess(event),
          ),
        },
      );
    });
  }
}

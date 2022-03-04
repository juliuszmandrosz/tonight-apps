import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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

  late StreamSubscription<Either<EventFailure, Event>> _eventSubscription;

  EventDetailsCubit(this._eventFacade)
      : super(const EventDetailsState.initial());

  Future<void> getEventById(String eventId) async {
    emit(const EventDetailsState.loadInProgress());

    _eventSubscription = _eventFacade.getEventById(eventId).listen((result) {
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

  @override
  Future<void> close() {
    _eventSubscription.cancel();
    return super.close();
  }
}

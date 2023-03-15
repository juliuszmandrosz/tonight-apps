import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:events/events.dart';

part 'event_notifier_cubit.freezed.dart';

part 'event_notifier_state.dart';

class EventNotifierCubit extends Cubit<EventNotifierState> {
  EventNotifierCubit() : super(EventNotifierState.initial());

  void notifyAboutNewEvent(Event event) {
    emit(state.copyWith(lastAddedEvent: some(event)));
    emit(state.copyWith(lastAddedEvent: none()));
  }

  void notifyAboutEditedEvent(Event oldEvent, Event editedEvent) {
    emit(
      state.copyWith(lastEditedEvent: some(Tuple2(oldEvent, editedEvent))),
    );
    emit(state.copyWith(lastEditedEvent: none()));
  }

  void notifyAboutDeletedEvent(Event deletedEvent) {
    emit(
      state.copyWith(lastDeletedEvent: some(deletedEvent)),
    );
    emit(state.copyWith(lastDeletedEvent: none()));
  }
}

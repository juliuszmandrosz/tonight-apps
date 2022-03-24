import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_events/raver_events.dart';

part 'event_notifier_cubit.freezed.dart';

part 'event_notifier_state.dart';

class EventNotifierCubit extends Cubit<EventNotifierState> {
  EventNotifierCubit() : super(EventNotifierState.initial());

  void notifyAboutNewEvent(Event event) {
    emit(state.copyWith(lastAddedEvent: some(event)));
  }

  void notifyAboutEditedEvent(Event oldEvent, Event editedEvent) {
    emit(
      state.copyWith(
        lastEditedEvent: some(
          Tuple2(oldEvent, editedEvent),
        ),
      ),
    );
  }
}

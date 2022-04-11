import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_events/raver_events.dart';

part 'add_event_notifier_cubit.freezed.dart';

part 'add_event_notifier_state.dart';

class AddEventNotifierCubit extends Cubit<AddEventNotifierState> {
  AddEventNotifierCubit() : super(AddEventNotifierState.initial());

  void notifyAboutNewEvent(Event event) {
    emit(state.copyWith(lastAddedEvent: some(event)));
  }
}

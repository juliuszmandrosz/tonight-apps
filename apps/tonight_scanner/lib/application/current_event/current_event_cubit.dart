import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/application/application.dart';
import 'package:events/events.dart';

part 'current_event_cubit.freezed.dart';

part 'current_event_state.dart';

class CurrentEventCubit extends Cubit<CurrentEventState> {
  final SelectorEventFacade _eventFacade;

  CurrentEventCubit(this._eventFacade) : super(CurrentEventState.initial());

  Future<void> getCurrentEvent() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess =
        await _eventFacade.getCurrentEventFromClubAsSelector();

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          status: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (event) => emit(
        state.copyWith(
          status: CubitStatus.success,
          currentEvent: event,
          failure: none(),
        ),
      ),
    );
  }
}

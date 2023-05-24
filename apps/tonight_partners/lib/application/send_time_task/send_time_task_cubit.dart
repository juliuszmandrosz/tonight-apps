import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight_partners/domain/time_tasks/time_task_entity.dart';
import 'package:tonight_partners/domain/time_tasks/time_tasks_facade.dart';
import 'package:translations/translations.dart';

part 'send_time_task_cubit.freezed.dart';
part 'send_time_task_state.dart';

class SendTimeTaskCubit extends Cubit<SendTimeTaskState> {
  final TimeTaskFacade _timeTaskFacade;

  SendTimeTaskCubit(this._timeTaskFacade) : super(SendTimeTaskState.initial());

  durationInMinutesChanged(int value) {
    emit(state.copyWith(durationInMinutes: value));
  }

  descriptionPlChanged(String value) {
    emit(state.copyWith(descriptionPl: value));
  }

  descriptionEnChanged(String value) {
    emit(state.copyWith(descriptionEn: value));
  }

  Future<void> sendTimeTask(Event event) async {
    // TODO - add translations
    if (state.durationInMinutes < 1) {
      _showSnackbarMessage(
          'Czas trwania na wykonanie zadania powinien wynosić conajmniej 1 minutę');
      return;
    }

    if (state.descriptionPl.isEmpty) {
      _showSnackbarMessage('Opis w języku polskim nie moze być pusty');
      return;
    }

    if (state.descriptionEn.isEmpty) {
      _showSnackbarMessage('Opis w języku angielskim nie moze być pusty');
      return;
    }

    emit(state.copyWith(status: CubitStatus.loading));

    final task = TimeTask(
      eventId: event.id,
      eventName: event.eventName,
      descriptionPl: state.descriptionPl,
      descriptionEn: state.descriptionEn,
      durationInMinutes: state.durationInMinutes,
    );

    final result = await _timeTaskFacade.sendTimeTask(task);

    result.fold(
      (_) {
        emit(state.copyWith(status: CubitStatus.failure));
        _showSnackbarMessage(S().serverError);
      },
      (_) {
        emit(state.copyWith(status: CubitStatus.success));
        _showSnackbarMessage('Zadanie wysłano pomyślnie');
      },
    );
  }

  _showSnackbarMessage(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}

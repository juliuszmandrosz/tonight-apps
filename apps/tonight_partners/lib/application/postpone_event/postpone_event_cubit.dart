import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/event_costs/event_costs_entity.dart';
import 'package:events/domain/event_costs/event_costs_facade.dart';
import 'package:events/events.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight_partners/application/add_event/form_inputs/end_date_time.dart';
import 'package:tonight_partners/application/add_event/form_inputs/start_date_time.dart';
import 'package:tonight_partners/application/core/get_event_failure_message.dart';
import 'package:tonight_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:translations/raver_translations.dart';

part 'postpone_event_cubit.freezed.dart';

part 'postpone_event_state.dart';

class PostponeEventCubit extends Cubit<PostponeEventState> {
  final EventNotifierCubit _eventNotifierCubit;
  final PartnerEventFacade _eventFacade;
  final EventCostsFacade _eventCostsFacade;

  StreamSubscription? _eventCostsSub;

  PostponeEventCubit({
    required EventNotifierCubit eventNotifierCubit,
    required PartnerEventFacade partnerEventFacade,
    required EventCostsFacade eventCostsFacade,
  })  : _eventNotifierCubit = eventNotifierCubit,
        _eventFacade = partnerEventFacade,
        _eventCostsFacade = eventCostsFacade,
        super(PostponeEventState.initial());

  void addEventToState(Event event) {
    final startDateTime = StartDateTime.dirty(event.eventStartDateTime);
    final endDateTime = EndDateTime.dirty(
      value: event.eventEndDateTime,
      startDateTime: event.eventStartDateTime,
    );

    emit(
      state.copyWith(
        event: some(event),
        startDateTime: startDateTime,
        endDateTime: endDateTime,
      ),
    );
  }

  Future<void> getEventCosts() async {
    emit(state.copyWith(eventCostsStatus: CubitStatus.loading));

    _eventCostsSub =
        _eventCostsFacade.getEventCosts(state.event.getOrCrash()).listen(
      (result) {
        result.fold(
          (failure) =>
              emit(state.copyWith(eventCostsStatus: CubitStatus.failure)),
          (costs) => emit(
            state.copyWith(
              eventCostsStatus: CubitStatus.success,
              eventCosts: some(costs),
            ),
          ),
        );
      },
    );
  }

  cancelEventCostsSub() {
    _eventCostsSub?.cancel();
  }

  void startDateTimeChanged(DateTime? value) {
    final startDateTime = StartDateTime.dirty(value);
    final endDateTime = EndDateTime.dirty(
      value: state.endDateTime.value,
      startDateTime: value,
    );
    emit(
      state.copyWith(
        startDateTime: startDateTime,
        endDateTime: endDateTime,
      ),
    );
  }

  void endDateTimeChanged(DateTime? value) {
    final endDateTime = EndDateTime.dirty(
      value: value,
      startDateTime: state.startDateTime.value,
    );
    emit(state.copyWith(endDateTime: endDateTime));
  }

  Future<void> postponeEvent() async {
    emit(state.copyWith(postponeEventStatus: FormzStatus.submissionInProgress));

    final event = state.event.getOrCrash();

    final newStartDateTime = state.startDateTime.value!;
    final newEventEndDateTime = state.endDateTime.value!;

    final failureOrSuccess = await _eventFacade.postponeEvent(
      eventId: event.id,
      newEventStartDateTime: newStartDateTime,
      newEventEndDateTime: newEventEndDateTime,
    );

    failureOrSuccess.fold(
      (failure) => _emitEventFailure(failure),
      (success) {
        final updatedEvent = event.copyWith(
          eventStartDateTime: newStartDateTime,
          eventEndDateTime: newEventEndDateTime,
        );
        _eventNotifierCubit.notifyAboutEditedEvent(event, updatedEvent);
        emit(
            state.copyWith(postponeEventStatus: FormzStatus.submissionSuccess));
      },
    );
  }

  Future<bool> validateDateTimeRange() async {
    emit(
      state.copyWith(
        startDateTime: StartDateTime.dirty(state.startDateTime.value),
        endDateTime: EndDateTime.dirty(
          startDateTime: state.startDateTime.value,
          value: state.endDateTime.value,
        ),
      ),
    );

    final status = await _getStatusForValidation();

    emit(state.copyWith(postponeEventStatus: status));

    return status.isValid;
  }

  Future<FormzStatus> _getStatusForValidation() async {
    FormzStatus status;

    status = Formz.validate([state.startDateTime, state.endDateTime]);

    if (status.isInvalid) return status;

    if (!_checkIfEventPostponeTimeIsLongerThan24Hours()) {
      _emitEventFailure(const PartnerEventFailure.postponeTimeTooShort());
      return FormzStatus.invalid;
    }

    final eventExistsResult = await _checkIfEventAlreadyExistsInDateRange(
      state.startDateTime.value!,
      state.endDateTime.value!,
    );

    return eventExistsResult.fold(
      (_) => FormzStatus.invalid,
      (option) => option.fold(
        () => FormzStatus.valid,
        (_) => FormzStatus.invalid,
      ),
    );
  }

  bool _checkIfEventPostponeTimeIsLongerThan24Hours() {
    final eventStartDate = state.event.getOrCrash().eventStartDateTime;
    final newEventStartDate = state.startDateTime.value!;

    return newEventStartDate.isAfter(
      eventStartDate.add(const Duration(days: 1)),
    );
  }

  Future<Either<PartnerEventFailure, Option<Event>>>
      _checkIfEventAlreadyExistsInDateRange(
    DateTime fromDate,
    DateTime toDate,
  ) async {
    emit(state.copyWith(postponeEventStatus: FormzStatus.submissionInProgress));

    final currentEvent = await _eventFacade
        .getEventInDateRangeForCurrentPartner(fromDate, toDate);

    return currentEvent.fold(
      (failure) {
        _emitUnexpectedFailure();
        return left(failure);
      },
      (option) {
        emit(state.copyWith(postponeEventStatus: FormzStatus.pure));
        return option.fold(
          () => right(none()),
          (event) {
            _emitUnexpectedFailure(message: S().eventExistsInDateRange);
            return right(some(event));
          },
        );
      },
    );
  }

  _emitEventFailure(PartnerEventFailure failure) {
    final errorMessage = getEventFailureMessage(failure);

    if (errorMessage.isNotEmpty) {
      emit(state.copyWith(errorMessage: some(errorMessage)));
    }
    emit(
      state.copyWith(
        postponeEventStatus: FormzStatus.submissionFailure,
        errorMessage: none(),
      ),
    );
  }

  _emitUnexpectedFailure({String? message}) {
    emit(state.copyWith(errorMessage: some(message ?? S().serverError)));
    emit(
      state.copyWith(
        postponeEventStatus: FormzStatus.submissionFailure,
        errorMessage: none(),
      ),
    );
  }

  @override
  Future<void> close() {
    _eventCostsSub?.cancel();
    return super.close();
  }
}

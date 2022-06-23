import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/event_costs/event_costs_entity.dart';
import 'package:raver_events/domain/event_costs/event_costs_facade.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/add_event/form_inputs/description.dart';
import 'package:raver_partners/application/add_event/form_inputs/dj_channel_url.dart';
import 'package:raver_partners/application/add_event/form_inputs/event_name.dart';
import 'package:raver_partners/application/add_event/form_inputs/facebook_url.dart';
import 'package:raver_partners/application/core/get_event_failure_message.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

part 'upcoming_live_event_cubit.freezed.dart';

part 'upcoming_live_event_state.dart';

class UpcomingLiveEventCubit extends Cubit<UpcomingLiveEventState> {
  final PartnerEventTicketsFacade _eventTicketsFacade;
  final PartnerEventFacade _eventFacade;
  final EventNotifierCubit _eventNotifierCubit;
  final EventCostsFacade _eventCostsFacade;

  StreamSubscription? _eventTicketsSub;
  StreamSubscription? _eventCostsSub;

  UpcomingLiveEventCubit({
    required PartnerEventTicketsFacade eventTicketsFacade,
    required PartnerEventFacade eventFacade,
    required EventNotifierCubit eventNotifierCubit,
    required EventCostsFacade eventCostsFacade,
  })  : _eventTicketsFacade = eventTicketsFacade,
        _eventFacade = eventFacade,
        _eventNotifierCubit = eventNotifierCubit,
        _eventCostsFacade = eventCostsFacade,
        super(UpcomingLiveEventState.initial());

  void addEventToState(Event event) {
    emit(state.copyWith(event: some(event)));
  }

  Future<void> getEventTickets(Event event) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    _eventTicketsSub = _eventTicketsFacade
        .getEventTickets(clubId: event.clubId, eventId: event.id)
        .listen((result) {
      result.fold(
        (failure) => emit(state.copyWith(initialStatus: CubitStatus.failure)),
        (tickets) => emit(
          state.copyWith(
            initialStatus: CubitStatus.success,
            eventTickets: some(tickets),
          ),
        ),
      );
    });
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

  void editTicketPool(TicketPool editedTicketPool) async {
    emit(state.copyWith(ticketPoolStatus: CubitStatus.loading));

    final failureOrSuccess = await _eventTicketsFacade.updateTicketPool(
      state.event.getOrCrash(),
      editedTicketPool,
    );

    failureOrSuccess.fold(
      (failure) => _emitEventTicketFailure(failure),
      (success) {
        emit(state.copyWith(ticketPoolStatus: CubitStatus.success));
        _showSnackbarMessage(S().ticketPoolHasBeenUpdatedSuccessfully);
      },
    );
  }

  void addTicketPool(TicketPool ticketPool) async {
    emit(state.copyWith(ticketPoolStatus: CubitStatus.loading));

    final failureOrSuccess = await _eventTicketsFacade.addTicketPool(
      state.event.getOrCrash(),
      ticketPool,
    );

    failureOrSuccess.fold(
      (failure) => _emitEventTicketFailure(failure),
      (success) {
        emit(state.copyWith(ticketPoolStatus: CubitStatus.success));
        _showSnackbarMessage(S().ticketPoolHasBeenAddedSuccessfully);
      },
    );
  }

  Future<void> deleteTicketPool(TicketPool ticketPool) async {
    emit(state.copyWith(ticketPoolStatus: CubitStatus.loading));

    final failureOrSuccess = await _eventTicketsFacade.deleteTicketPool(
      state.event.getOrCrash(),
      ticketPool,
    );

    failureOrSuccess.fold(
      (failure) => _emitEventTicketFailure(failure),
      (success) {
        emit(state.copyWith(ticketPoolStatus: CubitStatus.success));
        _showSnackbarMessage(S().ticketPoolHasBeenDeletedSuccessfully);
      },
    );
  }

  void onDescriptionChanged(String value) {
    final description = Description.dirty(value);
    emit(state.copyWith(description: description));
  }

  void onEventNameChanged(String value) {
    final name = EventName.dirty(value);
    emit(state.copyWith(eventName: name));
  }

  void onFacebookUrlChanged(String value) {
    final url = FacebookUrl.dirty(value);
    emit(state.copyWith(facebookUrl: url));
  }

  void onDjChannelUrlChanged(String value) {
    final url = DjChannelUrl.dirty(value);
    emit(state.copyWith(djChannelUrl: url));
  }

  void editDescription() {
    if (!_validateDescription()) return;

    final oldEvent = state.event.getOrCrash();
    final editedEvent =
        oldEvent.copyWith(description: some(state.description.value));

    _updateEvent(oldEvent, editedEvent);
  }

  void editEventName() {
    if (!_validateEventName()) return;

    final oldEvent = state.event.getOrCrash();
    final editedEvent = oldEvent.copyWith(eventName: state.eventName.value);

    _updateEvent(oldEvent, editedEvent);
  }

  void editFacebookUrl() {
    if (!_validateFacebookUrl()) return;

    final oldEvent = state.event.getOrCrash();
    final urlLinksCopy = {...oldEvent.urlLinks};

    urlLinksCopy[facebook] = state.facebookUrl.value;

    final editedEvent = oldEvent.copyWith(urlLinks: urlLinksCopy);

    _updateEvent(oldEvent, editedEvent);
  }

  void editDjChannelUrl() {
    if (!_validateDjChannelUrl()) return;

    final oldEvent = state.event.getOrCrash();
    final urlLinksCopy = {...oldEvent.urlLinks};

    urlLinksCopy[djChannel] = state.djChannelUrl.value;

    final editedEvent = oldEvent.copyWith(urlLinks: urlLinksCopy);

    _updateEvent(oldEvent, editedEvent);
  }

  void deleteDescription() {
    final oldEvent = state.event.getOrCrash();
    final editedEvent = oldEvent.copyWith(description: none());

    _updateEvent(oldEvent, editedEvent);
  }

  void deleteFacebookUrl() {
    final oldEvent = state.event.getOrCrash();
    final urlLinksCopy = {...oldEvent.urlLinks};

    urlLinksCopy[facebook] = '';

    final editedEvent = oldEvent.copyWith(urlLinks: urlLinksCopy);

    _updateEvent(oldEvent, editedEvent);
  }

  void deleteDjChannelUrl() {
    final oldEvent = state.event.getOrCrash();
    final urlLinksCopy = {...oldEvent.urlLinks};

    urlLinksCopy[djChannel] = '';

    final editedEvent = oldEvent.copyWith(urlLinks: urlLinksCopy);

    _updateEvent(oldEvent, editedEvent);
  }

  void resetEditEventState() {
    emit(
      state.copyWith(
        editEventDetailsStatus: FormzStatus.pure,
        eventName: const EventName.pure(),
        description: const Description.pure(),
        facebookUrl: const FacebookUrl.pure(),
        djChannelUrl: const DjChannelUrl.pure(),
      ),
    );
  }

  Future<void> cancelEvent() async {
    emit(state.copyWith(cancelEventStatus: CubitStatus.loading));

    final event = state.event.getOrCrash();

    final failureOrSuccess = await _eventFacade.cancelEvent(event.id);

    failureOrSuccess.fold(
      (failure) => _emitEventFailure(failure),
      (success) {
        _eventNotifierCubit.notifyAboutDeletedEvent(event);
        emit(state.copyWith(cancelEventStatus: CubitStatus.success));
      },
    );
  }

  Future<void> _updateEvent(Event oldEvent, Event editedEvent) async {
    emit(state.copyWith(
        editEventDetailsStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _eventFacade.updateEvent(editedEvent);

    failureOrSuccess.fold(
      (failure) => _emitEditEventFailure(),
      (success) {
        _eventNotifierCubit.notifyAboutEditedEvent(oldEvent, editedEvent);
        emit(
          state.copyWith(
            event: some(editedEvent),
            editEventDetailsStatus: FormzStatus.submissionSuccess,
          ),
        );
      },
    );
  }

  _validateDescription() {
    emit(
      state.copyWith(
        description: Description.dirty(state.description.value),
      ),
    );

    final status = Formz.validate([state.description]);

    emit(state.copyWith(editEventDetailsStatus: status));

    return status.isValid;
  }

  _validateEventName() {
    emit(
      state.copyWith(
        eventName: EventName.dirty(state.eventName.value),
      ),
    );

    final status = Formz.validate([state.eventName]);

    emit(state.copyWith(editEventDetailsStatus: status));

    return status.isValid;
  }

  _validateFacebookUrl() {
    emit(
      state.copyWith(
        facebookUrl: FacebookUrl.dirty(state.facebookUrl.value),
      ),
    );

    final status = Formz.validate([state.facebookUrl]);

    emit(state.copyWith(editEventDetailsStatus: status));

    return status.isValid;
  }

  _validateDjChannelUrl() {
    emit(
      state.copyWith(
        djChannelUrl: DjChannelUrl.dirty(state.djChannelUrl.value),
      ),
    );

    final status = Formz.validate([state.djChannelUrl]);

    emit(state.copyWith(editEventDetailsStatus: status));

    return status.isValid;
  }

  _emitEditEventFailure() {
    emit(
      state.copyWith(
        editEventDetailsStatus: FormzStatus.submissionFailure,
        snackbarMessage: some(S().errorUpdatingEvent),
      ),
    );

    emit(state.copyWith(snackbarMessage: none()));
  }

  _emitEventTicketFailure(EventTicketsFailure failure) {
    final message = _getEventTicketFailureMessage(failure);

    emit(
      state.copyWith(
        ticketPoolStatus: CubitStatus.failure,
        snackbarMessage: some(message),
      ),
    );

    emit(state.copyWith(snackbarMessage: none()));
  }

  _emitEventFailure(PartnerEventFailure failure) {
    final errorMessage = getEventFailureMessage(failure);

    if (errorMessage.isNotEmpty) {
      emit(state.copyWith(snackbarMessage: some(errorMessage)));
    }
    emit(
      state.copyWith(
        cancelEventStatus: CubitStatus.failure,
        snackbarMessage: none(),
      ),
    );
  }

  String _getEventTicketFailureMessage(EventTicketsFailure failure) {
    return failure.map(
      unexpected: (_) => S().serverError,
      priceChangedAfterTicketWasSold: (_) => S().priceChangedAfterTicketWasSold,
      quantityChangedToLessThanTicketsSold: (_) =>
          S().quantityChangedToLessThanTicketsSold,
      deletedTicketPoolAfterTicketWasSold: (_) =>
          S().deletedTicketPoolAfterTicketWasSold,
      deletedAllTicketPools: (_) => S().deletedAllTicketPools,
    );
  }

  _showSnackbarMessage(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }

  @override
  Future<void> close() {
    _eventTicketsSub?.cancel();
    _eventCostsSub?.cancel();
    return super.close();
  }
}

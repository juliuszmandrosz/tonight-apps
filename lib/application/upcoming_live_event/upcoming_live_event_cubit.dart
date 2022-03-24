import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/add_event/form_inputs/description.dart';
import 'package:raver_partners/application/add_event/form_inputs/dj_channel_url.dart';
import 'package:raver_partners/application/add_event/form_inputs/event_name.dart';
import 'package:raver_partners/application/add_event/form_inputs/facebook_url.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

part 'upcoming_live_event_cubit.freezed.dart';

part 'upcoming_live_event_state.dart';

class UpcomingLiveEventCubit extends Cubit<UpcomingLiveEventState> {
  final EventTicketsFacade _eventTicketsFacade;
  final EventFacade _eventFacade;
  final EventNotifierCubit _eventNotifierCubit;

  late StreamSubscription _eventTicketsSub;

  UpcomingLiveEventCubit({
    required EventTicketsFacade eventTicketsFacade,
    required EventFacade eventFacade,
    required EventNotifierCubit eventNotifierCubit,
  })  : _eventTicketsFacade = eventTicketsFacade,
        _eventFacade = eventFacade,
        _eventNotifierCubit = eventNotifierCubit,
        super(UpcomingLiveEventState.initial());

  void addEventToState(Event event) {
    emit(state.copyWith(event: some(event)));
  }

  Future<void> getEventTickets(Event event) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    _eventTicketsSub =
        _eventTicketsFacade.getEventTickets(event).listen((result) {
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

  void editTicketPool(TicketPool editedTicketPool) async {
    emit(state.copyWith(ticketPoolStatus: CubitStatus.loading));

    final failureOrSuccess = await _eventTicketsFacade.updateTicketPool(
      state.event.getOrCrash(),
      editedTicketPool,
    );

    failureOrSuccess.fold(
      (failure) => _emitEventTicketFailure(failure),
      (success) => emit(
        state.copyWith(ticketPoolStatus: CubitStatus.success),
      ),
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
      (success) => emit(
        state.copyWith(ticketPoolStatus: CubitStatus.success),
      ),
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
      (success) => emit(
        state.copyWith(ticketPoolStatus: CubitStatus.success),
      ),
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
    final editedEvent = oldEvent.copyWith(description: state.description.value);

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
    final editedEvent = oldEvent.copyWith(description: '');

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

  Future<void> _updateEvent(Event oldEvent, Event editedEvent) async {
    emit(state.copyWith(
        editEventDetailsStatus: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _eventFacade.updateEvent(editedEvent);

    failureOrSuccess.fold(
      (failure) => _emitEventFailure(),
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

  _emitEventFailure() {
    emit(
      state.copyWith(
        editEventDetailsStatus: FormzStatus.submissionFailure,
        errorMessage: some(S().errorUpdatingEvent),
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  _emitEventTicketFailure(EventTicketsFailure failure) {
    final message = _getEventTicketFailureMessage(failure);

    emit(
      state.copyWith(
        ticketPoolStatus: CubitStatus.failure,
        errorMessage: some(message),
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  _getEventTicketFailureMessage(EventTicketsFailure failure) {
    return failure.map(
      unexpected: (_) => S().serverError,
      priceChangedAfterTicketWasSold: (_) => S().priceChangedAfterTicketWasSold,
      quantityChangedToLessThanTicketsSold: (_) =>
          S().quantityChangedToLessThanTicketsSold,
      deletedTicketPoolAfterTicketWasSold: (_) =>
          S().deletedTicketPoolAfterTicketWasSold,
    );
  }

  @override
  Future<void> close() {
    _eventTicketsSub.cancel();
    return super.close();
  }
}

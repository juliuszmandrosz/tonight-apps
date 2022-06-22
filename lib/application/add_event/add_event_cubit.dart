import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/application/add_event/form_inputs/artist_name.dart';
import 'package:raver_partners/application/add_event/form_inputs/description.dart';
import 'package:raver_partners/application/add_event/form_inputs/dj_channel_url.dart';
import 'package:raver_partners/application/add_event/form_inputs/dress_code.dart';
import 'package:raver_partners/application/add_event/form_inputs/end_date_time.dart';
import 'package:raver_partners/application/add_event/form_inputs/event_name.dart';
import 'package:raver_partners/application/add_event/form_inputs/event_photo.dart';
import 'package:raver_partners/application/add_event/form_inputs/facebook_url.dart';
import 'package:raver_partners/application/add_event/form_inputs/start_date_time.dart';
import 'package:raver_partners/application/add_event/form_inputs/min_age.dart';
import 'package:raver_partners/application/add_event/form_inputs/musical_genres.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/application/core/get_event_failure_message.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_partners/domain/discounts/discount_facade.dart';
import 'package:raver_partners/domain/discounts/partner_discount_entity.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:collection/collection.dart';
import 'package:uuid/uuid.dart';

part 'add_event_cubit.freezed.dart';

part 'add_event_state.dart';

class AddEventCubit extends Cubit<AddEventState> {
  final PartnerEventFacade _eventFacade;
  final EventNotifierCubit _eventNotifierCubit;
  final ClubInfoCubit _clubInfoCubit;
  final DiscountFacade _discountFacade;
  final FirebaseRemoteConfig _remoteConfig;

  AddEventCubit({
    required PartnerEventFacade eventFacade,
    required EventNotifierCubit eventNotifierCubit,
    required ClubInfoCubit clubInfoCubit,
    required DiscountFacade discountFacade,
    required FirebaseRemoteConfig remoteConfig,
  })  : _eventFacade = eventFacade,
        _eventNotifierCubit = eventNotifierCubit,
        _clubInfoCubit = clubInfoCubit,
        _discountFacade = discountFacade,
        _remoteConfig = remoteConfig,
        super(AddEventState.initial()) {
    emit(
      state.copyWith(
        clubInfo: _clubInfoCubit.state.club,
        eventFee: some(_remoteConfig.getDouble(normalEventFee)),
      ),
    );
    _getAvailableDiscounts();
  }

  void eventNameChanged(String value) {
    final eventName = EventName.dirty(value);
    emit(state.copyWith(eventName: eventName));
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

  void eventEndDateTimeChanged(DateTime? value) {
    final endDateTime = EndDateTime.dirty(
      value: value,
      startDateTime: state.startDateTime.value,
    );
    emit(state.copyWith(endDateTime: endDateTime));
  }

  void minAgeChanged(int value) {
    final minAge = MinAge.dirty(value);
    emit(
      state.copyWith(minAge: minAge),
    );
  }

  void dressCodeChanged(String value) {
    final dressCode = DressCode.dirty(value);
    emit(state.copyWith(dressCode: dressCode));
  }

  void musicalGenresChanged(List<String> values) {
    final musicalGenres = MusicalGenres.dirty(values);
    emit(state.copyWith(musicalGenres: musicalGenres));
  }

  void descriptionChanged(String value) {
    final description = Description.dirty(value);
    emit(state.copyWith(description: description));
  }

  void isConcertChanged(bool value) {
    if (!value) {
      emit(state.copyWith(artistName: const ArtistName.pure()));
    }
    emit(state.copyWith(isConcert: value));
  }

  void artistNameChanged(String value) {
    final artistName = ArtistName.dirty(value);
    emit(state.copyWith(artistName: artistName));
  }

  void eventPhotoChanged(File value) {
    final photo = EventPhoto.dirty(value);
    emit(state.copyWith(eventPhoto: photo));
  }

  void toggleFacebookUrlEnabledState() {
    if (state.isFacebookUrlEnabled) {
      emit(state.copyWith(facebookUrl: const FacebookUrl.pure()));
    }
    emit(state.copyWith(isFacebookUrlEnabled: !state.isFacebookUrlEnabled));
  }

  void toggleDjChannelUrlEnabledState() {
    if (state.isDjChannelUrlEnabled) {
      emit(state.copyWith(djChannelUrl: const DjChannelUrl.pure()));
    }
    emit(state.copyWith(isDjChannelUrlEnabled: !state.isDjChannelUrlEnabled));
  }

  void facebookUrlChanged(String value) {
    final facebookUrl = FacebookUrl.dirty(value);
    emit(state.copyWith(facebookUrl: facebookUrl));
  }

  void djChannelUrlChanged(String value) {
    final djChannelUrl = DjChannelUrl.dirty(value);
    emit(state.copyWith(djChannelUrl: djChannelUrl));
  }

  void isExclusiveEventChanged(bool value) {
    var isDiscountApplied = state.isDiscountApplied;

    if (!value) {
      isDiscountApplied = false;
    }

    final eventFee = _getEventFee(value);

    emit(
      state.copyWith(
        isExclusiveEvent: value,
        isDiscountApplied: isDiscountApplied,
        eventFee: some(eventFee),
      ),
    );
  }

  void toggleDiscountAppliedState() {
    final eventFee = _getEventFee(state.isExclusiveEvent);

    emit(
      state.copyWith(
        isDiscountApplied: !state.isDiscountApplied,
        eventFee: some(eventFee),
        appliedDiscount: none(),
      ),
    );
  }

  void appliedDiscountChanged(PartnerDiscount discount) {
    final originalFee = _getEventFee(state.isExclusiveEvent);

    final newFee = originalFee * (100 - discount.percentageOff) / 100;

    emit(
      state.copyWith(
        appliedDiscount: some(discount),
        eventFee: some(newFee),
      ),
    );
  }

  void addTicketPool(TicketPool ticketPool) {
    final ticketPoolsCopy = [...state.ticketPools];
    ticketPoolsCopy.add(ticketPool);
    emit(state.copyWith(ticketPools: ticketPoolsCopy));
  }

  void editTicketPool(TicketPool oldTicketPool, TicketPool editedTicketPool) {
    final ticketPoolsCopy = [...state.ticketPools];
    final index = ticketPoolsCopy.indexOf(oldTicketPool);
    ticketPoolsCopy[index] = editedTicketPool;
    emit(state.copyWith(ticketPools: ticketPoolsCopy));
  }

  void deleteTicketPool(TicketPool ticketPool) {
    final ticketPoolsCopy = [...state.ticketPools];
    ticketPoolsCopy.remove(ticketPool);
    _shiftNumbersOfNextPools(ticketPool, ticketPoolsCopy);
    emit(state.copyWith(ticketPools: ticketPoolsCopy));
  }

  incrementStep() async {
    await _submitCurrentStep();

    if (state.status == FormzStatus.invalid) return;

    final currentStepIndex = state.currentStep.index;

    if (currentStepIndex == AddEventStep.values.last.index) return;

    final nextStep = AddEventStep.values[currentStepIndex + 1];

    emit(state.copyWith(currentStep: nextStep));

    if (state.currentStep == AddEventStep.summary) {
      emit(state.copyWith(isSubmitEnabled: true));
    }
  }

  decrementStep() {
    final currentStepIndex = state.currentStep.index;
    final previousStep = AddEventStep.values[currentStepIndex - 1];
    emit(state.copyWith(currentStep: previousStep));
  }

  switchStep(AddEventStep step) {
    emit(state.copyWith(currentStep: step));
  }

  Future<void> backToSummary() async {
    await _submitCurrentStep();

    if (state.status == FormzStatus.invalid) return;

    emit(state.copyWith(currentStep: AddEventStep.summary));
  }

  Future<void> _submitCurrentStep() async {
    switch (state.currentStep) {
      case AddEventStep.nameAndDesc:
        _submitNameAndDescStep();
        break;

      case AddEventStep.dateTime:
        await _submitDateTimeStep();
        break;

      case AddEventStep.details:
        _submitDetailsStep();
        break;

      case AddEventStep.tickets:
        _submitTicketsStep();
        break;

      case AddEventStep.concertInfo:
        _submitConcertInfoStep();
        break;

      case AddEventStep.photo:
        _submitEventPhotoStep();
        break;

      case AddEventStep.urlLinks:
        _submitUrlLinksStep();
        break;

      case AddEventStep.cost:
        _submitCostStep();
        break;

      case AddEventStep.summary:
        _addEvent();
        break;
    }
  }

  void _submitNameAndDescStep() {
    emit(state.copyWith(
      eventName: EventName.dirty(state.eventName.value),
      description: Description.dirty(state.description.value),
    ));

    final status = Formz.validate([
      state.eventName,
      state.description,
    ]);

    emit(state.copyWith(status: status));
  }

  Future<void> _submitDateTimeStep() async {
    emit(
      state.copyWith(
        startDateTime: StartDateTime.dirty(state.startDateTime.value),
        endDateTime: EndDateTime.dirty(
          startDateTime: state.startDateTime.value,
          value: state.endDateTime.value,
        ),
      ),
    );

    emit(state.copyWith(status: await _getStatusFromDateTimeStep()));
  }

  void _submitDetailsStep() {
    emit(
      state.copyWith(
        minAge: MinAge.dirty(state.minAge.value),
        dressCode: DressCode.dirty(state.dressCode.value),
        musicalGenres: MusicalGenres.dirty(state.musicalGenres.value),
      ),
    );

    final status = Formz.validate([
      state.minAge,
      state.dressCode,
      state.musicalGenres,
    ]);

    emit(state.copyWith(status: status));
  }

  void _submitTicketsStep() {
    final status =
        state.ticketPools.isEmpty ? FormzStatus.invalid : FormzStatus.valid;

    if (state.ticketPools.isEmpty) {
      _showErrorMessage(S().addAtLeastOneTicketPool);
    }

    emit(state.copyWith(status: status));
  }

  void _submitConcertInfoStep() {
    emit(state.copyWith(
      artistName: state.isConcert
          ? ArtistName.dirty(state.artistName.value)
          : const ArtistName.pure(),
    ));

    final status = Formz.validate([state.artistName]);

    emit(state.copyWith(status: status));
  }

  void _submitEventPhotoStep() {
    emit(
      state.copyWith(
        eventPhoto: EventPhoto.dirty(state.eventPhoto.value),
      ),
    );

    final status = Formz.validate([state.eventPhoto]);

    if (status.isInvalid) {
      _emitFailure(eventPhotoErrorMessages[state.eventPhoto.error]!);
    }

    emit(state.copyWith(status: status));
  }

  void _submitUrlLinksStep() {
    emit(
      state.copyWith(
        facebookUrl: state.isFacebookUrlEnabled
            ? FacebookUrl.dirty(state.facebookUrl.value)
            : const FacebookUrl.pure(),
        djChannelUrl: state.isDjChannelUrlEnabled
            ? DjChannelUrl.dirty(state.djChannelUrl.value)
            : const DjChannelUrl.pure(),
      ),
    );

    final status = _validateUrlLinks();

    emit(state.copyWith(status: status));
  }

  void _submitCostStep() {
    var status = FormzStatus.valid;

    if (state.isDiscountApplied && state.appliedDiscount.isNone()) {
      status = FormzStatus.invalid;
      _showErrorMessage(S().selectDiscount);
    }

    emit(state.copyWith(status: status));
  }

  _validateUrlLinks() {
    final inputsToValidate = <FormzInput>[];

    if (state.isDjChannelUrlEnabled) {
      inputsToValidate.add(state.djChannelUrl);
    }

    if (state.isFacebookUrlEnabled) {
      inputsToValidate.add(state.facebookUrl);
    }

    return Formz.validate(inputsToValidate);
  }

  _showErrorMessage(String message) {
    emit(state.copyWith(errorMessage: some(message)));
    emit(state.copyWith(errorMessage: none()));
  }

  _emitFailure(String message) {
    emit(
      state.copyWith(
        errorMessage: some(message),
        status: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  Future<void> _addEvent() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final club = _clubInfoCubit.state.club.getOrCrash();

    final eventId = const Uuid().v1();

    final eventPhotoUrl = await _uploadEventPhoto(eventId);

    if (eventPhotoUrl.isLeft()) {
      return;
    }

    final event = Event(
      id: eventId,
      currency: club.acceptedCurrency,
      clubId: club.id,
      eventName: state.eventName.value,
      clubName: club.clubName,
      eventStartDateTime: state.startDateTime.value!,
      eventEndDateTime: state.endDateTime.value!,
      originalStartDateTime: state.startDateTime.value!,
      minAge: state.minAge.value!,
      price: state.ticketPools.first.ticketPrice,
      allowedOutfit: state.dressCode.value,
      musicalGenres: state.musicalGenres.value,
      location: club.location,
      cityId: club.cityId,
      description: state.description.value,
      urlLinks: _getUrlLinks(),
      artistName: state.artistName.value,
      isConcert: state.isConcert,
      eventPhotoUrl: eventPhotoUrl.getRightOrCrash(),
    );

    final eventTickets = EventTickets(
      ticketPools: state.ticketPools,
      eventId: event.id,
      ticketSales: TicketSales(
        currency: event.currency,
        eventFee: state.eventFee.getOrCrash(),
        isExclusiveEvent: state.isExclusiveEvent,
      ),
      ticketQuantity: state.ticketPools.map((pool) => pool.ticketQuantity).sum,
    );

    Option<String> appliedDiscountId = state.appliedDiscount.fold(
      () => none(),
      (discount) => some(discount.id),
    );

    final failureOrSuccess = await _eventFacade.addEvent(
      event: event,
      eventTickets: eventTickets,
      appliedDiscountId: appliedDiscountId,
    );

    failureOrSuccess.fold(
      (failure) => _emitFailure(getEventFailureMessage(failure)),
      (success) {
        _eventNotifierCubit.notifyAboutNewEvent(event);
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      },
    );
  }

  Future<Either<PartnerEventFailure, String>> _uploadEventPhoto(
    String eventId,
  ) async {
    final failureOrSuccess = await _eventFacade.uploadEventPhoto(
      eventId,
      state.eventPhoto.value!,
    );

    return failureOrSuccess.fold(
      (failure) {
        _emitFailure(S().serverError);
        return left(failure);
      },
      (photoUrl) => right(photoUrl),
    );
  }

  _getUrlLinks() {
    final result = <String, String>{};

    if (state.isFacebookUrlEnabled) {
      result[facebook] = state.facebookUrl.value;
    }

    if (state.isDjChannelUrlEnabled) {
      result[djChannel] = state.djChannelUrl.value;
    }

    return result;
  }

  Future<FormzStatus> _getStatusFromDateTimeStep() async {
    FormzStatus status;

    status = Formz.validate([state.startDateTime, state.endDateTime]);

    if (status.isInvalid) return status;

    final result = await _checkIfEventAlreadyExistsInDateRange(
      state.startDateTime.value!,
      state.endDateTime.value!,
    );

    return result.fold(
      (_) => FormzStatus.invalid,
      (option) => option.fold(
        () => FormzStatus.valid,
        (_) => FormzStatus.invalid,
      ),
    );
  }

  Future<Either<PartnerEventFailure, Option<Event>>>
      _checkIfEventAlreadyExistsInDateRange(
    DateTime fromDate,
    DateTime toDate,
  ) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final currentEvent = await _eventFacade
        .getEventInDateRangeForCurrentPartner(fromDate, toDate);

    return currentEvent.fold((failure) {
      _emitFailure(S().serverError);
      return left(failure);
    }, (option) {
      emit(state.copyWith(status: FormzStatus.pure));
      return option.fold(
        () => right(none()),
        (event) {
          _emitFailure(S().eventExistsInDateRange);
          return right(some(event));
        },
      );
    });
  }

  _shiftNumbersOfNextPools(
    TicketPool deletingPool,
    List<TicketPool> ticketPools,
  ) {
    final nextPools =
        ticketPools.where((pool) => pool.poolNumber > deletingPool.poolNumber);

    for (var pool in nextPools) {
      final index = ticketPools.indexOf(pool);
      ticketPools[index] = pool.copyWith(poolNumber: pool.poolNumber - 1);
    }
  }

  Future<void> _getAvailableDiscounts() async {
    final failureOrSuccess = await _discountFacade.getAvailableDiscounts();

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(discountsStatus: CubitStatus.failure)),
      (discounts) => emit(
        state.copyWith(
          discountsStatus: CubitStatus.success,
          availableDiscounts: discounts,
        ),
      ),
    );
  }

  double _getEventFee(bool isExclusiveEvent) {
    return isExclusiveEvent
        ? _remoteConfig.getDouble(exclusiveEventFee)
        : _remoteConfig.getDouble(normalEventFee);
  }
}

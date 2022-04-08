import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/constants/constants.dart';
import 'package:raver_common/domain/domain.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_partners/application/add_event/form_inputs/artist_name.dart';
import 'package:raver_partners/application/add_event/form_inputs/description.dart';
import 'package:raver_partners/application/add_event/form_inputs/dj_channel_url.dart';
import 'package:raver_partners/application/add_event/form_inputs/dress_code.dart';
import 'package:raver_partners/application/add_event/form_inputs/end_date_time.dart';
import 'package:raver_partners/application/add_event/form_inputs/event_name.dart';
import 'package:raver_partners/application/add_event/form_inputs/facebook_url.dart';
import 'package:raver_partners/application/add_event/form_inputs/price.dart';
import 'package:raver_partners/application/add_event/form_inputs/start_date_time.dart';
import 'package:raver_partners/application/add_event/form_inputs/min_age.dart';
import 'package:raver_partners/application/add_event/form_inputs/musical_genres.dart';
import 'package:raver_partners/application/add_event_notifier/add_event_notifier_cubit.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

part 'add_event_cubit.freezed.dart';

part 'add_event_state.dart';

class AddEventCubit extends Cubit<AddEventState> {
  final EventFacade _eventFacade;
  final AddEventNotifierCubit _addEventNotifierCubit;
  final ClubInfoCubit _clubInfoCubit;

  AddEventCubit({
    required EventFacade eventFacade,
    required AddEventNotifierCubit addEventNotifierCubit,
    required ClubInfoCubit clubInfoCubit,
  })  : _eventFacade = eventFacade,
        _addEventNotifierCubit = addEventNotifierCubit,
        _clubInfoCubit = clubInfoCubit,
        super(AddEventState.initial());

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

  void priceChanged(int? value) {
    final price = Price.dirty(value);
    emit(state.copyWith(price: price));
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

  incrementStep() {
    _submitCurrentStep();

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

  backToSummary() {
    _submitCurrentStep();

    if (state.status == FormzStatus.invalid) return;

    emit(state.copyWith(currentStep: AddEventStep.summary));
  }

  _submitCurrentStep() {
    switch (state.currentStep) {
      case AddEventStep.nameAndDesc:
        _submitNameAndDescStep();
        break;

      case AddEventStep.dateTime:
        _submitDateTimeStep();
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

      case AddEventStep.urlLinks:
        _submitUrlLinksStep();
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

  void _submitDateTimeStep() {
    emit(
      state.copyWith(
        startDateTime: StartDateTime.dirty(state.startDateTime.value),
        endDateTime: EndDateTime.dirty(
          startDateTime: state.startDateTime.value,
          value: state.endDateTime.value,
        ),
      ),
    );

    final status = Formz.validate([state.startDateTime, state.endDateTime]);

    emit(state.copyWith(status: status));
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
    emit(state.copyWith(price: Price.dirty(state.price.value)));

    final status = Formz.validate([state.price]);

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

  _emitFailure(EventFailure failure) {
    emit(
      state.copyWith(
        errorMessage: some(S().errorAddingEvent),
        status: FormzStatus.submissionFailure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  Future<void> _addEvent() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final club = _clubInfoCubit.state.club.getOrElse(
      () => throw NotAuthenticatedError(),
    );

    final event = Event(
      currency: club.acceptedCurrency,
      clubId: club.id,
      eventName: state.eventName.value,
      clubName: club.clubName,
      eventStartDateTime: state.startDateTime.value!,
      eventEndDateTime: state.endDateTime.value!,
      attending: 0,
      minAge: state.minAge.value!,
      price: state.price.value!,
      allowedOutfit: state.dressCode.value,
      musicalGenres: state.musicalGenres.value,
      location: club.location,
      cityId: club.cityId,
      description: state.description.value,
      urlLinks: {
        facebook: state.facebookUrl.value,
        djChannel: state.djChannelUrl.value,
      },
      artistName: state.artistName.value,
      isConcert: state.isConcert,
    );

    final failureOrSuccess = await _eventFacade.addEvent(event);

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (success) {
        _addEventNotifierCubit.notifyAboutNewEvent(event);
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      },
    );
  }
}

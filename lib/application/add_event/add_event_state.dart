part of 'add_event_cubit.dart';

@freezed
class AddEventState with _$AddEventState {
  const factory AddEventState({
    required EventName eventName,
    required StartDateTime startDateTime,
    required EndDateTime endDateTime,
    required MinAge minAge,
    required DressCode dressCode,
    required MusicalGenres musicalGenres,
    required Price price,
    required Description description,
    required bool isConcert,
    required ArtistName artistName,
    required bool isFacebookUrlEnabled,
    required bool isDjChannelUrlEnabled,
    required FacebookUrl facebookUrl,
    required DjChannelUrl djChannelUrl,
    required FormzStatus status,
    required AddEventStep currentStep,
    required bool isSubmitEnabled,
    required Option<String> errorMessage,
  }) = _AddEventState;

  factory AddEventState.initial() => AddEventState(
        eventName: const EventName.pure(),
        startDateTime: const StartDateTime.pure(),
        endDateTime: const EndDateTime.pure(),
        minAge: const MinAge.pure(),
        dressCode: const DressCode.pure(),
        musicalGenres: const MusicalGenres.pure(),
        price: const Price.pure(),
        description: const Description.pure(),
        isConcert: false,
        artistName: const ArtistName.pure(),
        isFacebookUrlEnabled: false,
        isDjChannelUrlEnabled: false,
        facebookUrl: const FacebookUrl.pure(),
        djChannelUrl: const DjChannelUrl.pure(),
        status: FormzStatus.pure,
        currentStep: AddEventStep.nameAndDesc,
        isSubmitEnabled: false,
        errorMessage: none(),
      );
}

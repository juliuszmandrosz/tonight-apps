part of 'event_details_cubit.dart';

@freezed
class EventDetailsState with _$EventDetailsState {
  const factory EventDetailsState.initial() = _Initial;

  const factory EventDetailsState.loadInProgress() = _LoadInProgress;

  const factory EventDetailsState.loadSuccess(Event event) = _LoadSuccess;

  const factory EventDetailsState.loadFailure(UserEventFailure eventFailure) =
      _LoadFailure;
}

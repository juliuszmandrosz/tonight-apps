part of 'club_photos_cubit.dart';

@freezed
class ClubPhotosState with _$ClubPhotosState {
  const ClubPhotosState._();

  const factory ClubPhotosState.initial() = _Initial;

  const factory ClubPhotosState.loadInProgress() = _LoadInProgress;

  const factory ClubPhotosState.loadSuccess(List<String> photosUrls) =
      _LoadSuccess;

  const factory ClubPhotosState.loadFailure(ClubFailure clubFailure) =
      _LoadFailure;
}

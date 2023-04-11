part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.profileLoaded() = _ProfileLoaded;

  const factory ProfileEvent.photosRefreshed() = _PhotosRefreshed;

  const factory ProfileEvent.nextPhotosPageFetched() = _NextPhotosPageFetched;
}

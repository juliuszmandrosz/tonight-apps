part of 'club_photos_bloc.dart';

@freezed
class ClubPhotosState with _$ClubPhotosState {
  const ClubPhotosState._();

  const factory ClubPhotosState({
    required CubitStatus status,
    required List<String> photosUrls,
    required String? nextPageToken,
  }) = _ClubPhotosState;

  factory ClubPhotosState.initial() => const ClubPhotosState(
        status: CubitStatus.initial,
        photosUrls: [],
        nextPageToken: null,
      );
}

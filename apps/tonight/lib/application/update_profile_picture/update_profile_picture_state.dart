part of 'update_profile_picture_cubit.dart';

@freezed
class UpdateProfilePictureState with _$UpdateProfilePictureState {
  const factory UpdateProfilePictureState({
    required FormzStatus status,
    required Option<String> errorMessage,
    required Option<Uint8List> profilePicture,
  }) = _UpdateProfilePictureState;

  factory UpdateProfilePictureState.initial() => UpdateProfilePictureState(
        status: FormzStatus.pure,
        errorMessage: none(),
        profilePicture: none(),
      );
}

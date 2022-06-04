part of 'welcome_loader_cubit.dart';

@freezed
class WelcomeLoaderState with _$WelcomeLoaderState {
  const factory WelcomeLoaderState({
    required CubitStatus remoteConfigStatus,
    required CubitStatus welcomeLoaderStatus,
  }) = _WelcomeLoaderState;

  factory WelcomeLoaderState.initial() => const WelcomeLoaderState(
        remoteConfigStatus: CubitStatus.initial,
        welcomeLoaderStatus: CubitStatus.initial,
      );
}

part of 'welcome_loader_cubit.dart';

@freezed
class WelcomeLoaderState with _$WelcomeLoaderState {
  const factory WelcomeLoaderState({
    required CubitStatus cubitStatuses,
    required CubitStatus remoteConfigStatus,
  }) = _WelcomeLoaderState;

  factory WelcomeLoaderState.initial() => const WelcomeLoaderState(
        cubitStatuses: CubitStatus.initial,
        remoteConfigStatus: CubitStatus.initial,
      );
}

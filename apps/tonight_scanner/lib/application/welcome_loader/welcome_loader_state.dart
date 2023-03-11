part of 'welcome_loader_cubit.dart';

@freezed
class WelcomeLoaderState with _$WelcomeLoaderState {
  const factory WelcomeLoaderState({
    required CubitStatus status,
  }) = _WelcomeLoaderState;

  factory WelcomeLoaderState.initial() => const WelcomeLoaderState(
        status: CubitStatus.initial,
      );
}

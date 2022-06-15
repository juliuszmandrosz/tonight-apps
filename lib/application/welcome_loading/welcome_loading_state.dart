part of 'welcome_loading_cubit.dart';

@freezed
class WelcomeLoadingState with _$WelcomeLoadingState {
  const WelcomeLoadingState._();

  factory WelcomeLoadingState({
    required bool dependenciesLoaded,
    required Option<String> username,
    required CubitStatus status,
  }) = _WelcomeLoadingState;

  factory WelcomeLoadingState.initial() => WelcomeLoadingState(
        dependenciesLoaded: false,
        username: none(),
        status: CubitStatus.initial,
      );
}

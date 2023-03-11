part of 'push_notifications_cubit.dart';

@freezed
class PushNotificationsState with _$PushNotificationsState {
  const PushNotificationsState._();

  factory PushNotificationsState({
    required CubitStatus status,
  }) = _PushNotificationsState;

  factory PushNotificationsState.initial() => PushNotificationsState(
        status: CubitStatus.initial,
      );
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'user_event_failure.freezed.dart';

@freezed
class UserEventFailure with _$UserEventFailure {
  const factory UserEventFailure.unexpected() = _Unexpected;

  const factory UserEventFailure.permissionDenied() = _PermissionDenied;

  const factory UserEventFailure.noConnection() = _NoConnection;

  const factory UserEventFailure.toggleFavoriteEventFailure() =
      _UserEventFailure;

  const factory UserEventFailure.moreThan20FavoriteEvents() =
      _MoreThan20FavoriteEvents;
}

extension UserEventFailureX on UserEventFailure {
  String get message {
    return map(
      unexpected: (_) => S().serverError,
      permissionDenied: (_) => S().operationNotAllowed,
      toggleFavoriteEventFailure: (_) => S().errorChangingEventStatus,
      noConnection: (_) => S().errorCheckInternetConnection,
      moreThan20FavoriteEvents: (_) => S().moreThan20FavoriteEventsError,
    );
  }
}

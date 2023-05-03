import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'user_club_failure.freezed.dart';

@freezed
abstract class UserClubFailure with _$UserClubFailure {
  const factory UserClubFailure.unexpected() = _Unexpected;

  const factory UserClubFailure.noConnection() = _NoConnection;

  const factory UserClubFailure.permissionDenied() = _PermissionDenied;

  const factory UserClubFailure.moreThan20FavoriteClubs() =
      _MoreThan20FavoriteClubs;
}

extension UserClubFailureX on UserClubFailure {
  String get message {
    return map(
      unexpected: (_) => S().serverError,
      noConnection: (_) => S().errorCheckInternetConnection,
      permissionDenied: (_) => S().operationNotAllowed,
      moreThan20FavoriteClubs: (_) => S().moreThan20FavoriteClubsError,
    );
  }
}

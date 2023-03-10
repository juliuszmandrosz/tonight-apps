import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_club_failure.freezed.dart';

@freezed
abstract class CommonClubFailure with _$CommonClubFailure {
  const factory CommonClubFailure.unexpected() = _Unexpected;

  const factory CommonClubFailure.noConnection() = _NoConnection;

  const factory CommonClubFailure.permissionDenied() = _PermissionDenied;
}

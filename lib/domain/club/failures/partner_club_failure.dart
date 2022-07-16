import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_club_failure.freezed.dart';

@freezed
abstract class PartnerClubFailure with _$PartnerClubFailure {
  const factory PartnerClubFailure.unexpected() = _Unexpected;

  const factory PartnerClubFailure.permissionDenied() = _PermissionDenied;
}

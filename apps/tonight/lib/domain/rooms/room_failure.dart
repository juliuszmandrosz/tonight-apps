import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_failure.freezed.dart';

@freezed
class RoomFailure with _$RoomFailure {
  const RoomFailure._();

  const factory RoomFailure.unexpected() = _Unexpected;

  const factory RoomFailure.permissionDenied() = _PermissionDenied;
}

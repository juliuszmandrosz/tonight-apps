import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_room_failure.freezed.dart';

@freezed
class EventRoomFailure with _$EventRoomFailure {
  const factory EventRoomFailure.unexpected() = _Unexpected;
}

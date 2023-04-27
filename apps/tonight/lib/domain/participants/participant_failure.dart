import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_failure.freezed.dart';

@freezed
class ParticipantFailure with _$ParticipantFailure {
  const factory ParticipantFailure.unexpected() = _Unexpected;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'event_chat_failure.freezed.dart';

@freezed
class EventChatFailure with _$EventChatFailure {
  const factory EventChatFailure.unexpected() = _Unexpected;

  const factory EventChatFailure.reportExists() = _ReportExists;
}

extension EventChatFailureX on EventChatFailure {
  String get message => when(
        unexpected: () => S().serverError,
        // TODO - add translation
        reportExists: () => 'S().messageAlreadyReported',
      );
}

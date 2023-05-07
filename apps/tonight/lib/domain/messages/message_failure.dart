import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'message_failure.freezed.dart';

@freezed
class MessageFailure with _$MessageFailure {
  const factory MessageFailure.unexpected() = _Unexpected;

  const factory MessageFailure.reportExists() = _ReportExists;
}

extension MessageFailureX on MessageFailure {
  String get message {
    return when(
      unexpected: () => S().serverError,
      reportExists: () => S().messageAlreadyReported,
    );
  }
}

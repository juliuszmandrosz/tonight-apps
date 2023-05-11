import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'festival_failure.freezed.dart';

@freezed
class FestivalFailure with _$FestivalFailure {
  const factory FestivalFailure.unexpected() = _Unexpected;

  const factory FestivalFailure.noConnection() = _NoConnection;
}

extension FestivalFailureX on FestivalFailure {
  String get errorMessage {
    return map(
      unexpected: (_) => S().serverError,
      noConnection: (_) => S().errorCheckInternetConnection,
    );
  }
}

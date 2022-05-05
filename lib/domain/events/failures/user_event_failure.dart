import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event_failure.freezed.dart';

@freezed
class UserEventFailure with _$UserEventFailure {
  const factory UserEventFailure.unexpected() = _Unexpected;

  const factory UserEventFailure.toggleFavoriteEventFailure() =
      _UserEventFailure;
}

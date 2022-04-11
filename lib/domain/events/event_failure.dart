import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_failure.freezed.dart';

@freezed
class EventFailure with _$EventFailure {
  const factory EventFailure.unexpected() = _EventFailure;

  const factory EventFailure.toggleFavoriteEventFailure() =
      _ToggleFavoriteEventFailure;
}

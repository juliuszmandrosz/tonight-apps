import 'package:freezed_annotation/freezed_annotation.dart';

part 'tonight_events_failure.freezed.dart';


@freezed
class TonightEventsFailure with _$TonightEventsFailure {
  const factory TonightEventsFailure.unexpected() = _Unexpected;

  const factory TonightEventsFailure.noConnection() = _NoConnection;

}

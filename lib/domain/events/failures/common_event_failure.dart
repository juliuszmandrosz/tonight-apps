import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_event_failure.freezed.dart';

@freezed
class CommonEventFailure with _$CommonEventFailure {
  const factory CommonEventFailure.unexpected() = _Unexpected;
}

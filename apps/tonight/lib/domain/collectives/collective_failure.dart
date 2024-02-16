import 'package:freezed_annotation/freezed_annotation.dart';

part 'collective_failure.freezed.dart';

@freezed
class CollectiveFailure with _$CollectiveFailure {
  const factory CollectiveFailure.unexpected() = _Unexpected;
}

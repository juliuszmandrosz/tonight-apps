import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_task_failure.freezed.dart';

@freezed
class TimeTaskFailure with _$TimeTaskFailure {
  const factory TimeTaskFailure.unexpected() = _Unexpected;
}

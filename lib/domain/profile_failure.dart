import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

@freezed
class ProfileFailure with _$ProfileFailure {
  factory ProfileFailure({required String message}) = _ProfileFailure;
}

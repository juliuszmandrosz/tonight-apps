import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_of_service_failure.freezed.dart';

@freezed
class TermsOfServiceFailure with _$TermsOfServiceFailure {
  const factory TermsOfServiceFailure.unexpected() = _Unexpected;

  const factory TermsOfServiceFailure.permissionDenied() = _PermissionDenied;
}

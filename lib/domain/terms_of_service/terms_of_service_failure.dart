import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_of_service_failure.freezed.dart';

@freezed
class TermsOfServiceFailure with _$TermsOfServiceFailure {
  factory TermsOfServiceFailure.unexpected() = _Unexpected;
}

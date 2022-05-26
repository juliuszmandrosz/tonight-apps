import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_review_failure.freezed.dart';

@freezed
abstract class PartnerReviewFailure with _$PartnerReviewFailure {
  const factory PartnerReviewFailure.unexpected() = _PartnerReviewFailure;

  const factory PartnerReviewFailure.reportExists() = _ReportExists;
}
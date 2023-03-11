import 'package:dartz/dartz.dart';
import 'package:raver_common/domain/terms_of_service/terms_of_service_failure.dart';

abstract class PartnerTermsOfServiceFacade {
  /// Returns privacy policy url
  Future<Either<TermsOfServiceFailure, String>> getPrivacyPolicyForPartner();
}

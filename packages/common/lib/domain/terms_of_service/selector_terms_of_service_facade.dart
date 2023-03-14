import 'package:dartz/dartz.dart';
import 'package:common/domain/terms_of_service/terms_of_service_failure.dart';

abstract class SelectorTermsOfServiceFacade {
  /// Returns privacy policy url
  Future<Either<TermsOfServiceFailure, String>> getPrivacyPolicyForSelector();
}

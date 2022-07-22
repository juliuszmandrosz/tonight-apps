import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/domain/domain.dart';
import 'package:raver_common/infrastructure/core/handle_firebase_error.dart';

class FirebaseTermsOfServiceFacade
    implements
        UserTermsOfServiceFacade,
        PartnerTermsOfServiceFacade,
        SelectorTermsOfServiceFacade {
  final FirebaseStorage _storage;
  final Logger _logger;
  final FirebaseCrashlytics _crashlytics;

  FirebaseTermsOfServiceFacade({
    required FirebaseStorage firebaseStorage,
    required Logger logger,
    required FirebaseCrashlytics firebaseCrashlytics,
  })  : _storage = firebaseStorage,
        _logger = logger,
        _crashlytics = firebaseCrashlytics;

  @override
  Future<Either<TermsOfServiceFailure, String>>
      getTermsOfServiceForUser() async {
    try {
      final storageRef = _storage.ref(
        'terms_of_service/tonight/tonight_terms_of_service.pdf',
      );
      final url = await storageRef.getDownloadURL();
      return right(url);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<TermsOfServiceFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message:
              'Firebase Exception getting terms of service for user EXCEPTION: $e',
          unexpectedFailure: const TermsOfServiceFailure.unexpected(),
          permissionDeniedFailure:
              const TermsOfServiceFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<TermsOfServiceFailure, String>>
      getPrivacyPolicyForUser() async {
    try {
      final storageRef = _storage.ref(
        'terms_of_service/tonight/tonight_privacy_policy.pdf',
      );
      final url = await storageRef.getDownloadURL();
      return right(url);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<TermsOfServiceFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message:
              'Firebase Exception getting privacy policy for user EXCEPTION: $e',
          unexpectedFailure: const TermsOfServiceFailure.unexpected(),
          permissionDeniedFailure:
              const TermsOfServiceFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<TermsOfServiceFailure, String>>
      getPrivacyPolicyForPartner() async {
    try {
      final storageRef = _storage.ref(
        'terms_of_service/tonight_partners/tonight_partners_privacy_policy.pdf',
      );
      final url = await storageRef.getDownloadURL();
      return right(url);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<TermsOfServiceFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message:
              'Firebase Exception getting privacy policy for partner EXCEPTION: $e',
          unexpectedFailure: const TermsOfServiceFailure.unexpected(),
          permissionDeniedFailure:
              const TermsOfServiceFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<TermsOfServiceFailure, String>>
      getPrivacyPolicyForSelector() async {
    try {
      final storageRef = _storage.ref(
        'terms_of_service/tonight_scanner/tonight_scanner_privacy_policy.pdf',
      );
      final url = await storageRef.getDownloadURL();
      return right(url);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<TermsOfServiceFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message:
              'Firebase Exception getting privacy policy for selector EXCEPTION: $e',
          unexpectedFailure: const TermsOfServiceFailure.unexpected(),
          permissionDeniedFailure:
              const TermsOfServiceFailure.permissionDenied(),
        ),
      );
    }
  }
}

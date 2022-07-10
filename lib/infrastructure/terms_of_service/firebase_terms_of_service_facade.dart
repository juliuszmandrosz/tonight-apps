import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/domain/domain.dart';

class FirebaseTermsOfServiceFacade implements UserTermsOfServiceFacade {
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
      _logger.e(
        'Firebase Exception getting terms of service for user EXCEPTION: $e',
      );
      await _crashlytics.recordError(e, StackTrace.current);
      return left(TermsOfServiceFailure.unexpected());
    }
  }
}

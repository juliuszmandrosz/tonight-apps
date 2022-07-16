import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/infrastructure/currency_params/dtos/currency_params_dto.dart';
import 'package:raver_common/raver_common.dart';

class FirebaseCurrencyParamsFacade implements CurrencyParamsFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseCurrencyParamsFacade({
    required FirebaseFirestore firestore,
    required FirebaseCrashlytics crashlytics,
    required Logger logger,
  })  : _firestore = firestore,
        _crashlytics = crashlytics,
        _logger = logger;

  @override
  Future<Either<CurrencyParamsFailure, CurrencyParams>> getCurrencyParams(
    String currency,
  ) async {
    try {
      final result =
          await _firestore.currencyParams.doc(currency.toLowerCase()).get();

      return right<CurrencyParamsFailure, CurrencyParams>(
        CurrencyParamsDto.fromFirebase(result).toDomain(),
      );
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<CurrencyParamsFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception getting currency params EXCEPTION: $e',
          unexpectedFailure: const CurrencyParamsFailure.unexpected(),
          permissionDeniedFailure:
              const CurrencyParamsFailure.permissionDenied(),
        ),
      );
    }
  }
}

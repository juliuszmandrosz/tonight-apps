import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/infrastructure/currency_params/dtos/currency_params_dto.dart';
import 'package:raver_common/raver_common.dart';

class FirebaseCurrencyParamsFacade implements CurrencyParamsFacade {
  final FirebaseFirestore _firestore;
  final Logger _logger;

  FirebaseCurrencyParamsFacade({
    required FirebaseFirestore firestore,
    required Logger logger,
  })  : _firestore = firestore,
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
      _logger.e('Firebase Exception getting currency params EXCEPTION: $e');
      return left(CurrencyParamsFailure.unexpected());
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:raver_common/domain/currency_params/currency_params_entity.dart';
import 'package:raver_common/domain/currency_params/currency_params_failure.dart';

abstract class CurrencyParamsFacade {
  Future<Either<CurrencyParamsFailure, CurrencyParams>> getCurrencyParams(
    String currency,
  );
}

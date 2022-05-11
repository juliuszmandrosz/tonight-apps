import 'package:dartz/dartz.dart';
import 'package:raver_payments/domain/domain.dart';

abstract class PartnerPaymentFacade {
  Future<Either<PartnerPaymentFailure, Unit>> proceedToPayForEventCancelation({
    required String eventId,
    required String currency,
  });
}

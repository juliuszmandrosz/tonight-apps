import 'package:dartz/dartz.dart';
import 'package:raver_payments/domain/entities/event_fees_entity.dart';
import 'package:raver_payments/domain/failures/partner_payment_failure.dart';

abstract class PartnerPaymentFacade {
  Future<Either<PartnerPaymentFailure, EventFees>> getEventFees();
}

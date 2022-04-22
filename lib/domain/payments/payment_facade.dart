import 'package:dartz/dartz.dart';
import 'package:raver/domain/payments/payment_failure.dart';
import 'package:raver/domain/payments/promotion_code_entity.dart';
import 'package:raver/domain/payments/ticket_payment_entity.dart';

abstract class PaymentFacade {
  // Returns ticket id
  Future<Either<PaymentFailure, String>> proceedToPayForTicket(
    TicketPayment ticketPayment,
  );

  Future<Either<PaymentFailure, PromotionCode>> getPromotionCode(
      String promotionCode);

  Future<Either<PaymentFailure, int>> getVipPrice(
    String? eventId,
    String? ticketId,
  );
}

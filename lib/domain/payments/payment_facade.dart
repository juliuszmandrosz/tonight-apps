import 'package:dartz/dartz.dart';
import 'package:raver/domain/payments/payment_failure.dart';
import 'package:raver/domain/payments/promotion_code_entity.dart';
import 'package:raver/domain/payments/ticket_payment_entity.dart';
import 'package:raver/domain/payments/vip_payment_entity.dart';
import 'package:raver_tickets/raver_tickets.dart';

abstract class PaymentFacade {
  Future<Either<PaymentFailure, Ticket>> proceedToPayForTicket(
    TicketPayment ticketPayment,
  );

  Future<Either<PaymentFailure, Ticket>> proceedToPayForVip(
    VipPayment vipPayment,
  );

  Future<Either<PaymentFailure, PromotionCode>> getPromotionCode(
    String promotionCode,
  );

  Future<Either<PaymentFailure, int>> getVipPrice(String eventId);
}

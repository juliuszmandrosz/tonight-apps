import 'package:dartz/dartz.dart';
import 'package:raver_payments/domain/domain.dart';

abstract class UserPaymentFacade {
  Future<Either<UserPaymentFailure, Unit>> proceedToPayForTicket({
    required String eventId,
    required String currency,
    String? promotionCode,
    bool isVip = false,
  });

  Future<Either<UserPaymentFailure, Unit>> proceedToPayForVip({
    required String ticketId,
    required String currency,
    String? promotionCode,
  });
}

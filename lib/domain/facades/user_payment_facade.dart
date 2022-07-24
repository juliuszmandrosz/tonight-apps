import 'package:dartz/dartz.dart';
import 'package:raver_payments/application/core/raver_payment_method.dart';
import 'package:raver_payments/domain/domain.dart';

abstract class UserPaymentFacade {
  Future<Either<UserPaymentFailure, Unit>> proceedToPayForTicket({
    required String eventId,
    required String currency,
    required RaverPaymentMethod paymentMethod,
    required double amount,
    String? promotionCode,
    bool isVip = false,
    bool sendInvoice = false,
  });

  Future<Either<UserPaymentFailure, Unit>> proceedToPayForVip({
    required String ticketId,
    required String currency,
    required RaverPaymentMethod paymentMethod,
    required double amount,
    String? promotionCode,
    bool sendInvoice = false,
  });

  Future<Either<UserPaymentFailure, PromotionCode>> getPromotionCode(
    String promotionCode,
  );

  Future<Either<UserPaymentFailure, Unit>> updatePaymentMethod(
    RaverPaymentMethod paymentMethod,
  );

  Future<Either<UserPaymentFailure, Unit>> updateInvoiceData({
    required String name,
    String? vatNumber,
    String? countryCode,
    bool isCompany = false,
  });

  Future<Either<UserPaymentFailure, CustomerData>> getCustomerData();

  Future<Either<UserPaymentFailure, double>> getServiceFee();

  Future<Either<UserPaymentFailure, Unit>> cancelTicketReservation(
    String sessionId,
  );
}

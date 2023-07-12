import 'package:dartz/dartz.dart';
import 'package:payments/application/core/tonight_payment_method.dart';
import 'package:payments/domain/domain.dart';

abstract class UserPaymentFacade {
  Future<Either<UserPaymentFailure, Unit>> proceedToPayForTicket({
    required String eventId,
    required String currency,
    required TonightPaymentMethod paymentMethod,
    required double amount,
    required int quantity,
    required String customerEmail,
    String? promotionCode,
    bool sendInvoice = false,
  });

  Future<Either<UserPaymentFailure, PromotionCode>> getPromotionCode(
    String promotionCode,
  );

  Future<Either<UserPaymentFailure, Unit>> updatePaymentMethod(
    TonightPaymentMethod paymentMethod,
  );

  Future<Either<UserPaymentFailure, Unit>> updateInvoiceData({
    required String name,
    String? vatNumber,
    String? countryCode,
    bool isCompany = false,
  });

  Future<Either<UserPaymentFailure, Unit>> updateCustomerEmail(String email);

  Future<Either<UserPaymentFailure, CustomerData>> getCustomerData();

  Future<Either<UserPaymentFailure, double>> getServiceFee();
}

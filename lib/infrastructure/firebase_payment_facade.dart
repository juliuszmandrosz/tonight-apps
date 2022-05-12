import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:logger/logger.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_errors.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_facade.dart';

class FirebasePaymentFacade implements PartnerPaymentFacade {
  final Logger _logger;
  final Stripe _stripe;
  final PaymentCloudFunctionsFacade _paymentCloudFunctionsFacade;

  FirebasePaymentFacade({
    required Stripe stripe,
    required Logger logger,
    required PaymentCloudFunctionsFacade paymentCloudFunctionsFacade,
  })  : _logger = logger,
        _stripe = stripe,
        _paymentCloudFunctionsFacade = paymentCloudFunctionsFacade;

  @override
  Future<Either<PartnerPaymentFailure, Unit>> proceedToPayForEventCancelation({
    required String eventId,
    required String currency,
  }) async {
    try {
      final result = await _paymentCloudFunctionsFacade
          .createEventCancelationPaymentSheet(eventId);

      return result.fold(() => right(unit), (response) async {
        await _presentPaymentSheet(
          currency: currency,
          customerId: response.customerId,
          paymentIntentSecret: response.paymentIntentSecret,
          ephemeralKeySecret: response.ephemeralKeySecret,
        );

        return right(unit);
      });
    } on StripeException catch (e) {
      _logger.e("Stripe exception during payment EXCEPTION: $e");
      if (e.error.code == FailureCode.Canceled) {
        return left(const PartnerPaymentFailure.canceledByPartner());
      }
      return left(const PartnerPaymentFailure.stripeError());
    } on FirebaseFunctionsException catch (e) {
      _logger.e("Firebase Functions Exception during payment EXCEPTION: $e");
      return left(paymentCloudFunctionsErrors[e.details] ??
          const PartnerPaymentFailure.unexpected());
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during payment EXCEPTION: $e");
      return left(const PartnerPaymentFailure.unexpected());
    }
  }

  _presentPaymentSheet({
    required String currency,
    required String customerId,
    required String paymentIntentSecret,
    required String ephemeralKeySecret,
  }) async {
    await _stripe.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      currencyCode: currency,
      customerId: customerId,
      paymentIntentClientSecret: paymentIntentSecret,
      customerEphemeralKeySecret: ephemeralKeySecret,
      testEnv: true,
      googlePay: true,
      applePay: true,
      merchantDisplayName: 'Raver',
    ));

    await _stripe.presentPaymentSheet();
  }
}

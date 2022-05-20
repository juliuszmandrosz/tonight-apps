import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:logger/logger.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_payments/domain/facades/user_payment_facade.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_errors.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_facade.dart';

class FirebasePaymentFacade implements PartnerPaymentFacade, UserPaymentFacade {
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

      return result.fold(
        () => right(unit),
        (response) async {
          try {
            await _presentPaymentSheet(
              currency: currency,
              customerId: response.customerId,
              paymentIntentSecret: response.paymentIntentSecret,
              ephemeralKeySecret: response.ephemeralKeySecret,
            );
            return right(unit);
          } on StripeException catch (e) {
            _logger.e(
              "Stripe exception during proceeding to pay for event cancelation EXCEPTION: $e",
            );
            if (e.error.code == FailureCode.Canceled) {
              await _paymentCloudFunctionsFacade
                  .cancelEventCancelation(response.paymentIntentId);
              return left(const PartnerPaymentFailure.canceledByPartner());
            }
            return left(const PartnerPaymentFailure.stripeError());
          }
        },
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception proceeding to pay for event cancelation EXCEPTION: $e",
      );
      return left(partnerPaymentCloudFunctionsErrors[e.details] ??
          const PartnerPaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<PartnerPaymentFailure, Unit>> proceedToPayForEventPostpone({
    required String eventId,
    required String currency,
    required DateTime newEventStartDateTime,
    required DateTime newEventEndDateTime,
  }) async {
    try {
      final result =
          await _paymentCloudFunctionsFacade.createPostponeEventPaymentSheet(
        eventId: eventId,
        newEventStartDateTime: Timestamp.fromDate(newEventStartDateTime),
        newEventEndDateTime: Timestamp.fromDate(newEventEndDateTime),
      );

      return result.fold(
        () => right(unit),
        (response) async {
          try {
            await _presentPaymentSheet(
              currency: currency,
              customerId: response.customerId,
              paymentIntentSecret: response.paymentIntentSecret,
              ephemeralKeySecret: response.ephemeralKeySecret,
            );
            return right(unit);
          } on StripeException catch (e) {
            _logger.e(
                "Stripe exception during proceeding to pay for event postpone EXCEPTION: $e");
            if (e.error.code == FailureCode.Canceled) {
              await _paymentCloudFunctionsFacade
                  .cancelEventPostpone(response.paymentIntentId);
              return left(const PartnerPaymentFailure.canceledByPartner());
            }
            return left(const PartnerPaymentFailure.stripeError());
          }
        },
      );
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception proceeding to pay for event postpone EXCEPTION: $e",
      );
      return left(partnerPaymentCloudFunctionsErrors[e.details] ??
          const PartnerPaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> proceedToPayForTicket({
    required String eventId,
    required String currency,
    String? promotionCode,
    bool isVip = false,
  }) async {
    try {
      final result =
          await _paymentCloudFunctionsFacade.createTicketPaymentSheet(
        eventId: eventId,
        isVip: isVip,
        promotionCode: promotionCode,
      );

      try {
        await _presentPaymentSheet(
          currency: currency,
          customerId: result.customerId,
          paymentIntentSecret: result.paymentIntentSecret,
          ephemeralKeySecret: result.ephemeralKeySecret,
        );
      } on StripeException catch (e) {
        _logger.e(
          "Stripe exception proceeding to pay for ticket EXCEPTION: $e",
        );
        if (e.error.code == FailureCode.Canceled) {
          await _paymentCloudFunctionsFacade
              .cancelTicketReservation(result.paymentIntentId);
          return left(const UserPaymentFailure.canceledByUser());
        }
        return left(const UserPaymentFailure.stripeError());
      }

      return right(unit);
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception proceeding to pay for ticket EXCEPTION: $e",
      );
      return left(userPaymentCloudFunctionsErrors[e.details] ??
          const UserPaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> proceedToPayForVip({
    required String ticketId,
    required String currency,
    String? promotionCode,
  }) async {
    try {
      final result = await _paymentCloudFunctionsFacade.createVipPaymentSheet(
        ticketId: ticketId,
        promotionCode: promotionCode,
      );

      await _presentPaymentSheet(
        currency: currency,
        customerId: result.customerId,
        paymentIntentSecret: result.paymentIntentSecret,
        ephemeralKeySecret: result.ephemeralKeySecret,
      );

      return right(unit);
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception proceeding to pay for vip EXCEPTION: $e",
      );
      return left(userPaymentCloudFunctionsErrors[e.details] ??
          const UserPaymentFailure.unexpected());
    } on StripeException catch (e) {
      _logger.e(
        "Stripe exception proceeding to pay for vip EXCEPTION: $e",
      );
      if (e.error.code == FailureCode.Canceled) {
        return left(const UserPaymentFailure.canceledByUser());
      }
      return left(const UserPaymentFailure.stripeError());
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

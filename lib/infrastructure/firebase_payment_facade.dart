import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:logger/logger.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_errors.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_facade.dart';
import 'package:raver_payments/infrastructure/cloud_functions/responses/checkout.dart';
import 'package:raver_payments/infrastructure/dtos/invoice_data_dto.dart';
import 'dtos/promotion_code_dto.dart';

class FirebasePaymentFacade implements UserPaymentFacade, PartnerPaymentFacade {
  final Logger _logger;
  final Stripe _stripe;
  final PaymentCloudFunctionsFacade _paymentCloudFunctionsFacade;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final FirebaseCrashlytics _crashlytics;

  FirebasePaymentFacade({
    required Stripe stripe,
    required Logger logger,
    required PaymentCloudFunctionsFacade paymentCloudFunctionsFacade,
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required FirebaseCrashlytics firebaseCrashlytics,
  })  : _logger = logger,
        _stripe = stripe,
        _paymentCloudFunctionsFacade = paymentCloudFunctionsFacade,
        _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _crashlytics = firebaseCrashlytics;

  @override
  Future<Either<UserPaymentFailure, PromotionCode>> getPromotionCode(
    String promotionCode,
  ) async {
    final userDoc = _firestore.getCurrentUserDocRef(_firebaseAuth);
    try {
      final result =
          await userDoc.promotionCodesCollection.doc(promotionCode).get();

      if (result.data() == null) {
        return left(const UserPaymentFailure.invalidPromotionCode());
      }

      final code = PromotionCodeDto.fromFirebase(result).toDomain();

      if (!code.isValid) {
        return left(const UserPaymentFailure.promotionCodeExpired());
      }

      return right(code);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserPaymentFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception getting promotion code EXCEPTION: $e',
          unexpectedFailure: const UserPaymentFailure.unexpected(),
          permissionDeniedFailure: const UserPaymentFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserPaymentFailure, Checkout>> proceedToTicketCheckout({
    required String eventId,
    required String currency,
    required BuildContext context,
    String? promotionCode,
    bool isVip = false,
    bool sendInvoice = false,
  }) async {
    try {
      final userId = _firestore.getCurrentUserDocRef(_firebaseAuth).id;

      final checkout = await _paymentCloudFunctionsFacade.createTicketCheckout(
        eventId: eventId,
        userId: userId,
        isVip: isVip,
        promotionCode: promotionCode,
        sendInvoice: sendInvoice,
        successUrl: dotenv.get(successLinkUrl),
        cancelUrl: dotenv.get(cancelLinkUrl),
      );

      return right(checkout);
    } on DioError catch (e) {
      _logger.e("Dio error proceeding to pay for ticket EXCEPTION: $e");
      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> proceedToPayForVip({
    required String ticketId,
    required String currency,
    String? promotionCode,
    bool sendInvoice = false,
  }) async {
    try {
      final userId = _firestore.getCurrentUserDocRef(_firebaseAuth).id;

      final result = await _paymentCloudFunctionsFacade.createVipPaymentSheet(
        ticketId: ticketId,
        promotionCode: promotionCode,
        sendInvoice: sendInvoice,
        userId: userId,
      );

      // await _presentPaymentSheet(
      //   currency: currency,
      //   customerId: result.customerId,
      //   paymentIntentSecret: result.paymentIntentSecret,
      //   ephemeralKeySecret: result.ephemeralKeySecret,
      // );

      return right(unit);
    } on DioError catch (e) {
      _logger.e("Dio error proceeding to pay for vip EXCEPTION: $e");
      return left(await _handleDioError(e));
    } on StripeException catch (e) {
      _logger.e(
        "Stripe exception proceeding to pay for vip EXCEPTION: $e",
      );
      if (e.error.code == FailureCode.Canceled) {
        return left(const UserPaymentFailure.canceledByUser());
      }

      if (_checkIfPaymentAlreadyBeenMade(e)) {
        return left(const UserPaymentFailure.paymentHasAlreadyBeenMade());
      }

      if (_checkIfSessionIsNotExpired(e)) {
        return left(const UserPaymentFailure.paymentSessionHasExpired());
      }

      await _crashlytics.recordError(e, StackTrace.current);
      return left(const UserPaymentFailure.stripeError());
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> updateInvoiceData({
    required String name,
    String? vatNumber,
    String? countryCode,
    bool isCompany = false,
  }) async {
    try {
      await _paymentCloudFunctionsFacade.updateInvoiceData(
        name: name,
        vatNumber: vatNumber,
        countryCode: countryCode,
        isCompany: isCompany,
      );

      return right(unit);
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        'Firebase Functions Exception updating invoice data EXCEPTION: $e',
      );

      final failure = userPaymentCloudFunctionsErrors[e.details];

      if (failure != null) {
        return left(failure);
      }

      await _crashlytics.recordError(e, StackTrace.current);
      return left(const UserPaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<UserPaymentFailure, InvoiceData>> getInvoiceData() async {
    try {
      final userDoc =
          await _firestore.getCurrentUserDocRef(_firebaseAuth).get();

      final invoiceData =
          await _firestore.stripeCustomers.doc(userDoc.id).get();

      final result = InvoiceDataDto.fromFirebase(invoiceData).toDomain();

      return right(result);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserPaymentFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception getting invoice data EXCEPTION: $e',
          unexpectedFailure: const UserPaymentFailure.unexpected(),
          permissionDeniedFailure: const UserPaymentFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserPaymentFailure, double>> getServiceFee() async {
    try {
      final result = await _paymentCloudFunctionsFacade.getServiceFee();
      return right(result);
    } on DioError catch (e) {
      _logger.e('Dio error getting service fee: $e');
      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<PartnerPaymentFailure, EventFees>> getEventFees() async {
    try {
      final result = await _paymentCloudFunctionsFacade.getEventFees();
      return right(result);
    } on DioError catch (e) {
      _logger.e('Dio error getting event fees: $e');
      await _crashlytics.recordError(e.response, StackTrace.current);
      return left(const PartnerPaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> cancelTicketReservation(
    String sessionId,
  ) async {
    try {
      await _paymentCloudFunctionsFacade.cancelTicketReservation(sessionId);
      return right(unit);
    } on DioError catch (e) {
      _logger.e('Dio error canceling ticket reservation EXCEPTION: $e');
      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> presentPaymentSheet({
    required String eventId,
    required String currency,
    String? promotionCode,
    bool isVip = false,
    bool sendInvoice = false,
  }) async {
    final userId = _firestore.getCurrentUserDocRef(_firebaseAuth).id;

    final paymentIntent =
        await _paymentCloudFunctionsFacade.createTicketPaymentSheet(
      eventId: eventId,
      userId: userId,
      sendInvoice: sendInvoice,
      promotionCode: promotionCode,
      isVip: isVip,
    );

    try {
      await _stripe.initGooglePay(
        const GooglePayInitParams(
          merchantName: 'Tonight',
          countryCode: 'PL',
          testEnv: true,
        ),
      );

      await _stripe.presentGooglePay(
        PresentGooglePayParams(
          clientSecret: paymentIntent.paymentIntentSecret,
          currencyCode: currency,
        ),
      );
    } on StripeException catch (e) {
      _logger.e(
        "Stripe exception proceeding to pay for ticket EXCEPTION: $e",
      );
      if (e.error.code == FailureCode.Canceled) {
        await _paymentCloudFunctionsFacade
            .cancelTicketReservation(paymentIntent.paymentIntentId);
        return left(const UserPaymentFailure.canceledByUser());
      }

      if (_checkIfPaymentAlreadyBeenMade(e)) {
        return left(const UserPaymentFailure.paymentHasAlreadyBeenMade());
      }

      if (_checkIfSessionIsNotExpired(e)) {
        return left(const UserPaymentFailure.paymentSessionHasExpired());
      }

      await _crashlytics.recordError(e, StackTrace.current);
      return left(const UserPaymentFailure.stripeError());
    }

    return right(unit);
  }

  Future<UserPaymentFailure> _handleDioError(DioError error) async {
    final failure =
        userPaymentCloudFunctionsErrors[error.response?.data['message']];

    if (failure != null) {
      return failure;
    }

    await _crashlytics.recordError(error.response, StackTrace.current);
    return const UserPaymentFailure.unexpected();
  }

  bool _checkIfPaymentAlreadyBeenMade(StripeException exception) {
    final message = exception.error.localizedMessage;

    if (message == null) return false;

    if (message.contains('succeeded')) {
      return true;
    }

    return false;
  }

  bool _checkIfSessionIsNotExpired(StripeException exception) {
    final message = exception.error.localizedMessage;

    if (message == null) return false;

    if (message.contains('canceled')) {
      return true;
    }

    return false;
  }
}

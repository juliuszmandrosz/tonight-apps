import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:logger/logger.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_payments/domain/facades/user_payment_facade.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_errors.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_facade.dart';
import 'package:raver_payments/infrastructure/dtos/invoice_data_dto.dart';
import 'dtos/promotion_code_dto.dart';

class FirebasePaymentFacade implements UserPaymentFacade {
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
      _logger.e("Exception getting promotion code EXCEPTION: $e");
      _crashlytics.recordError(e, StackTrace.current);
      return left(const UserPaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> proceedToPayForTicket({
    required String eventId,
    required String currency,
    String? promotionCode,
    bool isVip = false,
    bool sendInvoice = false,
  }) async {
    try {
      final userId = _firestore.getCurrentUserDocRef(_firebaseAuth).id;

      final result =
          await _paymentCloudFunctionsFacade.createTicketPaymentSheet(
        eventId: eventId,
        userId: userId,
        isVip: isVip,
        promotionCode: promotionCode,
        sendInvoice: sendInvoice,
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
        await _crashlytics.recordError(e, StackTrace.current);
        return left(const UserPaymentFailure.stripeError());
      }

      return right(unit);
    } on DioError catch (e) {
      _logger.e(
        "Dio error proceeding to pay for ticket EXCEPTION: $e",
      );
      final failure =
          userPaymentCloudFunctionsErrors[e.response?.data['message']];

      if (failure != null) {
        return left(failure);
      }

      await _crashlytics.recordError(e.response, StackTrace.current);
      return left(const UserPaymentFailure.unexpected());
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
      final result = await _paymentCloudFunctionsFacade.createVipPaymentSheet(
        ticketId: ticketId,
        promotionCode: promotionCode,
        sendInvoice: sendInvoice,
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

      final failure = userPaymentCloudFunctionsErrors[e.details];

      if (failure != null) {
        return left(failure);
      }

      await _crashlytics.recordError(e, StackTrace.current);
      return left(const UserPaymentFailure.unexpected());
    } on StripeException catch (e) {
      _logger.e(
        "Stripe exception proceeding to pay for vip EXCEPTION: $e",
      );
      if (e.error.code == FailureCode.Canceled) {
        return left(const UserPaymentFailure.canceledByUser());
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
      _logger.e('Firebase Exception getting invoice data EXCEPTION: $e');
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const UserPaymentFailure.unexpected());
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
        merchantDisplayName: 'Tonight',
        appearance: PaymentSheetAppearance(
          shapes: const PaymentSheetShape(borderRadius: 8),
          colors: PaymentSheetAppearanceColors(
            icon: colors.onSurface,
            background: colors.background,
            error: colors.error,
            primary: colors.primary,
            componentBackground: colors.surface,
            primaryText: colors.onSurface,
          ),
          primaryButton: PaymentSheetPrimaryButtonAppearance(
            shapes: const PaymentSheetPrimaryButtonShape(blurRadius: 20),
            colors: PaymentSheetPrimaryButtonTheme(
              dark: PaymentSheetPrimaryButtonThemeColors(
                text: colors.onSurface,
                background: colors.primary,
                border: colors.primary,
              ),
            ),
          ),
        ),
        style: ThemeMode.dark,
      ),
    );

    await _stripe.presentPaymentSheet();
  }
}

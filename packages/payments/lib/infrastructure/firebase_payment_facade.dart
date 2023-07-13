import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:logger/logger.dart';
import 'package:payments/application/core/tonight_payment_method.dart';
import 'package:payments/domain/domain.dart';
import 'package:payments/infrastructure/cloud_functions/payment_cloud_functions_errors.dart';
import 'package:payments/infrastructure/cloud_functions/payment_cloud_functions_facade.dart';
import 'package:payments/infrastructure/cloud_functions/responses/create_payment_sheet_response.dart';
import 'package:payments/infrastructure/dtos/customer_data_dto.dart';
import 'package:translations/translations.dart';

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
      final result = await userDoc.promotionCodesCollection
          .doc(promotionCode.toUpperCase())
          .get();
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
          unexpectedFailure: const UserPaymentFailure.unexpected(),
          permissionDeniedFailure: const UserPaymentFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> proceedToPayForTicket({
    required String eventId,
    required String currency,
    required TonightPaymentMethod paymentMethod,
    required double amount,
    required int quantity,
    required String customerEmail,
    String? promotionCode,
    bool sendInvoice = false,
  }) async {
    try {
      final userId = _firebaseAuth.tryGetFirebaseUser().uid;
      final paymentIntent =
          await _paymentCloudFunctionsFacade.createTicketPaymentSheet(
        eventId: eventId,
        userId: userId,
        sendInvoice: sendInvoice,
        promotionCode: promotionCode,
        quantity: quantity,
      );
      try {
        await _initPayment(
          amount: amount,
          currency: currency,
          paymentMethod: paymentMethod,
          paymentIntent: paymentIntent,
          quantity: quantity,
          email: customerEmail,
        );
      } on StripeException catch (e) {
        _logger.e(e);
        if (e.error.code == FailureCode.Canceled) {
          await _paymentCloudFunctionsFacade
              .cancelTicketReservation(paymentIntent.paymentIntentId);
          return left(const UserPaymentFailure.canceledByUser());
        }
        if (_checkIfPaymentAlreadyBeenMade(e)) {
          return left(const UserPaymentFailure.paymentHasAlreadyBeenMade());
        }
        if (_checkIfPaymentIsExpired(e)) {
          return left(const UserPaymentFailure.paymentSessionHasExpired());
        }
        await _crashlytics.recordError(e, StackTrace.current);
        return left(UserPaymentFailure.stripeError(
          '${e.error.localizedMessage}',
        ));
      } on PlatformException catch (e) {
        if (e.code == 'Canceled') {
          await _paymentCloudFunctionsFacade
              .cancelTicketReservation(paymentIntent.paymentIntentId);
          return left(const UserPaymentFailure.canceledByUser());
        }
        await _crashlytics.recordError(e, StackTrace.current);
        return left(const UserPaymentFailure.unexpected());
      }

      return right(unit);
    } on DioError catch (e) {
      _logger.e(e);
      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> updatePaymentMethod(
    TonightPaymentMethod paymentMethod,
  ) async {
    try {
      final userId = _firebaseAuth.tryGetFirebaseUser().uid;
      await _firestore.stripeCustomers
          .doc(userId)
          .update({'paymentMethod': paymentMethod.name});
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          unexpectedFailure: const UserPaymentFailure.unexpected(),
          permissionDeniedFailure: const UserPaymentFailure.permissionDenied(),
        ),
      );
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
      _logger.e(e);
      final failure = userPaymentCloudFunctionsErrors[e.details];
      if (failure != null) {
        return left(failure);
      }
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const UserPaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> updateCustomerEmail(
    String email,
  ) async {
    try {
      final currentUserId = _firebaseAuth.tryGetFirebaseUser().uid;
      final customerDocRef = _firestore.stripeCustomers.doc(currentUserId);
      await customerDocRef.update({'email': email});
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          unexpectedFailure: const UserPaymentFailure.unexpected(),
          permissionDeniedFailure: const UserPaymentFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserPaymentFailure, CustomerData>> getCustomerData() async {
    try {
      final userDoc =
          await _firestore.getCurrentUserDocRef(_firebaseAuth).get();
      final customerData =
          await _firestore.stripeCustomers.doc(userDoc.id).get();
      final result = CustomerDataDto.fromFirebase(customerData).toDomain();
      return right(result);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserPaymentFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
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
      _logger.e(e);
      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<PartnerPaymentFailure, EventFees>> getEventFees() async {
    try {
      final result = await _paymentCloudFunctionsFacade.getEventFees();
      return right(result);
    } on DioError catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e.response, StackTrace.current);
      return left(const PartnerPaymentFailure.unexpected());
    }
  }

  Future<void> _initPayment({
    required TonightPaymentMethod paymentMethod,
    required String currency,
    required CreatePaymentSheetResponse paymentIntent,
    required double amount,
    required int quantity,
    required String email,
  }) async {
    switch (paymentMethod) {
      case TonightPaymentMethod.wallet:
        await _presentWalletPaymentSheet(
          currency: currency,
          paymentIntentSecret: paymentIntent.paymentIntentSecret,
          amount: amount,
          quantity: quantity,
        );
        break;
      case TonightPaymentMethod.p24:
        await _presentP24Payment(
          paymentIntentSecret: paymentIntent.paymentIntentSecret,
          email: email,
        );
        break;
      case TonightPaymentMethod.card:
        await _presentCardPaymentSheet(
          currency: currency,
          customerId: paymentIntent.customerId,
          paymentIntentSecret: paymentIntent.paymentIntentSecret,
          ephemeralKeySecret: paymentIntent.ephemeralKeySecret,
          email: email,
        );
        break;
    }
  }

  Future<void> _presentP24Payment({
    required String paymentIntentSecret,
    required String email,
  }) async {
    await _stripe.confirmPayment(
      paymentIntentSecret,
      PaymentMethodParams.p24(
        paymentMethodData: PaymentMethodData(
          billingDetails: BillingDetails(email: email),
        ),
      ),
    );
  }

  Future<void> _presentWalletPaymentSheet({
    required String currency,
    required String paymentIntentSecret,
    required double amount,
    required int quantity,
  }) async {
    if (Platform.isIOS) {
      await _stripe.presentApplePay(
        ApplePayPresentParams(
          cartItems: [
            ApplePayCartSummaryItem.immediate(
              label: S().tickets(quantity),
              amount: '$amount',
            ),
          ],
          country: 'PL',
          currency: currency,
        ),
      );

      await _stripe.confirmApplePayPayment(paymentIntentSecret);

      return;
    }

    await _stripe.initGooglePay(
      const GooglePayInitParams(
        merchantName: 'Tonight',
        countryCode: 'PL',
      ),
    );

    await _stripe.presentGooglePay(
      PresentGooglePayParams(
        clientSecret: paymentIntentSecret,
        currencyCode: currency,
      ),
    );
  }

  Future<void> _presentCardPaymentSheet({
    required String currency,
    required String customerId,
    required String paymentIntentSecret,
    required String ephemeralKeySecret,
    required String email,
  }) async {
    await _stripe.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        customerId: customerId,
        paymentIntentClientSecret: paymentIntentSecret,
        customerEphemeralKeySecret: ephemeralKeySecret,
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
            placeholderText: colors.outline,
            secondaryText: colors.onSurface,
            componentBorder: colors.outline,
            componentDivider: colors.outline,
            componentText: colors.onSurface,
          ),
          primaryButton: PaymentSheetPrimaryButtonAppearance(
            shapes: const PaymentSheetPrimaryButtonShape(blurRadius: 20),
            colors: PaymentSheetPrimaryButtonTheme(
              light: PaymentSheetPrimaryButtonThemeColors(
                text: colors.onSurface,
                background: colors.primary,
                border: colors.primary,
              ),
              dark: PaymentSheetPrimaryButtonThemeColors(
                text: colors.onSurface,
                background: colors.primary,
                border: colors.primary,
              ),
            ),
          ),
        ),
        billingDetails: BillingDetails(email: email),
      ),
    );

    await _stripe.presentPaymentSheet();
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
    if (message.contains('succeeded')) return true;
    return false;
  }

  bool _checkIfPaymentIsExpired(StripeException exception) {
    final message = exception.error.localizedMessage;
    if (message == null) return false;
    if (message.contains('canceled')) return true;
    return false;
  }
}

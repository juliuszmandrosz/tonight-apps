import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:logger/logger.dart';
import 'package:raver_payments/application/core/raver_payment_method.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_errors.dart';
import 'package:raver_payments/infrastructure/cloud_functions/payment_cloud_functions_facade.dart';
import 'package:raver_payments/infrastructure/cloud_functions/responses/create_payment_sheet_response.dart';
import 'package:raver_payments/infrastructure/dtos/customer_data_dto.dart';
import 'package:raver_translations/raver_translations.dart';
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
  Future<Either<UserPaymentFailure, Unit>> proceedToPayForTicket({
    required String eventId,
    required String currency,
    required RaverPaymentMethod paymentMethod,
    required double amount,
    String? promotionCode,
    bool isVip = false,
    bool sendInvoice = false,
  }) async {
    try {
      final userId = _firestore.getCurrentUserDocRef(_firebaseAuth).id;

      final user = _firebaseAuth.tryGetFirebaseUser();

      final paymentIntent =
          await _paymentCloudFunctionsFacade.createTicketPaymentSheet(
        eventId: eventId,
        userId: userId,
        sendInvoice: sendInvoice,
        promotionCode: promotionCode,
        paymentMethod: paymentMethod,
        isVip: isVip,
      );

      try {
        await _initPayment(
          userEmail: user.email!,
          amount: amount,
          currency: currency,
          paymentMethod: paymentMethod,
          paymentIntent: paymentIntent,
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
    } on DioError catch (e) {
      _logger.e("Dio error proceeding to pay for ticket EXCEPTION: $e");
      return left(await _handleDioError(e));
    }
  }

  @override
  Future<Either<UserPaymentFailure, Unit>> proceedToPayForVip({
    required String ticketId,
    required String currency,
    required RaverPaymentMethod paymentMethod,
    required double amount,
    String? promotionCode,
    bool sendInvoice = false,
  }) async {
    try {
      final userId = _firestore.getCurrentUserDocRef(_firebaseAuth).id;

      final user = _firebaseAuth.tryGetFirebaseUser();

      final paymentIntent =
          await _paymentCloudFunctionsFacade.createVipPaymentSheet(
        ticketId: ticketId,
        promotionCode: promotionCode,
        sendInvoice: sendInvoice,
        paymentMethod: paymentMethod,
        userId: userId,
      );

      await _initPayment(
        userEmail: user.email!,
        amount: amount,
        currency: currency,
        paymentMethod: paymentMethod,
        paymentIntent: paymentIntent,
      );

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
  Future<Either<UserPaymentFailure, Unit>> updatePaymentMethod(
    RaverPaymentMethod paymentMethod,
  ) async {
    try {
      final userId = _firebaseAuth.tryGetFirebaseUser().uid;
      await _firestore.stripeCustomers.doc(userId).update(
        {'paymentMethod': paymentMethod.name},
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception updating invoice data EXCEPTION: $e',
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
          message: 'Firebase Exception getting customer data EXCEPTION: $e',
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

  Future<void> _initPayment({
    required RaverPaymentMethod paymentMethod,
    required String currency,
    required CreatePaymentSheetResponse paymentIntent,
    required double amount,
    required String userEmail,
  }) async {
    switch (paymentMethod) {
      case RaverPaymentMethod.wallet:
        await _presentWalletPaymentSheet(
          currency: currency,
          paymentIntentSecret: paymentIntent.paymentIntentSecret,
          amount: amount,
        );
        break;
      case RaverPaymentMethod.p24:
        await _presentP24Payment(
          paymentIntentSecret: paymentIntent.paymentIntentSecret,
          userEmail: userEmail,
        );
        break;
      case RaverPaymentMethod.card:
        await _presentCardPaymentSheet(
          currency: currency,
          customerId: paymentIntent.customerId,
          paymentIntentSecret: paymentIntent.paymentIntentSecret,
          ephemeralKeySecret: paymentIntent.ephemeralKeySecret,
          userEmail: userEmail,
        );
        break;
    }
  }

  Future<void> _presentP24Payment({
    required String paymentIntentSecret,
    required String userEmail,
  }) async {
    await _stripe.confirmPayment(
      paymentIntentSecret,
      PaymentMethodParams.p24(
        paymentMethodData: PaymentMethodData(
          billingDetails: BillingDetails(
            email: userEmail,
          ),
        ),
      ),
    );
  }

  Future<void> _presentWalletPaymentSheet({
    required String currency,
    required String paymentIntentSecret,
    required double amount,
  }) async {
    if (Platform.isIOS) {
      await _stripe.presentApplePay(
        ApplePayPresentParams(
          cartItems: [
            ApplePayCartSummaryItem.immediate(
              label: S().tickets(1),
              amount: '$amount',
            ),
          ],
          country: 'PL',
          currency: currency,
        ),
      );

      await _stripe.confirmApplePayPayment(paymentIntentSecret);
    }

    await _stripe.initGooglePay(
      const GooglePayInitParams(
        merchantName: 'Tonight',
        countryCode: 'PL',
        // TODO - change
        testEnv: true,
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
    required String userEmail,
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
          billingDetails: BillingDetails(email: userEmail)),
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

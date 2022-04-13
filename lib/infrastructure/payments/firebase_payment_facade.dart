import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/payments/payment_facade.dart';
import 'package:raver/domain/payments/payment_failure.dart';
import 'package:raver/domain/payments/promotion_code_entity.dart';
import 'package:raver/domain/payments/ticket_payment_entity.dart';
import 'package:raver/infrastructure/core/cloud_functions_failures.dart';
import 'package:raver/infrastructure/core/firestore_extension_user.dart';
import 'package:raver/infrastructure/payments/cloud_functions/params/add_ticket_payment_params.dart';
import 'package:raver/infrastructure/payments/cloud_functions/params/create_ticket_payment_sheet_params.dart';
import 'package:raver/infrastructure/payments/cloud_functions/params/get_vip_price_params.dart';
import 'package:raver/infrastructure/payments/cloud_functions/payment_cloud_functions_facade.dart';
import 'package:raver/infrastructure/payments/dtos/promotion_code_dto.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';

class FirebasePaymentFacade implements PaymentFacade {
  final FirebaseFirestore _firestore;
  final Logger _logger;
  final PaymentCloudFunctionsFacade _paymentCloudFunctionsFacade;

  FirebasePaymentFacade({
    required FirebaseFirestore firestore,
    required Logger logger,
    required PaymentCloudFunctionsFacade paymentCloudFunctionsFacade,
  })  : _firestore = firestore,
        _logger = logger,
        _paymentCloudFunctionsFacade = paymentCloudFunctionsFacade;

  @override
  Future<Either<PaymentFailure, Ticket>> proceedToPayForTicket(
      TicketPayment ticketPayment) async {
    try {
      final paymentIntentId = await _createPaymentIntent(ticketPayment);

      await _addTicketPayment(ticketPayment, paymentIntentId);

      final ticket = await _addTicket(ticketPayment);

      return right(ticket);
    } on StripeException catch (e) {
      _logger.e("Stripe exception during payment EXCEPTION: $e");
      if (e.error.code == FailureCode.Canceled) {
        return left(const PaymentFailure.canceled());
      }
      return left(const PaymentFailure.stripeError());
    } on FirebaseFunctionsException catch (e) {
      _logger.e("Firebase Functions Exception during payment EXCEPTION: $e");
      return left(cloudFunctionsFailures[e.details] ??
          const PaymentFailure.unexpected());
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during payment EXCEPTION: $e");
      return left(const PaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<PaymentFailure, PromotionCode>> getPromotionCode(
      String promotionCode) async {
    final userDoc = await _firestore.userDocument();
    try {
      final result =
          await userDoc.promotionCodesCollection.doc(promotionCode).get();

      if (result.data() == null) {
        return left(const PaymentFailure.invalidPromotionCode());
      }

      final code = PromotionCodeDto.fromFirebase(result).toDomain();

      if (!code.isValid) {
        return left(const PaymentFailure.promotionCodeExpired());
      }

      return right(code);
    } on FirebaseException catch (e) {
      _logger.e("Exception getting promotion code EXCEPTION: $e");
      return left(const PaymentFailure.unexpected());
    }
  }

  @override
  Future<Either<PaymentFailure, int>> getVipPrice(
      String? eventId, String? ticketId) async {
    try {
      final params = GetVipPriceParams(eventId: eventId, ticketId: ticketId);

      final price = await _paymentCloudFunctionsFacade.getVipPrice(params);

      return right(price);
    } on FirebaseFunctionsException catch (e) {
      _logger.e("Exception getting vip price EXCEPTION: $e");
      return left(const PaymentFailure.unexpected());
    }
  }

  _createPaymentIntent(
    TicketPayment ticketPayment,
  ) async {
    final createPaymentParams = CreateTicketPaymentSheetParams(
      ticketPaymentId: ticketPayment.id,
      eventId: ticketPayment.eventId,
      isVip: ticketPayment.isVip,
      promotionCode: ticketPayment.promotionCode,
    );

    final paymentSheet = await _paymentCloudFunctionsFacade
        .createTicketPaymentSheet(createPaymentParams);

    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      currencyCode: ticketPayment.currency,
      customerId: paymentSheet.customerId,
      paymentIntentClientSecret: paymentSheet.paymentIntentSecret,
      customerEphemeralKeySecret: paymentSheet.ephemeralKeySecret,
      testEnv: true,
      googlePay: true,
      applePay: true,
      merchantDisplayName: 'Raver',
    ));

    await Stripe.instance.presentPaymentSheet();

    return paymentSheet.paymentIntentId;
  }

  Future<Ticket> _addTicket(TicketPayment ticketPayment) async {
    final userDoc = await _firestore.userDocument();
    final ticket = Ticket(
      clubName: ticketPayment.clubName,
      eventName: ticketPayment.eventName,
      eventId: ticketPayment.eventId,
      eventDateTime: ticketPayment.eventDateTime,
      price: ticketPayment.price,
      currency: ticketPayment.currency,
      isVip: ticketPayment.isVip,
      ticketPaymentId: ticketPayment.id,
    );

    final ticketDto = TicketDto.fromDomain(ticket);

    await userDoc.ticketCollection.doc(ticket.id).set(ticketDto.toJson());

    return ticket;
  }

  _addTicketPayment(
    TicketPayment ticketPayment,
    String paymentIntentId,
  ) async {
    final params = AddTicketPaymentParams(
      ticketPaymentId: ticketPayment.id,
      paymentIntentId: paymentIntentId,
      eventId: ticketPayment.eventId,
      isVip: ticketPayment.isVip,
      promotionCode: ticketPayment.promotionCode,
    );

    await _paymentCloudFunctionsFacade.addTicketPayment(params);
  }
}

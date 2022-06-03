import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:raver_payments/infrastructure/cloud_functions/cloud_functions_names.dart';
import 'package:raver_payments/infrastructure/cloud_functions/responses/create_payment_sheet_response.dart';

abstract class PaymentCloudFunctionsFacade {
  Future<CreatePaymentSheetResponse> createTicketPaymentSheet({
    required String eventId,
    String? promotionCode,
    bool isVip = false,
  });

  Future<CreatePaymentSheetResponse> createVipPaymentSheet({
    required String ticketId,
    String? promotionCode,
  });

  Future<Unit> cancelTicketReservation(String ticketPaymentSessionId);
}

class PaymentCloudFunctionsFacadeImpl implements PaymentCloudFunctionsFacade {
  final FirebaseFunctions _functions;

  PaymentCloudFunctionsFacadeImpl(this._functions);

  @override
  Future<CreatePaymentSheetResponse> createTicketPaymentSheet({
    required String eventId,
    String? promotionCode,
    bool isVip = false,
  }) async {
    final createTicketPaymentSheetFn =
        _functions.httpsCallable(createTicketPaymentSheetFnName);

    final result = await createTicketPaymentSheetFn.call({
      'eventId': eventId,
      'promotionCode': promotionCode,
      'isVip': isVip,
    });

    return CreatePaymentSheetResponse.fromJson(result.data);
  }

  @override
  Future<CreatePaymentSheetResponse> createVipPaymentSheet({
    required String ticketId,
    String? promotionCode,
  }) async {
    final createVipPaymentSheetFn =
        _functions.httpsCallable(createVipPaymentSheetFnName);

    final result = await createVipPaymentSheetFn.call({
      'ticketId': ticketId,
      'promotionCode': promotionCode,
    });

    return CreatePaymentSheetResponse.fromJson(result.data);
  }

  @override
  Future<Unit> cancelTicketReservation(String ticketPaymentSessionId) async {
    final cancelTicketReservationFn =
        _functions.httpsCallable(cancelTicketReservationFnName);

    await cancelTicketReservationFn.call({
      'ticketPaymentSessionId': ticketPaymentSessionId,
    });

    return unit;
  }
}

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:raver_payments/infrastructure/cloud_functions/cloud_functions_names.dart';
import 'package:raver_payments/infrastructure/cloud_functions/responses/create_payment_sheet_response.dart';

abstract class PaymentCloudFunctionsFacade {
  Future<CreatePaymentSheetResponse> createTicketPaymentSheet({
    required String eventId,
    String? promotionCode,
    bool isVip = false,
    bool sendInvoice = false,
  });

  Future<CreatePaymentSheetResponse> createVipPaymentSheet({
    required String ticketId,
    String? promotionCode,
    bool sendInvoice = false,
  });

  Future<Unit> cancelTicketReservation(String ticketPaymentSessionId);

  Future<Unit> updateInvoiceData({
    required String name,
    String? vatNumber,
    String? countryCode,
    bool isCompany = false,
  });
}

class PaymentCloudFunctionsFacadeImpl implements PaymentCloudFunctionsFacade {
  final FirebaseFunctions _functions;

  PaymentCloudFunctionsFacadeImpl(this._functions);

  @override
  Future<CreatePaymentSheetResponse> createTicketPaymentSheet({
    required String eventId,
    String? promotionCode,
    bool isVip = false,
    bool sendInvoice = false,
  }) async {
    final createTicketPaymentSheetFn =
        _functions.httpsCallable(createTicketPaymentSheetFnName);

    final result = await createTicketPaymentSheetFn.call({
      'eventId': eventId,
      'promotionCode': promotionCode,
      'isVip': isVip,
      'sendInvoice': sendInvoice,
    });

    return CreatePaymentSheetResponse.fromJson(result.data);
  }

  @override
  Future<CreatePaymentSheetResponse> createVipPaymentSheet({
    required String ticketId,
    String? promotionCode,
    bool sendInvoice = false,
  }) async {
    final createVipPaymentSheetFn =
        _functions.httpsCallable(createVipPaymentSheetFnName);

    final result = await createVipPaymentSheetFn.call({
      'ticketId': ticketId,
      'sendInvoice': sendInvoice,
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

  @override
  Future<Unit> updateInvoiceData({
    required String name,
    String? vatNumber,
    String? countryCode,
    bool isCompany = false,
  }) async {
    final updateInvoiceDataFn =
        _functions.httpsCallable(updateInvoiceDataFnName);

    await updateInvoiceDataFn.call({
      'name': name,
      'vatNumber': vatNumber,
      'countryCode': countryCode,
      'isCompany': isCompany,
    });

    return unit;
  }
}

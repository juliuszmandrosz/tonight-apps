import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:raver_payments/infrastructure/cloud_functions/cloud_functions_names.dart';
import 'package:raver_payments/infrastructure/cloud_functions/responses/create_payment_sheet_response.dart';

abstract class PaymentCloudFunctionsFacade {
  Future<CreatePaymentSheetResponse> createTicketPaymentSheet({
    required String eventId,
    required String userId,
    String? promotionCode,
    bool isVip = false,
    bool sendInvoice = false,
  });

  Future<CreatePaymentSheetResponse> createVipPaymentSheet({
    required String ticketId,
    required String userId,
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
  final Dio _dio;

  PaymentCloudFunctionsFacadeImpl({
    required FirebaseFunctions firebaseFunctions,
    required Dio dio,
  })  : _functions = firebaseFunctions,
        _dio = dio;

  @override
  Future<CreatePaymentSheetResponse> createTicketPaymentSheet({
    required String eventId,
    required String userId,
    String? promotionCode,
    bool isVip = false,
    bool sendInvoice = false,
  }) async {
    const endpoint = 'payments/createTicketPaymentSheet';

    final data = {
      'eventId': eventId,
      'userId': userId,
      'promotionCode': promotionCode,
      'isVip': isVip,
      'sendInvoice': sendInvoice,
    };

    final result = await _dio.post(endpoint, data: data);

    return CreatePaymentSheetResponse.fromJson(result.data);
  }

  @override
  Future<CreatePaymentSheetResponse> createVipPaymentSheet({
    required String ticketId,
    required String userId,
    String? promotionCode,
    bool sendInvoice = false,
  }) async {
    const endpoint = 'payments/createVipPaymentSheet';

    final data = {
      'ticketId': ticketId,
      'userId': userId,
      'promotionCode': promotionCode,
      'sendInvoice': sendInvoice,
    };

    final result = await _dio.post(endpoint, data: data);

    return CreatePaymentSheetResponse.fromJson(result.data);
  }

  @override
  Future<Unit> cancelTicketReservation(String ticketPaymentSessionId) async {
    const endpoint = 'payments/cancelTicketReservation';

    final data = {'ticketPaymentSessionId': ticketPaymentSessionId};

    await _dio.post(endpoint, data: data);

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

import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_payments/infrastructure/cloud_functions/cloud_functions_names.dart';
import 'package:raver_payments/infrastructure/cloud_functions/responses/create_payment_sheet_response.dart';
import 'package:http/http.dart' as http;

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
  final FirebaseRemoteConfig _config;

  PaymentCloudFunctionsFacadeImpl({
    required FirebaseFunctions firebaseFunctions,
    required FirebaseRemoteConfig firebaseRemoteConfig,
  })  : _functions = firebaseFunctions,
        _config = firebaseRemoteConfig;

  @override
  Future<CreatePaymentSheetResponse> createTicketPaymentSheet({
    required String eventId,
    required String userId,
    String? promotionCode,
    bool isVip = false,
    bool sendInvoice = false,
  }) async {
    final endpoint = _config.getString(apiEndpoint);

    final url = Uri.parse(
      '${endpoint}payments/createTicketPaymentSheet',
    );

    final body = json.encode({
      'eventId': eventId,
      'userId': userId,
      'promotionCode': promotionCode,
      'isVip': isVip,
      'sendInvoice': sendInvoice,
    });

    final result = await http.post(url, headers: getHttpHeaders(), body: body);

    return CreatePaymentSheetResponse.fromJson(json.decode(result.body));
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

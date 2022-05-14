import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:raver_payments/infrastructure/cloud_functions/cloud_functions_names.dart';
import 'package:raver_payments/infrastructure/cloud_functions/responses/create_payment_sheet_response.dart';

abstract class PaymentCloudFunctionsFacade {
  Future<Option<CreatePaymentSheetResponse>> createEventCancelationPaymentSheet(
    String eventId,
  );

  Future<Option<CreatePaymentSheetResponse>> createPostponeEventPaymentSheet({
    required String eventId,
    required Timestamp newEventStartDateTime,
    required Timestamp newEventEndDateTime,
  });

  Future<Unit> cancelEventCancelation(String cancelEventPaymentSessionId);

  Future<Unit> cancelEventPostpone(String postponeEventPaymentSessionId);
}

class PaymentCloudFunctionsFacadeImpl implements PaymentCloudFunctionsFacade {
  final FirebaseFunctions _functions;

  PaymentCloudFunctionsFacadeImpl(this._functions);

  @override
  Future<Option<CreatePaymentSheetResponse>> createEventCancelationPaymentSheet(
    String eventId,
  ) async {
    final createEventCancelationPaymentSheetFn =
        _functions.httpsCallable(createEventCancelationPaymentSheetFnName);

    final result = await createEventCancelationPaymentSheetFn.call({
      'eventId': eventId,
    });

    return result.data != null
        ? some(CreatePaymentSheetResponse.fromJson(result.data))
        : none();
  }

  @override
  Future<Option<CreatePaymentSheetResponse>> createPostponeEventPaymentSheet({
    required String eventId,
    required Timestamp newEventStartDateTime,
    required Timestamp newEventEndDateTime,
  }) async {
    final createPostponeEventPaymentSheetFn =
        _functions.httpsCallable(createPostponeEventPaymentSheetFnName);

    final result = await createPostponeEventPaymentSheetFn.call({
      'eventId': eventId,
      'newEventStartTimestamp': newEventStartDateTime.millisecondsSinceEpoch,
      'newEventEndTimestamp': newEventEndDateTime.millisecondsSinceEpoch,
    });

    return result.data != null
        ? some(CreatePaymentSheetResponse.fromJson(result.data))
        : none();
  }

  @override
  Future<Unit> cancelEventCancelation(
    String cancelEventPaymentSessionId,
  ) async {
    final cancelEventCancelationFn =
        _functions.httpsCallable(cancelEventCancelationFnName);

    await cancelEventCancelationFn.call({
      'cancelEventPaymentSessionId': cancelEventPaymentSessionId,
    });

    return unit;
  }

  @override
  Future<Unit> cancelEventPostpone(String postponeEventPaymentSessionId) async {
    final cancelEventPostponeFn =
        _functions.httpsCallable(cancelEventPostponeFnName);

    await cancelEventPostponeFn.call({
      'postponeEventPaymentSessionId': postponeEventPaymentSessionId,
    });

    return unit;
  }
}

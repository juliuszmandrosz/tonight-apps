import 'package:cloud_functions/cloud_functions.dart';
import 'package:raver_payments/infrastructure/cloud_functions/cloud_functions_names.dart';
import 'package:raver_payments/infrastructure/cloud_functions/responses/create_payment_sheet_response.dart';

abstract class PaymentCloudFunctionsFacade {
  Future<CreatePaymentSheetResponse> createEventCancelationPaymentSheet(
    String eventId,
  );
}

class PaymentCloudFunctionsFacadeImpl implements PaymentCloudFunctionsFacade {
  final FirebaseFunctions _functions;

  PaymentCloudFunctionsFacadeImpl(this._functions);

  @override
  Future<CreatePaymentSheetResponse> createEventCancelationPaymentSheet(
    String eventId,
  ) async {
    final createEventCancelationPaymentSheetFn =
        _functions.httpsCallable(createEventCancelationPaymentSheetFnName);

    final result = await createEventCancelationPaymentSheetFn.call({
      'eventId': eventId,
    });

    return CreatePaymentSheetResponse.fromJson(result.data);
  }
}

import 'package:collection/collection.dart';

enum TonightPaymentMethod {
  // wallet,
  p24,
  card,
}

TonightPaymentMethod getPaymentMethodFromString(String? paymentMethod) {
  return TonightPaymentMethod.values.firstWhereOrNull(
        (method) => method.name == paymentMethod,
      ) ??
      TonightPaymentMethod.p24;
}

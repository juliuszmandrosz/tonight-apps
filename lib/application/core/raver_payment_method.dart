import 'package:collection/collection.dart';

enum RaverPaymentMethod {
  wallet,
  p24,
  card,
}

RaverPaymentMethod getPaymentMethodFromString(String? paymentMethod) {
  return RaverPaymentMethod.values.firstWhereOrNull(
        (method) => method.name == paymentMethod,
      ) ??
      RaverPaymentMethod.p24;
}

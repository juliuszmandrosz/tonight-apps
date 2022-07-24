import 'dart:io';

import 'package:raver_payments/application/core/raver_payment_method.dart';

final paymentMethodsTranslations = {
  // TODO - add translations
  RaverPaymentMethod.card: 'Karta',
  RaverPaymentMethod.p24: 'Przelewy24 / BLIK',
  RaverPaymentMethod.wallet: Platform.isIOS ? 'Apple Pay' : 'Google Pay',
};

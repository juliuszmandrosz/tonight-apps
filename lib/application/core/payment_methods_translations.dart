import 'dart:io';

import 'package:raver_payments/application/core/raver_payment_method.dart';
import 'package:raver_translations/raver_translations.dart';

final paymentMethodsTranslations = {
  RaverPaymentMethod.card: S().card,
  RaverPaymentMethod.p24: 'Przelewy24 / BLIK',
  RaverPaymentMethod.wallet: Platform.isIOS ? 'Apple Pay' : 'Google Pay',
};

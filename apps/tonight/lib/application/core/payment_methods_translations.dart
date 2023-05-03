import 'dart:io';

import 'package:payments/application/core/tonight_payment_method.dart';
import 'package:translations/translations.dart';

final paymentMethodsTranslations = {
  TonightPaymentMethod.card: S().card,
  TonightPaymentMethod.p24: 'Przelewy24 / BLIK',
  TonightPaymentMethod.wallet: Platform.isIOS ? 'Apple Pay' : 'Google Pay',
};

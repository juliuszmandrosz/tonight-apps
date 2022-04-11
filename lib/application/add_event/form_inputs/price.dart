import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

enum PriceError { empty, tooLow }

final priceErrorMessages = {
  PriceError.empty: S().enterPrice,
  PriceError.tooLow: S().priceTooLow,
};

String? getPriceErrorMessage(AddEventState state) {
  if (state.price.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return priceErrorMessages[state.price.error];
}

class Price extends FormzInput<int?, PriceError> {
  const Price.pure() : super.pure(null);

  const Price.dirty(int? value) : super.dirty(value);

  @override
  PriceError? validator(int? value) {
    if (value == null) {
      return PriceError.empty;
    }

    // TODO -  Change based on currency
    if (value < 20) {
      return PriceError.tooLow;
    }

    // TODO - Add max price

    return null;
  }
}

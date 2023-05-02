import 'package:common/common.dart';
import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:translations/raver_translations.dart';

// TODO - add price too high error
enum PriceAtGateError { empty }

final priceAtGateErrorMessages = {
  PriceAtGateError.empty: S().enterPrice,
};

String? getPriceAtGateErrorMessage(AddEventState state) {
  if (state.priceAtGate.fold(() => true, (price) => price.valid) ||
      state.status != FormzStatus.invalid) {
    return null;
  }

  return priceAtGateErrorMessages[state.priceAtGate.getOrCrash().error];
}

class PriceAtGate extends FormzInput<int?, PriceAtGateError> {
  PriceAtGate.pure() : super.pure(null);

  PriceAtGate.dirty(int? value) : super.dirty(value);

  @override
  PriceAtGateError? validator(int? value) {
    if (value == null) {
      return PriceAtGateError.empty;
    }

    return null;
  }
}

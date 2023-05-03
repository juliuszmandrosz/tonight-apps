import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:tonight_partners/application/add_edit_ticket_pool/form_inputs/price_utils.dart';
import 'package:translations/translations.dart';

enum VipPriceError { empty, tooHigh, tooLow }

String? getVipPriceErrorMessage(AddEditTicketPoolState state) {
  if (state.vipPrice.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  switch (state.vipPrice.error) {
    case VipPriceError.empty:
      return S().enterPrice;
    case VipPriceError.tooHigh:
      return '${S().vipPriceTooHigh} ${getMaxPriceWithCurrency(state)}';
    case VipPriceError.tooLow:
      return '${S().vipPriceTooLow} ${getMinPriceWithCurrency(state)}';
    default:
      return S().serverError;
  }
}

class VipPrice extends FormzInput<int?, VipPriceError> {
  final Option<CurrencyParams> currencyParams;

  VipPrice.pure(this.currencyParams) : super.pure(null);

  VipPrice.dirty({
    required this.currencyParams,
    int? value,
  }) : super.dirty(value);

  @override
  VipPriceError? validator(int? value) {
    if (value == null) {
      return VipPriceError.empty;
    }

    if (value < currencyParams.getOrCrash().minTicketPrice) {
      return VipPriceError.tooLow;
    }

    if (value > currencyParams.getOrCrash().maxTicketPrice) {
      return VipPriceError.tooHigh;
    }

    return null;
  }
}

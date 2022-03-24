import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:raver_partners/domain/currency_params/currency_params_entity.dart';
import 'package:raver_translations/raver_translations.dart';

enum TicketPriceError { empty, tooHigh, tooLow }

String? getTicketPriceErrorMessage(AddEditTicketPoolState state) {
  if (state.ticketPrice.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  switch (state.ticketPrice.error) {
    case TicketPriceError.empty:
      return S().enterPrice;
    case TicketPriceError.tooHigh:
      return '${S().priceTooHigh} ${_getMaxTicketPriceWithCurrency(state)}';
    case TicketPriceError.tooLow:
      return '${S().priceTooLow} ${_getMinTicketPriceWithCurrency(state)}';
    default:
      return S().serverError;
  }
}

String _getMaxTicketPriceWithCurrency(AddEditTicketPoolState state) {
  final maxPrice = _getCurrencyParams(state).maxTicketPrice;
  final currency = _getCurrencySymbol(state);
  return '$maxPrice$currency';
}

String _getMinTicketPriceWithCurrency(AddEditTicketPoolState state) {
  final minPrice = _getCurrencyParams(state).minTicketPrice;
  final currency = _getCurrencySymbol(state);
  return '$minPrice$currency';
}

_getCurrencyParams(AddEditTicketPoolState state) {
  return state.ticketPrice.currencyParams.getOrCrash();
}

_getCurrencySymbol(AddEditTicketPoolState state) {
  return getCurrencySymbolFromCode(
    state.clubInfo.getOrCrash().acceptedCurrency,
  );
}

class TicketPrice extends FormzInput<int?, TicketPriceError> {
  final Option<CurrencyParams> currencyParams;

  TicketPrice.pure(this.currencyParams) : super.pure(null);

  TicketPrice.dirty({
    required this.currencyParams,
    int? value,
  }) : super.dirty(value);

  @override
  TicketPriceError? validator(int? value) {
    if (value == null) {
      return TicketPriceError.empty;
    }

    if (value < currencyParams.getOrCrash().minTicketPrice) {
      return TicketPriceError.tooLow;
    }

    if (value > currencyParams.getOrCrash().maxTicketPrice) {
      return TicketPriceError.tooHigh;
    }

    return null;
  }
}

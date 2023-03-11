import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';

String getMaxPriceWithCurrency(AddEditTicketPoolState state) {
  final maxPrice = _getCurrencyParams(state).maxTicketPrice;
  final currency = _getCurrencySymbol(state);
  return '$maxPrice$currency';
}

String getMinPriceWithCurrency(AddEditTicketPoolState state) {
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

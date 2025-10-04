import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class CurrencyFilter extends Equatable implements IFilter {
  final String currency;
  static const fieldName = 'acceptedCurrency';

  const CurrencyFilter({required this.currency});

  @override
  String buildFilters() {
    if (currency.isEmpty) return '';
    return AlgoliaQueryBuilder.setStringFilter(
      field: fieldName,
      value: currency,
    );
  }

  @override
  List<Object?> get props => [currency];
}

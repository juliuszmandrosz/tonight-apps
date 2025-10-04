import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class IsTonightEventFilter extends Equatable implements IFilter {
  final bool isTonightEvent;
  static const fieldName = 'isTonightEvent';

  const IsTonightEventFilter({required this.isTonightEvent});

  @override
  String buildFilters() {
    if (!isTonightEvent) return '';
    return AlgoliaQueryBuilder.setStringFilter(
      field: fieldName,
      value: isTonightEvent.toString(),
    );
  }

  @override
  List<Object?> get props => [isTonightEvent];
}

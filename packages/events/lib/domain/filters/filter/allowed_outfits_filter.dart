import 'package:common/common.dart';
import 'package:equatable/equatable.dart';

class AllowedOutfitsFilter extends Equatable implements IFilter {
  final List<String> allowedOutfits;
  static const fieldName = 'allowedOutfit';

  const AllowedOutfitsFilter({required this.allowedOutfits});

  factory AllowedOutfitsFilter.empty() => const AllowedOutfitsFilter(
        allowedOutfits: [],
      );

  @override
  String buildFilters() {
    if (allowedOutfits.isEmpty) return '';
    return AlgoliaQueryBuilder.setMultipleOrFilters(
      field: fieldName,
      values: allowedOutfits,
    );
  }

  @override
  List<Object?> get props => [allowedOutfits];
}

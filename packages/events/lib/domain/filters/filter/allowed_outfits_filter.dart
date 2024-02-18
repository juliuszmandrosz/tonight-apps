import 'package:common/common.dart';

class AllowedOutfitsFilter implements IFilter {
  final List<String> allowedOutfits;
  static const fieldName = 'allowedOutfit';

  AllowedOutfitsFilter({required this.allowedOutfits});

  factory AllowedOutfitsFilter.empty() => AllowedOutfitsFilter(
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
}

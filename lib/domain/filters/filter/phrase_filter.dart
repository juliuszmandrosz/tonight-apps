import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_events/infrastructure/algolia_query_builder.dart';

class PhraseFilter implements IFilter {
  final String phrase;
  static const fieldName = 'cityId';

  PhraseFilter({required this.phrase});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    return AlgoliaQueryBuilder.setTextFilter(
      query: query,
      value: phrase,
    );
  }
}

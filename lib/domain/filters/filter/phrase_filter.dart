import 'package:algolia/algolia.dart';
import 'package:raver_events/domain/filters/filter/ifilter.dart';
import 'package:raver_common/raver_common.dart';

class PhraseFilter implements IFilter {
  final String phrase;
  static const fieldName = 'eventName';

  PhraseFilter({required this.phrase});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    return AlgoliaQueryBuilder.setTextFilter(
      query: query,
      value: phrase,
    );
  }
}

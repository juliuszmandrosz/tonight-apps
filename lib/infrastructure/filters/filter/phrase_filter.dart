import 'package:algolia/algolia.dart';
import 'package:raver_common/raver_common.dart';

import 'ifilter.dart';

class PhraseFilter implements IFilter {
  final String phrase;
  static const fieldName = 'clubName';

  PhraseFilter({required this.phrase});

  @override
  AlgoliaQuery buildQuery(AlgoliaQuery query) {
    return AlgoliaQueryBuilder.setTextFilter(
      query: query,
      value: phrase,
    );
  }
}

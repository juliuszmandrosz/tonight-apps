import 'package:algolia/algolia.dart';

abstract class IFilter {
  AlgoliaQuery buildQuery(AlgoliaQuery query);
}

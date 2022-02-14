import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FilterValue<T, K> {
  /*
  Return firestore query with applied filter
   */
  Query applyToFirebaseQuery(Query query);
}

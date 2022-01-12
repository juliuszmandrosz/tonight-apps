import 'package:cloud_firestore/cloud_firestore.dart';

//Leaving here there till backend decision
abstract class FilterValue<T, K> {
  /*
  Return firestore query with applied filter
   */
  Query applyToFirebaseQuery(Query query);
}

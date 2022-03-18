import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference get clubCollection => collection('clubs');

  CollectionReference get ticketCollection => collection('tickets');

  CollectionReference get userCollection => collection('users');

  CollectionReference get eventCollection => collection('events');

  CollectionReference get userFavoriteEventsCollection =>
      collection('userFavoriteEvents');

  CollectionReference get availableFiltersCollection =>
      collection('availableFilters');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get clubCollection => collection('clubs');

  CollectionReference get ticketCollection => collection('tickets');

  CollectionReference get userFavoriteEventsCollection =>
      collection('userFavoriteEvents');
}

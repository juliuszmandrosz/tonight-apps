import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference get clubCollection => collection('clubs');

  CollectionReference get ticketCollection => collection('tickets');

  CollectionReference get userCollection => collection('users');

  CollectionReference get partnersCollection => collection('partners');

  CollectionReference get selectorsCollection => collection('selectors');

  CollectionReference get eventCollection => collection('events');

  CollectionReference get userFavoriteEventsCollection =>
      collection('userFavoriteEvents');

  CollectionReference get availableFiltersCollection =>
      collection('availableFilters');

  CollectionReference get stripeCustomers => collection('stripeCustomers');

  CollectionReference get currencyParams => collection('currencyParams');

  CollectionReference get selectors => collection('selectors');

  CollectionReference get selectorsAccessCodes =>
      collection('selectorsAccessCodes');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get clubCollection => collection('clubs');

  CollectionReference get ticketCollection => collection('tickets');

  CollectionReference get userFavoriteEventsCollection =>
      collection('userFavoriteEvents');

  CollectionReference get promotionCodesCollection =>
      collection('promotionCodes');

  CollectionReference get ticketPaymentsCollection =>
      collection('ticketPayments');

  CollectionReference get rewardsCollection => collection('rewards');

  CollectionReference get eventTickets => collection('eventTickets');

  CollectionReference get reviewCollection => collection('reviews');

  CollectionReference get selectors => collection('selectors');

  CollectionReference get eventCosts => collection('eventCosts');
}

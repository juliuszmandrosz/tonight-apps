import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:raver_common/raver_common.dart';

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

  CollectionReference get reviewReports => collection('reviewReports');

  CollectionReference get partnersDiscounts => collection('partnersDiscounts');

  DocumentReference getCurrentUserDocRef(FirebaseAuth auth) {
    final firebaseUser = auth.tryGetFirebaseUser();

    final userDoc = userCollection.doc(firebaseUser.uid);

    return userDoc;
  }

  DocumentReference getCurrentPartnerDocRef(FirebaseAuth auth) {
    final firebaseUser = auth.tryGetFirebaseUser();

    final partnerDoc = partnersCollection.doc(firebaseUser.uid);

    return partnerDoc;
  }

  Future<DocumentReference> getCurrentPartnerClubDocRef(
    FirebaseAuth auth,
  ) async {
    final partnerDoc = await getCurrentPartnerDocRef(auth).get();

    final clubId = partnerDoc.get('clubId');

    final clubDoc = clubCollection.doc(clubId);

    return clubDoc;
  }

  DocumentReference getCurrentSelectorDocRef(FirebaseAuth auth) {
    final firebaseUser = auth.tryGetFirebaseUser();

    final selectorDoc = selectorsCollection.doc(firebaseUser.uid);

    return selectorDoc;
  }

  Future<DocumentReference> getCurrentSelectorClubDocRef(
      FirebaseAuth auth) async {
    final firebaseUser = auth.tryGetFirebaseUser();

    final selectorDoc = await selectors.doc(firebaseUser.uid).get();

    final selectorClubId = selectorDoc.get('clubId');

    return clubCollection.doc(selectorClubId);
  }

  Future<List<DocumentSnapshot>> getDocsByIdsWhereIn({
    required List<String> ids,
    required CollectionReference collection,
  }) async {
    final result = <DocumentSnapshot>[];

    while (ids.isNotEmpty) {
      final chunkSize = ids.length >= 10 ? 10 : ids.length;

      final idsChunk = ids.getRange(0, chunkSize).toList();

      final docsQuery = collection.where(
        FieldPath.documentId,
        whereIn: idsChunk,
      );

      final docsChunk = await docsQuery.get();

      result.addAll(docsChunk.docs);

      ids.removeRange(0, chunkSize);
    }

    return result;
  }

  Future<List<DocumentSnapshot>> getDocsByIdsWhereNotIn({
    required List<String> ids,
    required CollectionReference collection,
  }) async {
    final result = <DocumentSnapshot>[];

    while (ids.isNotEmpty) {
      final chunkSize = ids.length >= 10 ? 10 : ids.length;

      final idsChunk = ids.getRange(0, chunkSize).toList();

      final docsQuery = collection.where(
        FieldPath.documentId,
        whereNotIn: idsChunk,
      );

      final docsChunk = await docsQuery.get();

      result.addAll(docsChunk.docs);

      ids.removeRange(0, chunkSize);
    }

    return result;
  }
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

  CollectionReference get eventReview => collection('eventReview');

  CollectionReference get appliedDiscounts => collection('appliedDiscounts');
}

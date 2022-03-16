import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference get eventCollection => collection('events');

  CollectionReference get userCollection => collection('users');
}

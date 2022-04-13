import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_clubs/domain/domain.dart';
import 'package:raver_clubs/infrastructure/club_dto.dart';

import 'package:raver_common/raver_common.dart';

class FirebaseClubFacade implements ClubFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final Logger _logger;

  FirebaseClubFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _logger = logger;

  @override
  Future<Either<ClubFailure, Club>> getClubById(String id) async {
    try {
      final result = await _firestore.clubCollection.doc(id).get();

      if (result.data() == null) throw InvalidIdError();

      return right(ClubDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (exception) {
      _logger.e("Exception during getting club by id EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  @override
  Future<Either<ClubFailure, Club>> getCurrentPartnerClub() async {
    try {
      final result = await _getCurrentClubDocument();
      return right(ClubDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (exception) {
      _logger.e(
          "Exception during getting current partner club EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  Future<DocumentSnapshot> _getCurrentClubDocument() {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser == null) throw NotAuthenticatedError();

    return _firestore.clubCollection.doc(firebaseUser.uid).get();
  }
}

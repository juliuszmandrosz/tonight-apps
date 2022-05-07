import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_clubs/domain/domain.dart';
import 'package:raver_clubs/domain/selector_club_facade.dart';
import 'package:raver_clubs/infrastructure/club_dto.dart';

import 'package:raver_common/raver_common.dart';

class FirebaseClubFacade
    implements UserClubFacade, PartnerClubFacade, SelectorClubFacade {
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
      final result = await _getCurrentPartnerClubDoc();
      return right(ClubDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (exception) {
      _logger.e(
          "Exception during getting current partner club EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  @override
  Future<Either<ClubFailure, Club>> getCurrentSelectorClub() async {
    try {
      final result = await _getCurrentSelectorClubDoc();
      return right(ClubDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (exception) {
      _logger.e(
          "Exception during getting current selector club EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  Future<DocumentSnapshot> _getCurrentPartnerClubDoc() async {
    final currentPartner = _firebaseAuth.currentUser;

    if (currentPartner == null) throw NotAuthenticatedError();

    return _firestore.clubCollection.doc(currentPartner.uid).get();
  }

  Future<DocumentSnapshot> _getCurrentSelectorClubDoc() async {
    final currentSelector = _firebaseAuth.currentUser;

    if (currentSelector == null) throw NotAuthenticatedError();

    final selectorDoc =
        await _firestore.selectors.doc(currentSelector.uid).get();

    final selectorClubId = selectorDoc.get('clubId');

    return _firestore.clubCollection.doc(selectorClubId).get();
  }
}

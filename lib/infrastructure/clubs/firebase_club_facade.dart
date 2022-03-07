import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/domain/clubs/failures/club_failure.dart';
import 'package:raver/domain/clubs/filters/club_filter.dart';

import 'dtos/club_dto.dart';

class FirebaseClubFacade implements ClubFacade {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final Logger _logger;

  FirebaseClubFacade({
    required FirebaseFirestore firestore,
    required FirebaseStorage storage,
    required Logger logger,
  })  : _firestore = firestore,
        _storage = storage,
        _logger = logger;

  @override
  Future<Either<ClubFailure, List<Club>>> getClubs(ClubFilter filter) async {
    Query clubsQuery = applyFiler(_firestore.collection('clubs'), filter)
        .limit(10); //for now hard pagination limit, need to discuss that
    try {
      QuerySnapshot result = await clubsQuery.get();
      return right(result.docs
          .map((QueryDocumentSnapshot document) =>
              ClubDto.fromFirebase(document).toDomain())
          .toList());
    } on FirebaseException catch (exception) {
      _logger.e("Exception during fetching clubs EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  @override
  Future<Either<ClubFailure, Club>> getClubById(String id) async {
    DocumentReference clubsQuery = _firestore.collection('clubs').doc(id);
    try {
      DocumentSnapshot result = await clubsQuery.get();
      return right(ClubDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (exception) {
      _logger.e("Exception during fetching clubs EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  Query applyFiler(Query query, ClubFilter filter) {
    Query filteredQuery = query;
    filter.map((filterWithValues) {
      if (filterWithValues.phrase.isNotEmpty) {
        // TODO - add case insensitive search
        filteredQuery = filteredQuery
            .where('clubName', isGreaterThanOrEqualTo: filterWithValues.phrase)
            .where('clubName',
                isLessThanOrEqualTo: "${filterWithValues.phrase}\uf7ff");
      }
    }, empty: (value) {
      filteredQuery = query;
    });
    return filteredQuery;
  }

  @override
  Future<Either<ClubFailure, List<String>>> getClubPhotosUrls(
      String clubId) async {
    try {
      final ListResult images = await _storage
          .ref('clubs/$clubId/club_images/')
          .list(const ListOptions(maxResults: 10)); //TODO add infinity scroll
      final List<Future<String>> urls =
          images.items.map((ref) async => await ref.getDownloadURL()).toList();
      return right(await Future.wait(
          urls)); //Future.wait unpacks List<Future<String>> list from Futures to not overcomplicate overall UI building
    } on FirebaseException catch (exception) {
      _logger.e("Exception during fetching clubs images EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }
}

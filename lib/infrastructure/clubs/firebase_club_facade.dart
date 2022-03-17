import 'dart:async';

import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/domain/clubs/failures/club_failure.dart';
import 'package:raver/domain/clubs/filters/club_filters.dart';
import 'package:raver/infrastructure/clubs/errors/invalid_id_error.dart';
import 'package:raver/infrastructure/core/algolia/algolia_clubs_api.dart';
import 'package:raver/infrastructure/core/firestore_helpers.dart';

import 'dtos/club_dto.dart';

class FirebaseClubFacade implements ClubFacade {
  final FirebaseFirestore _firestore;
  final AlgoliaClubsApi _algoliaClubsApi;
  final FirebaseStorage _storage;
  final Logger _logger;
  final String clubsIndex = 'clubs';

  FirebaseClubFacade({
    required FirebaseFirestore firestore,
    required AlgoliaClubsApi algoliaClubsApi,
    required FirebaseStorage storage,
    required Logger logger,
  })  : _firestore = firestore,
        _algoliaClubsApi = algoliaClubsApi,
        _storage = storage,
        _logger = logger;

  @override
  Future<Either<ClubFailure, List<Club>>> getClubs(
    ClubFilters filters, {
    int pageSize = 10,
    int offset = 0,
  }) async {
    String? text;
    text ??= filters.phrase;

    try {
      final clubs = await _algoliaClubsApi.getClubs(filters, pageSize, offset);

      return right(clubs.hits
          .map((doc) => ClubDto.fromAlgolia(doc).toDomain())
          .toList());
    } on AlgoliaError catch (exception) {
      _logger
          .e("Algolia exception during fetching clubs EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  @override
  Future<Either<ClubFailure, Club>> getClubById(String id) async {
    final clubsQuery = _firestore.collection(clubsIndex).doc(id);
    try {
      final result = await clubsQuery.get();

      if (result.data() == null) throw InvalidIdError();

      return right(ClubDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (exception) {
      _logger.e("Exception during fetching clubs EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  //Tuple2<List<photosUrls>,String? tokenForNextPage <- if next page is available>>
  @override
  Future<Either<ClubFailure, Tuple2<List<String>, String?>>> getClubPhotosUrls({
    required String clubId,
    String? nextPageToken,
    int pageSize = 10,
  }) async {
    try {
      final images =
          await _storage.ref('clubs/$clubId/club_images/').list(ListOptions(
                maxResults: pageSize,
                pageToken: nextPageToken,
              ));
      final urls =
          images.items.map((ref) async => await ref.getDownloadURL()).toList();
      return right(Tuple2(await Future.wait(urls),
          images.nextPageToken)); //if there is no page next, return empty token
    } on FirebaseException catch (exception) {
      _logger.e("Exception during fetching clubs images EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }

  //For testing purpose ONLY, remove on production release
  @override
  Future<Option<ClubFailure>> addClub(Club club) async {
    try {
      final clubDoc = _firestore.clubCollection;
      final clubDto = ClubDto.fromDomain(club);

      await clubDoc.doc(club.id).set(clubDto.toJson());

      return const None();
    } on FirebaseException catch (e) {
      _logger.e("Exception during adding club EXCEPTION: $e");
      return const Some(ClubFailure.unexpected());
    }
  }
}

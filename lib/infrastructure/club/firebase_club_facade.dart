import 'dart:async';

import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:raver_clubs/domain/domain.dart';
import 'package:raver_clubs/domain/club/selector_club_facade.dart';
import 'package:raver_clubs/infrastructure/algolia_clubs_api.dart';
import 'package:raver_clubs/infrastructure/cloud_functions/club_cloud_functions_facade.dart';
import 'package:raver_clubs/infrastructure/club/club_dto.dart';
import 'package:raver_clubs/infrastructure/filters/club_filters_entity.dart';
import 'package:raver_common/raver_common.dart';

class FirebaseClubFacade
    implements UserClubFacade, PartnerClubFacade, SelectorClubFacade {
  final AlgoliaClubsApi _algoliaClubsApi;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final FirebaseStorage _firebaseStorage;
  final ClubCloudFunctionsFacade _cloudFunctionsFacade;
  final Logger _logger;

  FirebaseClubFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required FirebaseStorage firebaseStorage,
    required ClubCloudFunctionsFacade cloudFunctionsFacade,
    required AlgoliaClubsApi algoliaClubsApi,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _firebaseStorage = firebaseStorage,
        _cloudFunctionsFacade = cloudFunctionsFacade,
        _algoliaClubsApi = algoliaClubsApi,
        _logger = logger;

  @override
  Future<Either<UserClubFailure, Club>> getClubById(String id) async {
    try {
      final result = await _firestore.clubCollection.doc(id).get();

      if (result.data() == null) throw InvalidIdError();

      return right(ClubDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (exception) {
      _logger.e("Exception during getting club by id EXCEPTION: $exception");
      return left(const UserClubFailure.unexpected());
    }
  }

  @override
  Future<Either<UserClubFailure, List<Club>>> getClubs(
    ClubFilters filters, {
    int pageSize = 20,
    int offset = 0,
  }) async {
    try {
      final clubs = await _algoliaClubsApi.getClubs(filters, pageSize, offset);

      return right<UserClubFailure, List<Club>>(clubs.hits
          .map((doc) => ClubDto.fromAlgolia(doc).toDomain())
          .toList());
    } on AlgoliaError catch (exception) {
      _logger
          .e("Algolia exception during fetching clubs EXCEPTION: $exception");
      return left(const UserClubFailure.unexpected());
    }
  }

  @override
  Future<Either<UserClubFailure, Unit>> toggleClubFavoriteStatus(
      String clubId) async {
    try {
      final userRef = _firestore.getCurrentUserDocRef(_firebaseAuth);
      final userSnapshot = await userRef.get();
      final userFavorites =
          userSnapshot.get('favoriteClubIds') as List<dynamic>;

      userFavorites.contains(clubId)
          ? userFavorites.remove(clubId)
          : userFavorites.add(clubId);

      await userRef.update({'favoriteClubIds': userFavorites});

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Exception during toggling club favorite status EXCEPTION: $e");
      return left(const UserClubFailure.unexpected());
    }
  }

  @override
  Future<Either<UserClubFailure, List<Club>>> getClubsByIds(
      List<String> clubIds) async {
    try {
      final result = await _getClubsByIdsFromFirestore(clubIds);
      return right(result);
    } on FirebaseException catch (e) {
      _logger.e("Exception during fetching clubs by ids EXCEPTION: $e");
      return left(const UserClubFailure.unexpected());
    }
  }

  ///Tuple2<List<photosUrls>,String? tokenForNextPage <- if next page is available>>
  @override
  Future<Either<UserClubFailure, Tuple2<List<String>, String?>>>
      getClubPhotosUrlsAsUser({
    required String clubId,
    String? nextPageToken,
    int pageSize = 10,
  }) async {
    try {
      final images = await _firebaseStorage
          .ref('clubs/$clubId/club_images/')
          .list(ListOptions(
            maxResults: pageSize,
            pageToken: nextPageToken,
          ));
      final urls =
          images.items.map((ref) async => await ref.getDownloadURL()).toList();
      return right(Tuple2(await Future.wait(urls),
          images.nextPageToken)); //if there is no page next, return empty token
    } on FirebaseException catch (exception) {
      _logger.e("Exception during fetching clubs images EXCEPTION: $exception");
      return left(const UserClubFailure.unexpected());
    }
  }

  @override
  Future<Either<PartnerClubFailure, Club>> getCurrentPartnerClub() async {
    try {
      final clubRef = _firestore.getCurrentPartnerClubDocRef(_firebaseAuth);
      final result = await clubRef.get();
      return right(ClubDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (exception) {
      _logger.e(
          "Exception during getting current partner club EXCEPTION: $exception");
      return left(const PartnerClubFailure.unexpected());
    }
  }

  @override
  Future<Either<SelectorClubFailure, Club>> getCurrentSelectorClub() async {
    try {
      final clubRef =
          await _firestore.getCurrentSelectorClubDocRef(_firebaseAuth);
      final result = await clubRef.get();
      return right(ClubDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (exception) {
      _logger.e(
          "Exception during getting current selector club EXCEPTION: $exception");
      return left(const SelectorClubFailure.unexpected());
    }
  }

  @override
  Future<Either<SelectorClubFailure, Unit>> enterAccessCodeToClub(
    String accessCode,
  ) async {
    try {
      await _cloudFunctionsFacade.useSelectorAccessCode(accessCode);

      return right(unit);
    } on FirebaseFunctionsException catch (e) {
      if (e.details == 'invalid-access-code') {
        return left(const SelectorClubFailure.invalidAccessCode());
      }

      _logger.e("Exception during entering access code EXCEPTION: $e");
      return left(const SelectorClubFailure.unexpected());
    }
  }

  @override
  Future<Either<UserClubFailure, List<Club>>> getFavoriteClubs() async {
    try {
      final userDoc =
          await _firestore.getCurrentUserDocRef(_firebaseAuth).get();

      final favoriteClubIds =
          await userDoc.get('favoriteClubIds') as List<dynamic>;

      final result = await _getClubsByIdsFromFirestore(favoriteClubIds);

      return right(result);
    } on FirebaseException catch (e) {
      _logger.e('Exception getting favorite clubs EXCEPTION: $e');
      return left(const UserClubFailure.unexpected());
    }
  }

  Future<List<Club>> _getClubsByIdsFromFirestore(List<dynamic> clubIds) async {
    final result = <Club>[];

    while (clubIds.isNotEmpty) {
      final chunkSize = clubIds.length >= 10 ? 10 : clubIds.length;

      final clubIdsChunk = clubIds.getRange(0, chunkSize).toList();

      final clubsQuery = _firestore.clubCollection
          .where(FieldPath.documentId, whereIn: clubIdsChunk);

      final clubDocsChunk = await clubsQuery.get();

      final clubsChunk = clubDocsChunk.docs
          .map((doc) => ClubDto.fromFirebase(doc).toDomain())
          .toList();

      result.addAll(clubsChunk);

      clubIds.removeRange(0, chunkSize);
    }

    return result;
  }
}

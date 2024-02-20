import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/infrastructure/firestore_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/domain/artists/artist_facade.dart';
import 'package:tonight/domain/artists/artist_failure.dart';
import 'package:tonight/infrastructure/artists/artist_dto.dart';
import 'package:tonight/infrastructure/artists/filters/artist_filters.dart';

class FirebaseArtistFacade implements ArtistFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseArtistFacade(
    this._firestore,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<ArtistFailure, List<Artist>>> getArtists(
    ArtistFilters filters,
  ) async {
    try {
      final artists = await _firestore.artists.get();
      final result = artists.docs
          .map((doc) => ArtistDto.fromFirebase(doc).toDomain())
          .toList();
      return right(result);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const ArtistFailure.unexpected());
    }
  }

  @override
  Future<Either<ArtistFailure, List<Artist>>> getResidentsForCollective(
    String collectiveId,
  ) async {
    try {
      final collectives = await _firestore.artists
          .where('collectiveIds', arrayContains: collectiveId)
          .get();
      final result = collectives.docs
          .map((doc) => ArtistDto.fromFirebase(doc).toDomain())
          .toList();
      return right(result);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const ArtistFailure.unexpected());
    }
  }
}

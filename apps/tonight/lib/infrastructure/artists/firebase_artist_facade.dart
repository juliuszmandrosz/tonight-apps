import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/domain/artists/artist_facade.dart';
import 'package:tonight/domain/artists/artist_failure.dart';
import 'package:tonight/infrastructure/artists/artist_dto.dart';
import 'package:tonight/infrastructure/artists/filters/artist_filters.dart';

class FirebaseArtistFacade implements ArtistFacade {
  final FirebaseFirestore _firestore;
  final AlgoliaSearchApi _searchApi;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseArtistFacade(
    this._firestore,
    this._searchApi,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<ArtistFailure, List<Artist>>> getArtists(
    ArtistFilters filters,
  ) async {
    try {
      final result = await _searchApi.search(
        index: AlgoliaIndex.artists,
        query: filters.phraseFilter.phrase,
        filters: filters.buildFilters(),
      );

      return right<ArtistFailure, List<Artist>>(
        result.map((doc) => ArtistDto.fromApi(doc).toDomain()).toList(),
      );
    } on DioError catch (e) {
      return left(
        await handleDioError(
          error: e,
          crashlytics: _crashlytics,
          logger: _logger,
          message: 'Dio error fetching artists EXCEPTION: $e',
          unexpectedFailure: const ArtistFailure.unexpected(),
          socketFailure: const ArtistFailure.noConnection(),
        ),
      );
    }
  }

  @override
  Future<Either<ArtistFailure, List<Artist>>> getResidentsFromCollective(
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

  @override
  Future<Either<ArtistFailure, List<Artist>>> getArtistsByIds(
    List<String> artistIds,
  ) async {
    try {
      final artists = await _firestore.artists.getDocsByIdsWhereIn(artistIds);
      final result =
          artists.map((doc) => ArtistDto.fromFirebase(doc).toDomain()).toList();
      return right(result);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const ArtistFailure.unexpected());
    }
  }
}

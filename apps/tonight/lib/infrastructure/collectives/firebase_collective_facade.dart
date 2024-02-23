import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/domain/collectives/collective_facade.dart';
import 'package:tonight/domain/collectives/collective_failure.dart';
import 'package:tonight/infrastructure/collectives/collective_dto.dart';
import 'package:tonight/infrastructure/collectives/filters/collective_filters.dart';

class FirebaseCollectiveFacade implements CollectiveFacade {
  final FirebaseFirestore _firestore;
  final AlgoliaSearchApi _searchApi;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseCollectiveFacade(
    this._firestore,
    this._searchApi,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<CollectiveFailure, List<Collective>>> getCollectives(
    CollectiveFilters filters,
  ) async {
    try {
      final result = await _searchApi.search(
        index: AlgoliaIndex.collectives,
        query: filters.phraseFilter.phrase,
        filters: filters.buildFilters(),
      );

      return right<CollectiveFailure, List<Collective>>(
        result.map((doc) => CollectiveDto.fromApi(doc).toDomain()).toList(),
      );
    } on DioError catch (e) {
      return left(
        await handleDioError(
          error: e,
          crashlytics: _crashlytics,
          logger: _logger,
          message: 'Dio error fetching collectives EXCEPTION: $e',
          unexpectedFailure: const CollectiveFailure.unexpected(),
          socketFailure: const CollectiveFailure.noConnection(),
        ),
      );
    }
  }

  @override
  Future<Either<CollectiveFailure, List<Collective>>> getCollectivesForArtist(
    String artistId,
  ) async {
    try {
      final collectives = await _firestore.collectives
          .where('artistIds', arrayContains: artistId)
          .get();
      final result = collectives.docs
          .map((doc) => CollectiveDto.fromFirebase(doc).toDomain())
          .toList();
      return right(result);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const CollectiveFailure.unexpected());
    }
  }

  @override
  Future<Either<CollectiveFailure, Collective>> getCollectiveById(
    String collectiveId,
  ) async {
    try {
      final collective = await _firestore.collectives.doc(collectiveId).get();
      return right(CollectiveDto.fromFirebase(collective).toDomain());
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const CollectiveFailure.unexpected());
    }
  }
}

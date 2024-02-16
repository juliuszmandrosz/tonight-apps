import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/infrastructure/firestore_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/domain/collectives/collective_facade.dart';
import 'package:tonight/domain/collectives/collective_failure.dart';
import 'package:tonight/infrastructure/collectives/collective_dto.dart';

class FirebaseCollectiveFacade implements CollectiveFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseCollectiveFacade(
    this._firestore,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<CollectiveFailure, List<Collective>>> getCollectives() async {
    try {
      final collectives = await _firestore.collectives.get();
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
  Future<Either<CollectiveFailure, List<Collective>>> getCollectivesForArtist(
    String artistId,
  ) async {
    try {
      final collectives = await _firestore.collectives
          .where('residentIds', arrayContains: artistId)
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
}

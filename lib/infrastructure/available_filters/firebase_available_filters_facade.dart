import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/domain/available_filters/available_filters_entity.dart';
import 'package:raver_common/domain/available_filters/available_filters_facade.dart';
import 'package:raver_common/domain/available_filters/available_filters_failure.dart';
import 'package:raver_common/infrastructure/available_filters/available_filters_dto.dart';
import 'package:raver_common/infrastructure/firestore_helpers.dart';

class FirebaseAvailableFiltersFacade implements AvailableFiltersFacade {
  final FirebaseFirestore _firestore;
  final Logger _logger;

  FirebaseAvailableFiltersFacade(this._firestore, this._logger);

  @override
  Future<Either<AvailableFiltersFailure, AvailableFilters>>
      getAvailableFilters() async {
    try {
      final availableFiltersDoc =
          await _firestore.availableFiltersCollection.doc('filters').get();

      return right(
          AvailableFiltersDto.fromFirebase(availableFiltersDoc).toDomain());
    } on FirebaseException catch (e) {
      _logger.e("Firebase exception during fetching events EXCEPTION: $e");
      return left(const AvailableFiltersFailure.unexpected());
    }
  }
}

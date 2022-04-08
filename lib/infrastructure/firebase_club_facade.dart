import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver_clubs/domain/domain.dart';
import 'package:raver_clubs/infrastructure/club_dto.dart';

import 'package:raver_common/raver_common.dart';

class FirebaseClubFacade implements ClubFacade {
  final FirebaseFirestore _firestore;
  final Logger _logger;

  FirebaseClubFacade({
    required FirebaseFirestore firestore,
    required Logger logger,
  })  : _firestore = firestore,
        _logger = logger;

  @override
  Future<Either<ClubFailure, Club>> getClubById(String id) async {
    try {
      final result = await _firestore.clubCollection.doc(id).get();

      if (result.data() == null) throw InvalidIdError();

      return right(ClubDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (exception) {
      _logger.e("Exception during fetching clubs EXCEPTION: $exception");
      return left(const ClubFailure.unexpected());
    }
  }
}

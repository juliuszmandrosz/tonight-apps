import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/domain/clubs/club_failure.dart';
import 'package:raver/domain/clubs/i_club_repository.dart';
import 'package:raver/infrastructure/clubs/club_dto.dart';

@LazySingleton(as: IClubRepository)
class ClubRepository implements IClubRepository {
  final FirebaseFirestore _firestore;
  final logger = Logger();

  ClubRepository(this._firestore);

  @override
  Stream<Either<ClubFailure, List<Club>>> getClubs() async* {
    final clubDoc = await _firestore.collection("clubs");
    yield* clubDoc
        .snapshots()
        .map((snapshot) => right<ClubFailure, List<Club>>(
              snapshot.docs
                  .map((doc) => ClubDto.fromFirebase(doc).toDomain())
                  .toList(),
            ))
        .handleError((e) {
      if (e is FirebaseException) {
        //Adding this temporarily cuz i didn't found any sensible codes error docs
        logger
            .e("Firebase error occured MESSAGE:${e.message} CODE:: ${e.code}");
        return left(const ClubFailure.unexpected());
      }
    });
  }
}

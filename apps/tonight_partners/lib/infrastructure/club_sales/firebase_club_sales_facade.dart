import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/domain/club_sales/club_sales_entity.dart';
import 'package:raver_partners/domain/club_sales/club_sales_facade.dart';
import 'package:raver_partners/domain/club_sales/club_sales_failure.dart';
import 'package:raver_partners/infrastructure/club_sales/dtos/club_sales_dto.dart';

class FirebaseClubSalesFacade implements ClubSalesFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseClubSalesFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required FirebaseCrashlytics firebaseCrashlytics,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _crashlytics = firebaseCrashlytics,
        _logger = logger;

  @override
  Stream<Either<ClubSalesFailure, ClubSales>> getClubSales() async* {
    final clubDocRef =
        await _firestore.getCurrentPartnerClubDocRef(_firebaseAuth);

    final clubSalesDocRef = _firestore.clubsSales.doc(clubDocRef.id);

    yield* clubSalesDocRef
        .snapshots()
        .map(
          (snapshot) => right<ClubSalesFailure, ClubSales>(
            ClubSalesDto.fromFirebase(snapshot).toDomain(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException) {
        return left(
          handleFirebaseError<ClubSalesFailure>(
            logger: _logger,
            crashlytics: _crashlytics,
            exception: e,
            message: 'Firebase Exception getting club sales EXCEPTION: $e',
            unexpectedFailure: const ClubSalesFailure.unexpected(),
            permissionDeniedFailure: const ClubSalesFailure.permissionDenied(),
          ),
        );
      }
    });
  }
}

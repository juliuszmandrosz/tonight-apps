import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/domain/club_sales/club_sales_entity.dart';
import 'package:raver_partners/domain/club_sales/club_sales_facade.dart';
import 'package:raver_partners/domain/club_sales/club_sales_failure.dart';
import 'package:raver_partners/infrastructure/club_sales/dtos/club_sales_dto.dart';

class FirebaseClubSalesFacade implements ClubSalesFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final Logger _logger;

  FirebaseClubSalesFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _logger = logger;

  @override
  Future<Either<ClubSalesFailure, ClubSales>> getClubSales() async {
    try {
      final clubDocRef =
          await _firestore.getCurrentPartnerClubDocRef(_firebaseAuth);

      final clubSalesDoc = await _firestore.clubsSales.doc(clubDocRef.id).get();

      final result = ClubSalesDto.fromFirebase(clubSalesDoc).toDomain();

      return right(result);
    } on FirebaseException catch (e) {
      _logger.e(
        "Firebase Exception getting club sales EXCEPTION: $e",
      );
      return left(const ClubSalesFailure.unexpected());
    }
  }
}

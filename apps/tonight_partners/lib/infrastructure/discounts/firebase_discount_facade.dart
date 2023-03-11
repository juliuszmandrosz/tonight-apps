import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/domain/discounts/discount_facade.dart';
import 'package:raver_partners/domain/discounts/discount_failure.dart';
import 'package:raver_partners/domain/discounts/partner_discount_entity.dart';
import 'package:raver_partners/infrastructure/club_sales/dtos/club_sales_dto.dart';
import 'package:raver_partners/infrastructure/discounts/dtos/partner_discount_dto.dart';

class FirebaseDiscountFacade implements DiscountFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseDiscountFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required FirebaseCrashlytics firebaseCrashlytics,
    required Logger logger,
  })  : _firestore = firestore,
        _auth = firebaseAuth,
        _crashlytics = firebaseCrashlytics,
        _logger = logger;

  @override
  Future<Either<DiscountFailure, List<PartnerDiscount>>>
      getAvailableDiscounts() async {
    try {
      final clubDocRef = await _firestore.getCurrentPartnerClubDocRef(_auth);

      final appliedDiscounts = await clubDocRef.appliedDiscounts.get();

      final appliedDiscountIds =
          appliedDiscounts.docs.map((doc) => doc.id).toList();

      final discountDocs = await _firestore.getDocsByIdsWhereNotIn(
        ids: appliedDiscountIds,
        collection: _firestore.partnersDiscounts,
      );

      final clubSalesDoc = await _firestore.clubsSales.doc(clubDocRef.id).get();
      final clubSales = ClubSalesDto.fromFirebase(clubSalesDoc).toDomain();
      final exclusiveEventsSales =
          clubSales.exclusiveTicketsSold + clubSales.exclusiveVipsSold;

      final result = discountDocs
          .map((doc) => PartnerDiscountDto.fromFirebase(doc).toDomain())
          .where((d) => d.requiredExclusiveEventsSales <= exclusiveEventsSales)
          .toList();

      return right(result);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<DiscountFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message:
              'Firebase Exception getting available discounts EXCEPTION: $e',
          unexpectedFailure: const DiscountFailure.unexpected(),
          permissionDeniedFailure: const DiscountFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<DiscountFailure, List<PartnerDiscount>>>
      getAllDiscounts() async {
    try {
      final result = await _firestore.partnersDiscounts
          .orderBy('requiredExclusiveEventsSales')
          .get();

      return right<DiscountFailure, List<PartnerDiscount>>(
        result.docs
            .map((doc) => PartnerDiscountDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<DiscountFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception getting all discounts EXCEPTION: $e',
          unexpectedFailure: const DiscountFailure.unexpected(),
          permissionDeniedFailure: const DiscountFailure.permissionDenied(),
        ),
      );
    }
  }
}

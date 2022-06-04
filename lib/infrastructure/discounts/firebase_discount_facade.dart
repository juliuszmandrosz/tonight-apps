import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/domain/discounts/discount_facade.dart';
import 'package:raver_partners/domain/discounts/discount_failure.dart';
import 'package:raver_partners/domain/discounts/partner_discount_entity.dart';
import 'package:raver_partners/infrastructure/discounts/dtos/partner_discount_dto.dart';

class FirebaseDiscountFacade implements DiscountFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final Logger _logger;

  FirebaseDiscountFacade({
    required FirebaseFirestore firestore,
    required FirebaseAuth firebaseAuth,
    required Logger logger,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _logger = logger;

  @override
  Future<Either<DiscountFailure, List<PartnerDiscount>>>
      getAvailableDiscounts() async {
    try {
      final clubDocRef =
          await _firestore.getCurrentPartnerClubDocRef(_firebaseAuth);

      final appliedDiscounts = await clubDocRef.appliedDiscounts.get();

      final appliedDiscountIds =
          appliedDiscounts.docs.map((doc) => doc.id).toList();

      final discountDocs = await _firestore.getDocsByIdsWhereNotIn(
        ids: appliedDiscountIds,
        collection: _firestore.partnersDiscounts,
      );

      final result = discountDocs
          .map((doc) => PartnerDiscountDto.fromFirebase(doc).toDomain())
          .toList();

      return right(result);
    } on FirebaseException catch (e) {
      _logger.e(
        "Firebase Exception getting available discounts EXCEPTION: $e",
      );
      return left(const DiscountFailure.unexpected());
    }
  }

  @override
  Future<Either<DiscountFailure, List<PartnerDiscount>>>
      getAllDiscounts() async {
    try {
      final result = await _firestore.partnersDiscounts.get();

      return right<DiscountFailure, List<PartnerDiscount>>(
        result.docs
            .map((doc) => PartnerDiscountDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      _logger.e(
        "Firebase Exception getting all discounts EXCEPTION: $e",
      );
      return left(const DiscountFailure.unexpected());
    }
  }
}

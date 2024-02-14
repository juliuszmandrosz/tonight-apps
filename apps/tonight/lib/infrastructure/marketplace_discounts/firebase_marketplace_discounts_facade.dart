import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_facade.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_failure.dart';
import 'package:tonight/infrastructure/marketplace_discounts/dtos/marketplace_discount_dto.dart';

class FirebaseMarketplaceDiscountFacade implements MarketplaceDiscountFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseMarketplaceDiscountFacade(
    this._firestore,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<MarketplaceDiscountFailure, List<MarketplaceDiscount>>>
      getAvailableDiscounts({
    int pageSize = 20,
    MarketplaceDiscount? lastDiscount,
  }) async {
    try {
      var query =
          _firestore.marketplaceDiscounts.limit(pageSize).orderBy('price');
      if (lastDiscount != null) {
        final lastDoc =
            await _firestore.marketplaceDiscounts.doc(lastDiscount.id).get();
        query = query.startAfterDocument(lastDoc);
      }
      final result = await query.get();
      final discounts = result.docs
          .map((doc) => MarketplaceDiscountDto.fromFirebase(doc).toDomain())
          .toList();
      return right(discounts);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const MarketplaceDiscountFailure.unexpected());
    }
  }
}

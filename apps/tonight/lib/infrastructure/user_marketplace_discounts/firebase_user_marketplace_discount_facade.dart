import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_entity.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_facade.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_failure.dart';
import 'package:tonight/infrastructure/user_marketplace_discounts/dtos/user_marketplace_discount_dto.dart';
import 'package:tonight/infrastructure/user_marketplace_discounts/failures/redeem_discount_failures.dart';

class FirebaseUserMarketplaceDiscountFacade
    implements UserMarketplaceDiscountFacade {
  final FirebaseFirestore _firestore;
  final Dio _dio;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseUserMarketplaceDiscountFacade(
    this._firestore,
    this._dio,
    this._auth,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<UserMarketplaceDiscountFailure, List<UserMarketplaceDiscount>>>
      getUserDiscounts({
    int pageSize = 20,
    UserMarketplaceDiscount? lastDiscount,
  }) async {
    try {
      final currentUserDocRef = _firestore.getCurrentUserDocRef(_auth);
      var query = currentUserDocRef.marketplaceDiscounts
          .limit(pageSize)
          .orderBy('redeemedAt', descending: true);
      if (lastDiscount != null) {
        final lastDoc = await currentUserDocRef.marketplaceDiscounts
            .doc(lastDiscount.id)
            .get();
        query = query.startAfterDocument(lastDoc);
      }
      final querySnapshot = await query.get();
      final discounts = querySnapshot.docs
          .map((doc) => UserMarketplaceDiscountDto.fromFirebase(doc).toDomain())
          .toList();

      return right(discounts);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const UserMarketplaceDiscountFailure.unexpected());
    }
  }

  @override
  Future<Either<UserMarketplaceDiscountFailure, UserMarketplaceDiscount>>
      redeemDiscount(
    String discountId,
  ) async {
    try {
      final userId = _auth.tryGetFirebaseUser().uid;
      const endpoint = 'discounts';
      final data = {
        'discountId': discountId,
        'userId': userId,
      };
      final result = await _dio.post(endpoint, data: data);
      return right(UserMarketplaceDiscountDto.fromApi(result).toDomain());
    } on DioError catch (e) {
      _logger.e(e);
      return left(await _handleDioError(e));
    }
  }

  Future<UserMarketplaceDiscountFailure> _handleDioError(DioError error) async {
    final failure = redeemDiscountFailures[error.response?.data['message']];
    if (failure != null) {
      return failure;
    }
    await _crashlytics.recordError(error.response, StackTrace.current);
    return const UserMarketplaceDiscountFailure.unexpected();
  }
}

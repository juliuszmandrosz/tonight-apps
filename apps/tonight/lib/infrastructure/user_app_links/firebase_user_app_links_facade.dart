import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/user_app_links/user_app_links_entity.dart';
import 'package:tonight/domain/user_app_links/user_app_links_facade.dart';
import 'package:tonight/domain/user_app_links/user_app_links_failure.dart';
import 'package:tonight/infrastructure/user_app_links/dtos/user_app_links_dto.dart';

class FirebaseUserAppLinksFacade implements UserAppLinksFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseUserAppLinksFacade(
    this._firestore,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<UserAppLinksFailure, UserAppLinks>> getUserAppLinks() async {
    try {
      final linksDoc = await _firestore.appLinks.doc('userLinks').get();
      final result = UserAppLinksDto.fromFirebase(linksDoc).toDomain();
      return right(result);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const UserAppLinksFailure.unexpected());
    }
  }
}

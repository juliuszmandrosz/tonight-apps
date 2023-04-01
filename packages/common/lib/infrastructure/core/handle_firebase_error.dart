import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

Future<T> handleFirebaseError<T>({
  required Logger logger,
  required FirebaseCrashlytics crashlytics,
  required FirebaseException exception,
  required String message,
  required T unexpectedFailure,
  required T permissionDeniedFailure,
}) async {
  logger.e(message);

  if (exception.code == 'permission-denied') {
    return permissionDeniedFailure;
  }

  if (!kIsWeb) {
    await crashlytics.recordError(message, StackTrace.current);
  }

  return unexpectedFailure;
}

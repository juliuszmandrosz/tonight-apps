import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';

Future<T> handleFirebaseError<T>({
  required Logger logger,
  required FirebaseCrashlytics crashlytics,
  required FirebaseException exception,
  required T unexpectedFailure,
  required T permissionDeniedFailure,
  String? message,
}) async {
  logger.e(message ?? exception.toString());

  if (exception.code == 'permission-denied') {
    return permissionDeniedFailure;
  }

  await crashlytics.recordError(
    message ?? exception.toString(),
    StackTrace.current,
  );

  return unexpectedFailure;
}

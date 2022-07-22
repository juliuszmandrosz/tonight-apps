import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';

Future<T> handleDioError<T>({
  required DioError error,
  required FirebaseCrashlytics crashlytics,
  required Logger logger,
  required String message,
  required T unexpectedFailure,
  required T socketFailure,
}) async {
  logger.e(message);

  if (error.type == DioErrorType.other &&
      error.message.contains('SocketException')) {
    return socketFailure;
  }

  await crashlytics.recordError(error, StackTrace.current);

  return unexpectedFailure;
}

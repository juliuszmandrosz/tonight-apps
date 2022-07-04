import 'package:dio/dio.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';

InterceptorsWrapper get dioInterceptor => InterceptorsWrapper(
      onRequest: (options, handler) async {
        final headers = options.headers;

        final idToken = await FirebaseAuth.instance.currentUser?.getIdToken();
        final appCheckToken = await FirebaseAppCheck.instance.getToken();

        headers['x-firebase-id-token'] = idToken;
        headers['x-firebase-app-check'] = appCheckToken;

        return handler.next(options);
      },
    );

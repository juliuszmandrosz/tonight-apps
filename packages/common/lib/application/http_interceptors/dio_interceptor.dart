import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

InterceptorsWrapper get dioInterceptor => InterceptorsWrapper(
      onRequest: (options, handler) async {
        try {
          final headers = options.headers;
          final idToken = await FirebaseAuth.instance.currentUser?.getIdToken();
          headers['x-firebase-id-token'] = idToken;
          return handler.next(options);
        } on FirebaseAuthException {
          return handler.next(options);
        }
      },
    );

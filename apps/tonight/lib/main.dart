import 'dart:async';
import 'dart:isolate';

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:tonight/firebase_options.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app.dart';

Future<void> main() async {
  GoogleFonts.config.allowRuntimeFetching = false;

  await dotenv.load();

  if (kIsWeb) {
    _initializeApp();
  } else {
    await runZonedGuarded(
      () async {
        _initializeApp();
      },
      (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      },
    );
  }

  if (!kIsWeb) {
    final crashlytics = getIt<FirebaseCrashlytics>();
    FlutterError.onError = crashlytics.recordFlutterFatalError;
    Isolate.current.addErrorListener(
      RawReceivePort((pair) async {
        final List<dynamic> errorAndStacktrace = pair;
        await crashlytics.recordError(
          errorAndStacktrace.first,
          errorAndStacktrace.last,
          fatal: true,
        );
      }).sendPort,
    );
  }
}

_initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: 'recaptcha-v3-site-key',
  );

  FirebaseMessaging.onBackgroundMessage(_onBackgroundMessageHandler);

  registerDependencies();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  _configureTimeAgo();

  runApp(TonightApp());
}

_configureTimeAgo() {
  timeago.setLocaleMessages('pl', timeago.PlMessages());
  timeago.setLocaleMessages('en', timeago.EnMessages());
}

Future<void> _onBackgroundMessageHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

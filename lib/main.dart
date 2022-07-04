import 'dart:async';
import 'dart:isolate';

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/raver_partners_app.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> main() async {
  GoogleFonts.config.allowRuntimeFetching = false;

  await dotenv.load();

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      _configureTimeAgo();

      await Firebase.initializeApp();

      await FirebaseAppCheck.instance.activate(
        webRecaptchaSiteKey: 'recaptcha-v3-site-key',
      );

      registerDependencies();

      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      _configureTimeAgo();

      runApp(RaverPartnersApp());
    },
    (error, stack) =>
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );

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

_configureTimeAgo() {
  timeago.setLocaleMessages('pl', timeago.PlMessages());
  timeago.setLocaleMessages('en', timeago.EnMessages());
}

import 'dart:async';
import 'dart:isolate';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_app.dart';

Future<void> main() async {
  GoogleFonts.config.allowRuntimeFetching = false;

  await dotenv.load();

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Firebase.initializeApp();

      registerDependencies();

      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      runApp(RaverScannerApp());
    },
    (error, stack) =>
        getIt<FirebaseCrashlytics>().recordError(error, stack, fatal: true),
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

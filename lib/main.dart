import 'dart:async';
import 'dart:isolate';

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:raver/firebase_options.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> main() async {
  GoogleFonts.config.allowRuntimeFetching = false;

  await dotenv.load();

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      await FirebaseAppCheck.instance.activate(
        webRecaptchaSiteKey: 'recaptcha-v3-site-key',
      );

      FirebaseMessaging.onBackgroundMessage(_onBackgroundMessageHandler);

      final initialLink = await FirebaseDynamicLinks.instance.getInitialLink();

      registerDependencies();

      final storage = await HydratedStorage.build(
        storageDirectory: await getApplicationDocumentsDirectory(),
      );

      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      _configureTimeAgo();

      HydratedBlocOverrides.runZoned(
        () => runApp(
          RaverApp(
            initialLink: initialLink,
          ),
        ),
        storage: storage,
      );
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

Future<void> _onBackgroundMessageHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

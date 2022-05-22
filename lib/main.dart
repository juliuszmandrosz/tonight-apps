import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raver_scanner/firebase_options.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  registerDependencies();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await _initRemoteConfig();

  runApp(RaverScannerApp());
}

Future<void> _initRemoteConfig() async {
  // TODO - get this from commons
  final remoteConfig = getIt<FirebaseRemoteConfig>();

  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: Duration.zero,
    ),
  );

  await remoteConfig.fetchAndActivate();
}

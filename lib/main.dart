import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/firebase_options.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/raver_partners_app.dart';

Future<void> main() async {
  await dotenv.load();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  registerDependencies();

  await _initRemoteConfig();
  await _initStripe();

  runApp(RaverPartnersApp());
}

_initRemoteConfig() async {
  // TODO - move this to commons
  final remoteConfig = getIt<FirebaseRemoteConfig>();
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 10),
    minimumFetchInterval: Duration.zero,
  ));
  await remoteConfig.fetchAndActivate();
}

_initStripe() async {
  // TODO - move this to commons
  final stripe = getIt<Stripe>();
  final remoteConfig = getIt<FirebaseRemoteConfig>();
  Stripe.publishableKey = remoteConfig.getString(stripePublishableKey);
  await stripe.applySettings();
}

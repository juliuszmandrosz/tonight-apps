import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app.dart';
import 'package:raver_common/raver_common.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  registerDependencies();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  await _initRemoteConfig();
  await _initStripe();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  HydratedBlocOverrides.runZoned(
    () => runApp(RaverApp()),
    storage: storage,
  );
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

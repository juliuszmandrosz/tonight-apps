import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:raver_partners/firebase_options.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/raver_partners_app.dart';
import 'package:timeago/timeago.dart' as timeago;

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

  _configureTimeAgo();

  runApp(RaverPartnersApp());
}

_configureTimeAgo() {
  timeago.setLocaleMessages('pl', timeago.PlMessages());
  timeago.setLocaleMessages('en', timeago.EnMessages());
}

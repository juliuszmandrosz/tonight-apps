import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
    () => runApp(RaverApp()),
    storage: storage,
  );
}

_configureTimeAgo() {
  timeago.setLocaleMessages('pl', timeago.PlMessages());
  timeago.setLocaleMessages('en', timeago.EnMessages());
}

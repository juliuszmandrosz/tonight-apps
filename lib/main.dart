
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:raver_partners/firebase_options.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/raver_partners_app.dart';

Future<void> main() async {
  await dotenv.load();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  registerDependencies();
  runApp(RaverPartnersApp());
}

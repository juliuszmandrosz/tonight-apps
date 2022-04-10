import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:raver_scanner/firebase_options.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  registerDependencies();
  runApp(RaverScannerApp());
}

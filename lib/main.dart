import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  registerDependencies();
  runApp(RaverApp());
}

import 'package:flutter/material.dart';
import 'package:raver/presentation/sign_in/sign_in_page.dart';

class RaverApp extends StatelessWidget {
  const RaverApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raver',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInPage(),
    );
  }
}

import 'package:flutter/material.dart';

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
    );
  }
}


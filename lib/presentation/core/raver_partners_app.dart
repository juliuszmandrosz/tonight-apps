import 'package:flutter/material.dart';

class RaverPartnersApp extends StatelessWidget {
  const RaverPartnersApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raver Partners',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Raver Partners'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver_translations/raver_translations.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverAppBar(title: S().notifications),
    );
  }
}

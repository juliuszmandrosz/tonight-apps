import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverAppBar(title: S().notifications),
      body: Center(
        child: Text(
          S().availableSoon,
          style: context.subtitle1,
        ),
      ),
    );
  }
}

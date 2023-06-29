import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S().functionalityWillBeAvailableSoon,
        style: context.titleMedium.copyWithSecondaryColor(),
        textAlign: TextAlign.center,
      ),
    );
  }
}

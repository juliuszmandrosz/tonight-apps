import 'package:common/common.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        // TODO - add translations
        'Funkcjonalność będzie dostępna już wkrótce!',
        style: context.titleMedium.copyWithSecondaryColor(),
        textAlign: TextAlign.center,
      ),
    );
  }
}

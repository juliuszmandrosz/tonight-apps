import 'package:flutter/material.dart';
import 'package:raver_translations/raver_translations.dart';

class CanceledEventMessage extends StatelessWidget {
  const CanceledEventMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      //TODO: Look at this color when theming work will come in
      color: Colors.white12,
      width: MediaQuery.of(context).size.width,
      child: Text(S().eventCancelled),
    );
  }
}

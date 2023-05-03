import 'package:flutter/material.dart';
import 'package:tonight_scanner/presentation/core/tonight_scanner_headline.dart';
import 'package:translations/translations.dart';

class NoLiveEvent extends StatelessWidget {
  const NoLiveEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TonightScannerHeadline(text: S().noLiveEvent);
  }
}

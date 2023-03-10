import 'package:flutter/material.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class NoLiveEvent extends StatelessWidget {
  const NoLiveEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaverScannerHeadline(text: S().noLiveEvent);
  }
}

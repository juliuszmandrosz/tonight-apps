import 'dart:io';

import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class TonightUpgradeAlert extends StatelessWidget {
  final Widget? child;

  const TonightUpgradeAlert({this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UpgradeAlert(
      upgrader: Upgrader(
        dialogStyle: Platform.isIOS
            ? UpgradeDialogStyle.cupertino
            : UpgradeDialogStyle.material,
      ),
      child: child,
    );
  }
}

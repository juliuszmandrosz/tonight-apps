import 'package:flutter/material.dart';
import 'package:raver_translations/raver_translations.dart';

class RaverScannerAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;

  const RaverScannerAppBar({
    this.title,
    this.actions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? 'Tonight Scanner'),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

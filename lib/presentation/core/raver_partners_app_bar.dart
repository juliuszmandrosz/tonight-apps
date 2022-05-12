import 'package:flutter/material.dart';
import 'package:raver_translations/raver_translations.dart';

class RaverPartnersAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;

  const RaverPartnersAppBar({this.title, this.actions, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? S().tonightPartners),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

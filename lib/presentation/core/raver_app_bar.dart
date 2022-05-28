import 'package:flutter/material.dart';

class RaverAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;

  const RaverAppBar({this.title, this.actions, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // TODO - add translation
      title: Text(title ?? 'Tonight'),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

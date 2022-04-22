import 'package:flutter/material.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver_translations/raver_translations.dart';

class RaverAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;

  const RaverAppBar({this.title, this.actions, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? S().raver),
      backgroundColor: DefaultColors.primaryColor,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

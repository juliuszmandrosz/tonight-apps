import 'package:flutter/material.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

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

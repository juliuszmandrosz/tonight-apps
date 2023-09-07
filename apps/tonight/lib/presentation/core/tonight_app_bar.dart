import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/sign_in/widgets/tonight_logo.dart';

class TonightAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final Color? backgroundColor;

  const TonightAppBar({
    this.title,
    this.actions,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: title.isNullOrEmpty ? 0 : null,
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: title != null
          ? AutoSizeText(
              title!,
              maxLines: 1,
            )
          : const TonightLogo(height: kToolbarHeight * 0.5),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

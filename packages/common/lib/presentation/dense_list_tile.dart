import 'package:flutter/material.dart';

class DenseListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? contentPadding;
  final bool enabled;

  const DenseListTile({
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.contentPadding,
    this.enabled = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: enabled,
      onTap: onTap,
      dense: true,
      contentPadding:
          contentPadding ?? const EdgeInsets.only(left: 0.0, right: 0.0),
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      leading: leading,
    );
  }
}

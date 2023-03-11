import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class ProfileMenuListTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ProfileMenuListTile({
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: AutoSizeText(
        title,
        maxLines: 1,
        style: context.subtitle1,
      ),
      trailing: const Icon(Icons.chevron_right_rounded),
      onTap: onTap,
    );
  }
}

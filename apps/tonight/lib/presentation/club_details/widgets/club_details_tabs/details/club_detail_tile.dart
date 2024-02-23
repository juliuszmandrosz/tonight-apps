import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

class ClubDetailTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final Widget? trailing;

  const ClubDetailTile({
    required this.title,
    required this.subtitle,
    this.onTap,
    this.trailing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: AutoSizeText(
        title,
        maxLines: 1,
        style: context.titleMedium,
      ),
      subtitle: subtitle.isEmpty
          ? null
          : Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                subtitle,
                style: context.bodyMedium.copyWith(
                  color: context.secondaryColor,
                ),
              ),
            ),
      onTap: onTap,
      trailing: trailing,
    );
  }
}

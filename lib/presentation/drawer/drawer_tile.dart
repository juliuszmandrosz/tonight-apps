import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      onTap: () {
        context.popRoute();
        onTap();
      },
      leading: FaIcon(
        icon,
        size: 20,
      ),
      title: AutoSizeText(
        label,
        maxLines: 1,
        style: context.subtitle1,
      ),
    );
  }
}

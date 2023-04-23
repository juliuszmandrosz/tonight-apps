import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserDetailTile extends StatelessWidget {
  final String label;
  final int value;
  final IconData icon;
  final VoidCallback? onTap;

  const UserDetailTile({
    required this.label,
    required this.value,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          FaIcon(
            icon,
            color: context.secondaryColor,
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: context.titleSmall.copyWith(
              color: context.secondaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '$value',
            style: context.titleMedium.copyWith(
              color: context.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final Color? color;

  const CircleIconButton({
    required this.icon,
    required this.onPressed,
    this.size = 50.0,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? context.primaryColor,
        shape: BoxShape.circle,
      ),
      width: size,
      height: size,
      child: IconButton(
        icon: FaIcon(icon),
        onPressed: onPressed,
      ),
    );
  }
}

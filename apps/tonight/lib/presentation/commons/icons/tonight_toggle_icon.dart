import 'package:flutter/material.dart';

class TonightToggleIcon extends StatelessWidget {
  const TonightToggleIcon({
    Key? key,
    required this.onIcon,
    required this.onPressed,
    required this.offIcon,
    required this.value,
  }) : super(key: key);

  final bool value;
  final Widget offIcon;
  final Widget onIcon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: value ? onIcon : offIcon);
  }
}

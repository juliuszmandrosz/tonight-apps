import 'package:flutter/material.dart';

class TonightIconButton extends StatelessWidget {
  const TonightIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final Widget icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}

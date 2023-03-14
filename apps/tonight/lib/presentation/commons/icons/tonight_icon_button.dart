import 'package:flutter/material.dart';
import 'package:tonight/presentation/commons/icons/tonight_icon.dart';

class TonightIconButton extends TonightIcon {
  const TonightIconButton(
      {Key? key, required this.onPressed, required this.icon})
      : super(key: key, onPressed: onPressed);

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

import 'package:flutter/material.dart';
import 'package:raver/presentation/commons/icons/raver_icon.dart';

class RaverIconButton extends RaverIcon {
  const RaverIconButton({Key? key, required this.onPressed, required this.icon})
      : super(key: key, onPressed: onPressed);

  final Widget icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: icon);
  }
}

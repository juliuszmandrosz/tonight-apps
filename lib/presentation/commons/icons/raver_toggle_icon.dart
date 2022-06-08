import 'package:flutter/material.dart';
import 'package:raver/presentation/commons/icons/raver_icon.dart';

class RaverToggleIcon extends RaverIcon {
  const RaverToggleIcon({
    Key? key,
    required this.onIcon,
    required this.onPressed,
    required this.offIcon,
    required this.value,
  }) : super(key: key, onPressed: onPressed);

  final bool value;
  final Widget offIcon;
  final Widget onIcon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: value ? onIcon : offIcon);
  }
}

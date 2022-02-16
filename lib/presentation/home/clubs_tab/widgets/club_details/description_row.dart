import 'package:flutter/material.dart';
import 'package:raver/presentation/commons/icons/raver_icon.dart';

class DescriptionRow extends StatelessWidget {
  const DescriptionRow({
    Key? key,
    required Text text,
    RaverIcon? icon,
  })  : _text = text,
        _icon = icon,
        super(key: key);

  final Text _text;
  final RaverIcon? _icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _text,
        //TODO: Could be this done in better way?
        _icon != null ? _icon! : Container(),
      ],
    );
  }
}

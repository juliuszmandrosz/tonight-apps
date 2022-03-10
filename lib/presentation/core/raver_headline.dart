import 'package:flutter/material.dart';

class RaverHeadline extends StatelessWidget {
  final String text;

  const RaverHeadline({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      style: textTheme.headline1,
    );
  }
}

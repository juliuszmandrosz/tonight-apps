import 'package:flutter/material.dart';

class TonightInputDecorator extends StatelessWidget {
  final Widget? child;

  const TonightInputDecorator({
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: const InputDecoration().copyWith(
        contentPadding: const EdgeInsets.all(6),
      ),
      child: child,
    );
  }
}

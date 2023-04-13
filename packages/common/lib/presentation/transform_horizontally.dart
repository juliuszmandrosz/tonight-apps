import 'dart:math' as math;

import 'package:flutter/material.dart';

class TransformHorizontally extends StatelessWidget {
  final Widget? child;

  const TransformHorizontally({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(math.pi),
      child: child,
    );
  }
}

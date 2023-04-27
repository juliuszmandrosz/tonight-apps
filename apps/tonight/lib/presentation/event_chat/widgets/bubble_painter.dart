import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class BubblePainter extends CustomPainter {
  final ScrollableState scrollable;
  final BuildContext bubbleContext;
  final List<Color> colors;

  BubblePainter({
    required this.scrollable,
    required this.bubbleContext,
    required this.colors,
  }) : super(repaint: scrollable.position);

  @override
  void paint(Canvas canvas, Size size) {
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final scrollableRect = Offset.zero & scrollableBox.size;
    final bubbleBox = bubbleContext.findRenderObject() as RenderBox;

    final origin =
        bubbleBox.localToGlobal(Offset.zero, ancestor: scrollableBox);
    final paint = Paint()
      ..shader = ui.Gradient.linear(
        scrollableRect.topCenter,
        scrollableRect.bottomCenter,
        colors,
        [0.0, 1.0],
        TileMode.clamp,
        Matrix4.translationValues(-origin.dx, -origin.dy, 0.0).storage,
      );
    canvas.drawRect(Offset.zero & size, paint);
  }

  @override
  bool shouldRepaint(BubblePainter oldDelegate) {
    return oldDelegate.scrollable != scrollable ||
        oldDelegate.bubbleContext != bubbleContext ||
        oldDelegate.colors != colors;
  }
}

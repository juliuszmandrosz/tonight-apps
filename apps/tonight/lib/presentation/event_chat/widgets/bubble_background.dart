import 'package:flutter/material.dart';
import 'package:tonight/presentation/event_chat/widgets/bubble_painter.dart';

class BubbleBackground extends StatelessWidget {
  final List<Color> colors;
  final Widget? child;

  const BubbleBackground({
    required this.colors,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BubblePainter(
        scrollable: Scrollable.of(context),
        bubbleContext: context,
        colors: colors,
      ),
      child: child,
    );
  }
}

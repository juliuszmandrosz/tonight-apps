import 'package:common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CircleLoadingIndicator extends StatelessWidget {
  final double size;

  const CircleLoadingIndicator({this.size = 40, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitFadingCircle(
        color: context.onSurfaceColor,
        size: size,
      ),
    );
  }
}

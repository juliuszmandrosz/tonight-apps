import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DotsLoadingIndicator extends StatelessWidget {
  final double size;

  const DotsLoadingIndicator({this.size = 30, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      color: context.onSurfaceColor,
      size: size,
    );
  }
}

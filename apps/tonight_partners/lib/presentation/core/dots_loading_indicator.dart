import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver_common/raver_common.dart';

class DotsLoadingIndicator extends StatelessWidget {
  const DotsLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      color: context.onSurfaceColor,
      size: 30,
    );
  }
}

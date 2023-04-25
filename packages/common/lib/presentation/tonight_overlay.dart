import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

class TonightOverlay extends StatelessWidget {
  final Widget child;

  const TonightOverlay({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayOpacity: .7,
      overlayWidget: const WaveLoadingIndicator(),
      overlayColor: context.shadowColor,
      useDefaultLoading: false,
      child: child,
    );
  }
}

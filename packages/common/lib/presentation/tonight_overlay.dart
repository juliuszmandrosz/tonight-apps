import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

class TonightOverlay extends StatelessWidget {
  final Widget child;
  final double overlayOpacity;

  const TonightOverlay({
    required this.child,
    this.overlayOpacity = .7,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayOpacity: overlayOpacity,
      overlayWidget: const WaveLoadingIndicator(),
      overlayColor: context.shadowColor,
      useDefaultLoading: false,
      child: child,
    );
  }
}

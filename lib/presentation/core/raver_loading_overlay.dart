import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:raver_common/raver_common.dart';

class RaverLoadingOverlay {
  static OverlayEntry? _overlay;

  RaverLoadingOverlay();

  static show(BuildContext context) {
    if (_overlay == null) {
      _overlay = OverlayEntry(
        builder: (context) => ColoredBox(
          color: context.shadowColor.withOpacity(.5),
          child: Center(
            child: Lottie.asset(
              'assets/animations/tickets_logo.json',
              frameRate: FrameRate(60),
            ),
          ),
        ),
      );

      Overlay.of(context)?.insert(_overlay!);
    }
  }

  static void hide() {
    if (_overlay != null) {
      _overlay!.remove();
      _overlay = null;
    }
  }
}

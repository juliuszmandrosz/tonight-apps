import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';

class CameraPreviewMiddleContent extends StatelessWidget {
  final CameraState cameraState;
  final bool flashScreen;
  final VoidCallback onShutterAnimationEnd;
  final String heroTag;

  const CameraPreviewMiddleContent({
    required this.cameraState,
    required this.flashScreen,
    required this.onShutterAnimationEnd,
    required this.heroTag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AwesomeCameraPreview(
      state: cameraState,
      padding: EdgeInsets.zero,
      alignment: Alignment.center,
      interfaceBuilder: (cameraState, _, __) => cameraState.when(
        onPhotoMode: (photoState) => IgnorePointer(
          ignoring: flashScreen,
          child: AnimatedOpacity(
            opacity: flashScreen ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            onEnd: onShutterAnimationEnd,
            child: Container(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

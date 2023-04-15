import 'dart:io';

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';

class CameraPreviewMiddleContent extends StatelessWidget {
  final CameraState cameraState;
  final bool flashScreen;
  final VoidCallback onShutterAnimationEnd;
  static const _pictureHeroTag = 'wallPhotoCameraPreviewHero';


  const CameraPreviewMiddleContent({
    required this.cameraState,
    required this.flashScreen,
    required this.onShutterAnimationEnd,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AwesomeCameraPreview(
      state: cameraState,
      padding: EdgeInsets.zero,
      alignment: Alignment.center,
      interfaceBuilder: (cameraState, _, __) =>
          cameraState.when(
            onPhotoMode: (state) =>
                Column(
                  children: [
                    IgnorePointer(
                      ignoring: flashScreen,
                      child: AnimatedOpacity(
                        opacity: flashScreen ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.easeOut,
                        onEnd: onShutterAnimationEnd,
                        child: Container(color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    AwesomeFilterWidget(
                      state: state,
                      filterListPosition: FilterListPosition.belowButton,
                    ),
                  ],
                ),
            onPreviewMode: (previewState) =>
                Hero(
                  tag: _pictureHeroTag,
                  child: Image(
                    fit: BoxFit.cover,
                    image: FileImage(
                      File(previewState.captureState!.filePath),
                    ),
                  ),
                ),
          ),
    );
  }
}

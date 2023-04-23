import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/wall_photo_camera_preview/widgets/camera_preview_take_photo_button.dart';

class CameraPreviewBottomActions extends StatelessWidget {
  final double height;
  final CameraState cameraState;
  final Function() onCaptureTap;
  final Function(String photoPath) onResult;
  final VoidCallback onRetryTap;
  final VoidCallback onSwitchCameraTap;
  final String photoHeroTag;

  const CameraPreviewBottomActions({
    required this.height,
    required this.cameraState,
    required this.onCaptureTap,
    required this.onResult,
    required this.onRetryTap,
    required this.onSwitchCameraTap,
    required this.photoHeroTag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: AwesomeBottomActions(
        state: cameraState,
        padding: const EdgeInsets.symmetric(vertical: 8),
        left: StreamBuilder<MediaCapture?>(
          stream: cameraState.captureState$,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return AwesomeFlashButton(state: cameraState);
            }
            return const SizedBox.shrink();
          },
        ),
        captureButton: cameraState.when(
          onPhotoMode: (photoState) => CameraPreviewTakePhotoButton(
            onTap: () async {
              final isCapturing = photoState.captureState?.status ==
                  MediaCaptureStatus.capturing;
              if (isCapturing) return;
              onCaptureTap();
              final result = await photoState.takePhoto();
              onResult(result);
            },
          ),
        ),
        right: StreamBuilder<MediaCapture?>(
          stream: cameraState.captureState$,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return AwesomeCameraSwitchButton(
                state: cameraState,
                onSwitchTap: (state) async {
                  onSwitchCameraTap();
                  await state.switchCameraSensor();
                },
              );
            }
            return SizedBox(
              width: 70,
              child: AwesomeMediaPreview(
                mediaCapture: snapshot.requireData,
                onMediaTap: (_) {},
              ),
            );
          },
        ),
      ),
    );
  }
}

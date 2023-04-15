import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/wall_photo_camera_preview/widgets/camera_preview_take_photo_button.dart';
import 'package:translations/translations.dart';

class CameraPreviewBottomActions extends StatelessWidget {
  final double height;
  final CameraState cameraState;
  final Function() onCaptureTap;
  final Function(String photoPath) onResult;
  final VoidCallback onRetryTap;

  const CameraPreviewBottomActions({
    required this.height,
    required this.cameraState,
    required this.onCaptureTap,
    required this.onResult,
    required this.onRetryTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: AwesomeBottomActions(
        state: cameraState,
        padding: const EdgeInsets.symmetric(vertical: 8),
        left: cameraState.when(
          onPhotoMode: (_) => const SizedBox.shrink(),
          onPreviewMode: (previewState) => SizedBox(
            width: 130,
            height: 45,
            child: OutlinedButton.icon(
              onPressed: () {
                previewState.setState(CaptureMode.photo);
                onRetryTap();
              },
              icon: const FaIcon(
                FontAwesomeIcons.arrowsRotate,
                size: 18,
              ),
              // TODO - add translation
              label: Text(
                'Ponów',
                style: context.titleMedium,
              ),
            ),
          ),
        ),
        captureButton: cameraState.when(
          onPreviewMode: (_) => const SizedBox(),
          onPhotoMode: (photoState) => CameraPreviewTakePhotoButton(
            onTap: () async {
              final isCapturing = photoState.captureState?.status ==
                  MediaCaptureStatus.capturing;
              if (isCapturing) return;
              onCaptureTap();
              final result = await photoState.takePhoto();
              onResult(result);
              photoState.setState(CaptureMode.preview);
            },
          ),
        ),
        right: cameraState.when(
          onPhotoMode: (photoState) => StreamBuilder<MediaCapture?>(
            stream: photoState.captureState$,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const SizedBox(width: 70, height: 70);
              }
              return SizedBox(
                width: 70,
                child: AwesomeMediaPreview(
                  mediaCapture: snapshot.requireData,
                  onMediaTap: (media) {
                    photoState.setState(CaptureMode.preview);
                  },
                ),
              );
            },
          ),
          onPreviewMode: (previewState) => SizedBox(
            width: 130,
            height: 45,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.forward,
                size: 18,
              ),
              label: Text(
                S().next,
                style: context.titleMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

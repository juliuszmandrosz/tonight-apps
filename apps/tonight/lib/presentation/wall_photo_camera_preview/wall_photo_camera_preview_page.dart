import 'package:camera/camera.dart';
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tonight/presentation/wall_photo_camera_preview/widgets/camera_preview_bottom_actions.dart';
import 'package:tonight/presentation/wall_photo_camera_preview/widgets/camera_preview_middle_content.dart';

class WallPhotoCameraPreviewPage extends StatefulWidget {
  final List<CameraDescription> cameras;

  const WallPhotoCameraPreviewPage({
    required this.cameras,
    Key? key,
  }) : super(key: key);

  @override
  State<WallPhotoCameraPreviewPage> createState() =>
      _WallPhotoCameraPreviewPageState();
}

class _WallPhotoCameraPreviewPageState extends State<WallPhotoCameraPreviewPage>
    with WidgetsBindingObserver {
  String? _photoPath;
  var _flashScreen = false;

  Future<String> get _path async {
    final dir = await getTemporaryDirectory();
    final name = DateTime.now().millisecondsSinceEpoch.toString();
    return '${dir.path}/$name.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return CameraAwesomeBuilder.awesome(
            enableAudio: false,
            showPreview: false,
            enablePhysicalButton: true,
            sensor: Sensors.front,
            mirrorFrontCamera: true,
            progressIndicator: const TicketLogoAnimation(),
            // previewFit: CameraPreviewFit.fitHeight,
            saveConfig: SaveConfig.photo(
              pathBuilder: () => _path,
            ),
            onPreviewTapBuilder: (_) => OnPreviewTap(
              onTapPainter: (_) => const SizedBox.shrink(),
              onTap: (_, __, ___) => {},
            ),
            topActionsBuilder: (_) => const SizedBox.shrink(),
            middleContentBuilder: (cameraState) => WillPopScope(
              onWillPop: () async {
                if (_photoPath == null) return true;
                setState(() {
                  _photoPath = null;
                });
                cameraState.setState(CaptureMode.photo);
                return false;
              },
              child: CameraPreviewMiddleContent(
                cameraState: cameraState,
                flashScreen: _flashScreen,
                onShutterAnimationEnd: () => setState(() {
                  _flashScreen = false;
                }),
              ),
            ),
            bottomActionsBuilder: (cameraState) => CameraPreviewBottomActions(
              height: constraints.maxHeight * 0.15,
              cameraState: cameraState,
              onCaptureTap: () => setState(() {
                _flashScreen = true;
              }),
              onResult: (photoPath) => setState(() {
                _photoPath = photoPath;
              }),
              onRetryTap: () => setState(() {
                _photoPath = null;
              }),
            ),
          );
        }),
      ),
    );
  }
}

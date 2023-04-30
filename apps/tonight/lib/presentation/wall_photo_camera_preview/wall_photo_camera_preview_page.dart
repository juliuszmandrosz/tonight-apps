import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tonight/presentation/wall_photo_camera_preview/widgets/camera_preview_bottom_actions.dart';
import 'package:tonight/presentation/wall_photo_camera_preview/widgets/camera_preview_middle_content.dart';
import 'package:tonight/presentation/wall_photo_camera_preview/widgets/wall_photo_preview.dart';

class WallPhotoCameraPreviewPage extends StatefulWidget {
  final dartz.Option<Event> event;

  const WallPhotoCameraPreviewPage({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  State<WallPhotoCameraPreviewPage> createState() =>
      _WallPhotoCameraPreviewPageState();
}

class _WallPhotoCameraPreviewPageState
    extends State<WallPhotoCameraPreviewPage> {
  String? _photoPath;
  var _flashScreen = false;
  var _isSelfie = true;
  static const _photoHeroTag = 'wallPhotoCameraPreviewHero';

  @override
  void initState() {
    super.initState();
  }

  Future<String> get _path async {
    final dir = await getTemporaryDirectory();
    final name = DateTime.now().millisecondsSinceEpoch.toString();
    return '${dir.path}/$name.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final bottomHeight = constraints.maxHeight * 0.15;
            return _photoPath != null
                ? WallPhotoPreview(
                    photoPath: _photoPath!,
                    heroTag: _photoHeroTag,
                    height: bottomHeight,
                    isSelfie: _isSelfie,
                    event: widget.event,
                    onRetry: () {
                      setState(() {
                        _photoPath = null;
                      });
                    },
                  )
                : CameraAwesomeBuilder.awesome(
                    enableAudio: false,
                    enablePhysicalButton: true,
                    sensor: _isSelfie ? Sensors.front : Sensors.back,
                    showPreview: false,
                    progressIndicator: const WaveLoadingIndicator(),
                    exifPreferences: ExifPreferences(
                      saveGPSLocation: false,
                    ),
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
                        heroTag: _photoHeroTag,
                        cameraState: cameraState,
                        flashScreen: _flashScreen,
                        onShutterAnimationEnd: () => setState(() {
                          _flashScreen = false;
                        }),
                      ),
                    ),
                    bottomActionsBuilder: (cameraState) =>
                        CameraPreviewBottomActions(
                      height: bottomHeight,
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
                      onSwitchCameraTap: () => setState(() {
                        _isSelfie = !_isSelfie;
                      }),
                      photoHeroTag: _photoHeroTag,
                    ),
                  );
          },
        ),
      ),
    );
  }
}

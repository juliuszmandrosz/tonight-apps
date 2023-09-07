import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:tonight/presentation/add_challenge_story/widgets/add_challenge_story_capture_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class AddChallengeStoryPage extends StatefulWidget {
  final Challenge challenge;
  final List<CameraDescription> cameras;

  const AddChallengeStoryPage({
    required this.challenge,
    required this.cameras,
    Key? key,
  }) : super(key: key);

  @override
  State<AddChallengeStoryPage> createState() => _AddChallengeStoryPageState();
}

class _AddChallengeStoryPageState extends State<AddChallengeStoryPage>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late CameraController _cameraController;
  late AnimationController _recordAnimationController;
  var _isSwitchingCameras = false;
  var _isRecording = false;
  static const minimumVideoDurationInMilliseconds = 1000;
  DateTime? _pressStartTime;

  @override
  void initState() {
    super.initState();
    _initCamera();
    _initRecordAnimation();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!_cameraController.value.isInitialized) {
      return;
    }

    final controller = _cameraController;

    if (state == AppLifecycleState.inactive) {
      _cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initCamera(controller.description);
    }
  }

  _initCamera([CameraDescription? cameraDescription]) async {
    _cameraController = CameraController(
      cameraDescription ?? widget.cameras.first,
      ResolutionPreset.high,
      enableAudio: true,
    );
    await _cameraController.initialize();
    await _cameraController.setFlashMode(FlashMode.off);
    setState(() {});
  }

  _initRecordAnimation() {
    _recordAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    );
    _recordAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _stopVideoRecording(const Duration(seconds: 15));
      }
    });
  }

  _switchCamera() async {
    setState(() {
      _isSwitchingCameras = true;
    });
    final lensDirection = _cameraController.description.lensDirection;

    CameraDescription? newDescription;

    for (var description in widget.cameras) {
      if (description.lensDirection != lensDirection) {
        newDescription = description;
        break;
      }
    }

    if (newDescription != null) {
      await _initCamera(newDescription);
      setState(() {
        _isSwitchingCameras = false;
      });
    }
  }

  void _toggleFlash() async {
    FlashMode newMode;
    switch (_cameraController.value.flashMode) {
      case FlashMode.off:
        newMode = FlashMode.auto;
        break;
      case FlashMode.auto:
        newMode = FlashMode.always;
        break;
      case FlashMode.always:
        newMode = FlashMode.torch;
        break;
      case FlashMode.torch:
      default:
        newMode = FlashMode.off;
        break;
    }
    await _cameraController.setFlashMode(newMode);
    setState(() {});
  }

  IconData get _flashIcon {
    switch (_cameraController.value.flashMode) {
      case FlashMode.off:
        return Icons.flash_off;
      case FlashMode.auto:
        return Icons.flash_auto;
      case FlashMode.always:
        return Icons.flash_auto;
      case FlashMode.torch:
        return Icons.flash_on;
      default:
        return Icons.flash_off;
    }
  }

  Future<void> _takePicture() async {
    if (_isSwitchingCameras || _cameraController.value.isTakingPicture) {
      return;
    }
    await _cameraController.setFocusMode(FocusMode.locked);
    await _cameraController.setExposureMode(ExposureMode.locked);
    final photo = await _cameraController.takePicture();
    await _cameraController.setFocusMode(FocusMode.auto);
    await _cameraController.setExposureMode(ExposureMode.auto);
    if (context.mounted) {
      context.pushRoute(
        PhotoPreviewRoute(
          photo: photo,
          challenge: widget.challenge,
          isSelfie: _cameraController.description.lensDirection ==
              CameraLensDirection.front,
        ),
      );
    }
  }

  Future<void> _startVideoRecording() async {
    if (_cameraController.value.isRecordingVideo) {
      return;
    }
    await _cameraController.startVideoRecording();
    _recordAnimationController.forward();
    setState(() {
      _isRecording = true;
    });
  }

  Future<void> _stopVideoRecording(Duration duration) async {
    if (!_cameraController.value.isRecordingVideo) return;
    _recordAnimationController.stop();
    _recordAnimationController.reset();
    setState(() {
      _isRecording = false;
    });
    try {
      final video = await _cameraController.stopVideoRecording();
      if (duration.inMilliseconds < minimumVideoDurationInMilliseconds) return;
      if (context.mounted) {
        context.pushRoute(
          VideoPreviewRoute(
            video: video,
            challenge: widget.challenge,
            isSelfie: _cameraController.description.lensDirection ==
                CameraLensDirection.front,
          ),
        );
      }
    } on CameraException catch (e) {
      Logger().e(e);
      final controller = _cameraController;
      await _cameraController.dispose();
      await _initCamera(controller.description);
    }
  }

  @override
  dispose() {
    _cameraController.dispose();
    _recordAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: !_isSwitchingCameras && _cameraController.value.isInitialized
            ? Column(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onDoubleTap: _switchCamera,
                      child: AspectRatio(
                        aspectRatio: 9 / 16,
                        child: CameraPreview(_cameraController),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(_flashIcon),
                          onPressed: _toggleFlash,
                        ),
                        GestureDetector(
                          onTap: _takePicture,
                          onLongPress: () async {
                            _pressStartTime = DateTime.now();
                            await _startVideoRecording();
                          },
                          onLongPressEnd: (_) async {
                            if (_pressStartTime == null) return;
                            final pressDuration =
                                DateTime.now().difference(_pressStartTime!);
                            await _stopVideoRecording(pressDuration);
                            if (pressDuration.inMilliseconds <
                                minimumVideoDurationInMilliseconds) {
                              await _takePicture();
                            }
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: ValueListenableBuilder(
                                  valueListenable: _recordAnimationController,
                                  builder: (context, value, child) =>
                                      CircularProgressIndicator(
                                    value: _isRecording ? value : 0,
                                    strokeWidth: 6,
                                  ),
                                ),
                              ),
                              const AddChallengeStoryCaptureButton(),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.cameraswitch),
                          onPressed: _switchCamera,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : const WaveLoadingIndicator(),
      ),
    );
  }
}

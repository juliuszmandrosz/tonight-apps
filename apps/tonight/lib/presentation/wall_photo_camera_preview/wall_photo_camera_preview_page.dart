import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

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
  late CameraController _cameraController;
  XFile? _picture;
  var _flashScreen = false;
  static const _pictureHeroTag = 'wallPhotoCameraPreviewHero';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initCamera(widget.cameras[1]);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!_cameraController.value.isInitialized) return;
    if (state == AppLifecycleState.inactive) {
      _cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initCamera(_cameraController.description);
    }
  }

  Future<void> _initCamera(CameraDescription cameraDescription) async {
    _cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.medium,
      enableAudio: false,
    );
    try {
      await _cameraController.initialize();
      if (!mounted) return;
      setState(() {});
    } on CameraException {
      // TODO - add translation
      context.showSnackbarMessage('Błąd podczas inicjalizacji kamery');
      context.popRoute();
    }
  }

  Future _takePicture() async {
    if (!_cameraController.value.isInitialized) return;
    if (_cameraController.value.isTakingPicture) return;
    try {
      setState(() {
        _flashScreen = true;
      });
      final picture = await _cameraController.takePicture();
      setState(() {
        _picture = picture;
      });
    } on CameraException {
      // TODO - add translation
      context.showSnackbarMessage('Błąd podczas zapisu zdjęcia');
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_picture != null) {
          setState(() {
            _picture = null;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButton: _picture == null
            ? null
            : FloatingActionButton.extended(
                onPressed: () => context.pushRoute(
                  AddWallPhotoRoute(
                    photo: _picture!,
                    heroTag: _pictureHeroTag,
                  ),
                ),
                icon: const FaIcon(FontAwesomeIcons.forward),
                label: Text(S().next),
              ),
        body: SafeArea(
          child: Stack(
            children: [
              _cameraPreview,
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  onPressed: () {
                    _picture == null
                        ? context.popRoute()
                        : setState(() {
                            _picture = null;
                          });
                  },
                  icon: FaIcon(
                    _picture == null
                        ? FontAwesomeIcons.arrowLeft
                        : FontAwesomeIcons.xmark,
                  ),
                ),
              ),
              if (_picture == null)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: IconButton(
                    onPressed: _takePicture,
                    icon: const Icon(Icons.circle),
                    iconSize: 70,
                  ),
                ),
              IgnorePointer(
                ignoring: !_flashScreen,
                child: AnimatedOpacity(
                  opacity: _flashScreen ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                  child: Container(color: Colors.white),
                  onEnd: () {
                    setState(() {
                      _flashScreen = false;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _cameraPreview {
    if (!_cameraController.value.isInitialized) {
      return const TicketLogoAnimation();
    }

    final content = _picture != null
        ? Hero(
            tag: _pictureHeroTag,
            child: TransformHorizontally(
              child: Image.file(
                File(_picture!.path),
                fit: BoxFit.cover,
              ),
            ),
          )
        : CameraPreview(_cameraController);

    return Center(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: content,
    ));
  }
}

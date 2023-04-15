import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class WallPhotoCameraPreviewPage extends StatefulWidget {
  const WallPhotoCameraPreviewPage({Key? key}) : super(key: key);

  @override
  State<WallPhotoCameraPreviewPage> createState() =>
      _WallPhotoCameraPreviewPageState();
}

class _WallPhotoCameraPreviewPageState extends State<WallPhotoCameraPreviewPage>
    with WidgetsBindingObserver {
  final _picker = ImagePicker();

  @override
  initState() {
    super.initState();
    _takePhoto();
  }

  Future<void> _takePhoto() async {
    final result = await _picker.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.front,
      imageQuality: 100,
    );

    if (!mounted) return;

    if (result == null) await context.popRoute();

    if (!mounted) return;

    await context.pushRoute(AddWallPhotoRoute(photo: result!));

    if (!mounted) return;

    await _takePhoto();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

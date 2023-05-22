import 'dart:convert';

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:translations/translations.dart';

class QrRewardPage extends StatefulWidget {
  final WallPhoto photo;

  const QrRewardPage({
    required this.photo,
    Key? key,
  }) : super(key: key);

  @override
  State<QrRewardPage> createState() => _QrRewardPageState();
}

class _QrRewardPageState extends State<QrRewardPage> {
  @override
  void initState() {
    ScreenBrightness().setScreenBrightness(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(title: S().rewards(1)),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImageView(
                data: _getData(context),
                version: QrVersions.auto,
                size: 300,
                backgroundColor: context.onSurfaceColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getData(BuildContext context) {
    final data = {
      'wallPhotoId': widget.photo.id,
    };

    return jsonEncode(data);
  }

  @override
  void dispose() {
    ScreenBrightness().resetScreenBrightness();
    super.dispose();
  }
}

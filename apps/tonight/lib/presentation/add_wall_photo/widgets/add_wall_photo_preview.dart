import 'dart:io';

import 'package:camera/camera.dart';
import 'package:common/presentation/transform_horizontally.dart';
import 'package:flutter/material.dart';

class AddWallPhotoPreview extends StatelessWidget {
  final XFile photo;
  final String heroTag;

  const AddWallPhotoPreview({
    required this.photo,
    required this.heroTag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxWidth,
          child: Hero(
            tag: heroTag,
            child: TransformHorizontally(
              child: Image.file(File(photo.path)),
            ),
          ),
        );
      },
    );
  }
}

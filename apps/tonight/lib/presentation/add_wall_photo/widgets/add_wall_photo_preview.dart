import 'dart:io';

import 'package:common/presentation/transform_horizontally.dart';
import 'package:flutter/material.dart';

class AddWallPhotoPreview extends StatelessWidget {
  final String photoPath;
  final String heroTag;

  const AddWallPhotoPreview({
    required this.photoPath,
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
              child: Image.file(
                File(photoPath),
              ),
            ),
          ),
        );
      },
    );
  }
}

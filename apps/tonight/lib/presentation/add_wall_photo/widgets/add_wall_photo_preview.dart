import 'dart:io';

import 'package:common/common.dart';
import 'package:flutter/material.dart';

class AddWallPhotoPreview extends StatelessWidget {
  final String photoPath;
  final String heroTag;
  final bool isSelfie;

  const AddWallPhotoPreview({
    required this.photoPath,
    required this.heroTag,
    required this.isSelfie,
    Key? key,
  }) : super(key: key);

  Widget get _photo => Image.file(
        File(photoPath),
      );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxWidth,
          child: Hero(
            tag: heroTag,
            child: isSelfie ? TransformHorizontally(child: _photo) : _photo,
          ),
        );
      },
    );
  }
}

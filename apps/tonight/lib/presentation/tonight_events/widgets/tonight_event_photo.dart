import 'package:common/presentation/network_photo.dart';
import 'package:flutter/material.dart';

class TonightEventPhoto extends StatelessWidget {
  final String photoUrl;
  final String heroTag;

  const TonightEventPhoto({
    required this.photoUrl,
    required this.heroTag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: NetworkPhoto(
        photoUrl: photoUrl,
        photoHeight: 250,
      ),
    );
  }
}

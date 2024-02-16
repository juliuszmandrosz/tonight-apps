import 'package:common/common.dart';
import 'package:flutter/material.dart';

class DiscoverCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final String label;
  final VoidCallback onTap;

  const DiscoverCircleAvatar({
    super.key,
    required this.imageUrl,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ProfilePictureContainer(
              imageSize: 90,
              profilePictureUrl: imageUrl,
              username: label,
              textStyle: context.titleMedium,
              backgroundColor: Colors.transparent,
              textColor: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: context.titleSmall.copyWithSecondaryColor(),
        ),
      ],
    );
  }
}

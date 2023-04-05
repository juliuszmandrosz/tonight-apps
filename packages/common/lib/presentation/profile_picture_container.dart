import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/string_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/presentation/circle_network_photo.dart';
import 'package:flutter/material.dart';

class ProfilePictureContainer extends StatelessWidget {
  final double imageSize;
  final String username;
  final String? profilePictureUrl;

  const ProfilePictureContainer({
    required this.imageSize,
    required this.username,
    required this.profilePictureUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageSize,
      width: imageSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.surfaceColor,
      ),
      child: Center(
        child: profilePictureUrl.isNotNullOrEmpty
            ? CircleNetworkPhoto(
                photoUrl: profilePictureUrl!,
                containerSize: imageSize,
                loaderSize: 16,
              )
            : Text(
                username.isEmpty
                    ? ''
                    : username.length == 1
                        ? username[0].toUpperCase()
                        : username.substring(0, 2).toUpperCase(),
                style: context.headlineMedium,
              ),
      ),
    );
  }
}

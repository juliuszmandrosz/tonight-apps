import 'package:common/extensions/string_extensions.dart';
import 'package:common/presentation/circle_network_photo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePictureContainer extends StatelessWidget {
  final double imageSize;
  final String username;
  final String? profilePictureUrl;
  final TextStyle textStyle;
  final bool showPlaceholder;
  final Color backgroundColor;
  final Color textColor;

  const ProfilePictureContainer({
    required this.imageSize,
    required this.profilePictureUrl,
    required this.username,
    required this.textStyle,
    required this.backgroundColor,
    required this.textColor,
    this.showPlaceholder = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageSize,
      width: imageSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (showPlaceholder) {
      return FaIcon(FontAwesomeIcons.user,
          size: imageSize / 2, color: textColor);
    }

    return profilePictureUrl.isNotNullOrEmpty
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
            style: textStyle.copyWith(color: textColor),
          );
  }
}

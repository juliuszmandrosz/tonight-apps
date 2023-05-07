import 'package:common/extensions/string_extensions.dart';
import 'package:common/presentation/circle_network_photo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePictureContainer extends StatelessWidget {
  final double imageSize;
  final String username;
  final String? profilePictureUrl;
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color textColor;
  final bool isUserDeleted;

  const ProfilePictureContainer({
    required this.imageSize,
    required this.profilePictureUrl,
    required this.username,
    required this.textStyle,
    required this.backgroundColor,
    required this.textColor,
    this.isUserDeleted = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildContent(context);
  }

  Widget _buildContent(BuildContext context) {
    if (isUserDeleted) {
      return _buildUserPlaceholder(
        FaIcon(
          FontAwesomeIcons.user,
          size: imageSize / 2,
          color: textColor,
        ),
      );
    }

    return profilePictureUrl.isNotNullOrEmpty
        ? CircleNetworkPhoto(
            photoUrl: profilePictureUrl!,
            containerSize: imageSize,
            loaderSize: 12,
          )
        : _buildUserPlaceholder(
            Text(
              username.isEmpty
                  ? ''
                  : username.length == 1
                      ? username[0].toUpperCase()
                      : username.substring(0, 2).toUpperCase(),
              style: textStyle.copyWith(color: textColor),
            ),
          );
  }

  _buildUserPlaceholder(Widget child) {
    return Container(
      height: imageSize,
      width: imageSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: child,
      ),
    );
  }
}

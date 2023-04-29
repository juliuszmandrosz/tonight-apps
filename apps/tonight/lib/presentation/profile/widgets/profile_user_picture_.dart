import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ProfileUserPicture extends StatelessWidget {
  final String profilePictureUrl;
  final String username;

  const ProfileUserPicture({
    required this.profilePictureUrl,
    required this.username,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageSize = 130.0;
    const buttonSize = 40.0;
    return Stack(
      alignment: Alignment.center,
      children: [
        ProfilePictureContainer(
          imageSize: imageSize,
          profilePictureUrl: profilePictureUrl,
          username: username,
          textStyle: context.headlineMedium,
          backgroundColor: context.surfaceColor,
          textColor: context.onSurfaceColor,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: buttonSize,
            width: buttonSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.secondaryContainer,
            ),
            child: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => context.pushRoute(
                UpdateProfilePictureRoute(
                  currentProfilePictureUrl: profilePictureUrl,
                  username: username,
                ),
              ),
              color: context.onSecondaryContainer,
            ),
          ),
        ),
      ],
    );
  }
}

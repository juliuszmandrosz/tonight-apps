import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ProfilePictureContainer extends StatelessWidget {
  final String profilePictureUrl;
  final String username;

  const ProfilePictureContainer({
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
        Container(
          height: imageSize,
          width: imageSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.surfaceColor,
          ),
          child: Center(
            child: profilePictureUrl.isNotEmpty
                ? CachedNetworkImage(
                    placeholder: (context, url) => CircleAvatar(
                      radius: imageSize,
                      child: SpinKitThreeBounce(
                        color: context.onSurfaceColor,
                        size: 16,
                      ),
                    ),
                    imageUrl: profilePictureUrl,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    imageBuilder: (context, image) => CircleAvatar(
                      radius: imageSize,
                      backgroundImage: image,
                    ),
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
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: buttonSize,
            width: buttonSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colors.secondaryContainer,
            ),
            child: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => context.pushRoute(
                UpdateProfilePictureRoute(
                  currentProfilePictureUrl: profilePictureUrl,
                  username: username,
                ),
              ),
              color: colors.onSecondaryContainer,
            ),
          ),
        ),
      ],
    );
  }
}

import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tonight/application/update_profile_picture/update_profile_picture_cubit.dart';

class UpdateProfilePictureContainer extends StatelessWidget {
  final String currentProfilePictureUrl;
  final String username;

  const UpdateProfilePictureContainer({
    required this.currentProfilePictureUrl,
    required this.username,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfilePictureCubit, UpdateProfilePictureState>(
      builder: (context, state) {
        const imageSize = 150.0;
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
                child: _getContainerContent(
                  context: context,
                  imageSize: imageSize,
                  updatedPicture: state.profilePicture,
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
                  onPressed: () =>
                      context
                          .read<UpdateProfilePictureCubit>()
                          .pickProfilePicture(),
                  color: colors.onSecondaryContainer,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _getContainerContent({
    required double imageSize,
    required BuildContext context,
    required Option<Uint8List> updatedPicture,
  }) {
    if (updatedPicture.isSome()) {
      return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: Image
                .memory(updatedPicture.getOrCrash())
                .image,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    if (currentProfilePictureUrl.isNotEmpty) {
      return CachedNetworkImage(
        placeholder: (context, url) =>
            CircleAvatar(
              radius: imageSize,
              child: SpinKitThreeBounce(
                color: context.onSurfaceColor,
                size: 16,
              ),
            ),
        imageUrl: currentProfilePictureUrl,
        errorWidget: (context, url, error) => const Icon(Icons.error),
        imageBuilder: (context, image) =>
            CircleAvatar(
              radius: imageSize,
              backgroundImage: image,
            ),
      );
    }

    return Text(
      username.isEmpty
          ? ''
          : username.length == 1
          ? username[0].toUpperCase()
          : username.substring(0, 2).toUpperCase(),
      style: context.headlineMedium,
    );
  }
}

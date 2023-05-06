import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/user_wall_photo_preview/user_wall_photo_preview_cubit.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';

class UserWallPhotoShareButton extends StatelessWidget {
  final WallPhoto photo;

  const UserWallPhotoShareButton({
    required this.photo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserWallPhotoPreviewCubit, UserWallPhotoPreviewState>(
      builder: (context, state) {
        return SizedBox(
          width: 48,
          child: state.sharePhotoStatus.isLoading()
              ? const CircleLoadingIndicator(size: 24)
              : IconButton(
                  onPressed: () async => await context
                      .read<UserWallPhotoPreviewCubit>()
                      .sharePhoto(photo),
                  icon: const FaIcon(FontAwesomeIcons.shareNodes),
                ),
        );
      },
    );
  }
}

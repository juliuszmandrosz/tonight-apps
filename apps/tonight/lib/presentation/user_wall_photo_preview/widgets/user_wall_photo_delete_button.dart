import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/user_wall_photo_preview/user_wall_photo_preview_cubit.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:translations/translations.dart';

class UserWallPhotoDeleteButton extends StatelessWidget {
  final WallPhoto photo;

  const UserWallPhotoDeleteButton({
    required this.photo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final result = await context.showConfirmationDialogWithCustomMessage(
          S().confirmDeletePhoto,
        );
        if (result == true && context.mounted) {
          await context.read<UserWallPhotoPreviewCubit>().deletePhoto(
                photoId: photo.id,
                photoUrl: photo.photoUrl,
              );
        }
      },
      icon: const FaIcon(FontAwesomeIcons.trashCan),
    );
  }
}

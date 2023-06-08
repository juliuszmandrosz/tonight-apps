import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/user_wall_photo_preview/widgets/user_wall_photo_delete_button.dart';
import 'package:tonight/presentation/user_wall_photo_preview/widgets/user_wall_photo_reward_button.dart';
import 'package:tonight/presentation/user_wall_photo_preview/widgets/user_wall_photo_share_button.dart';

class UserWallPhotoBottomBar extends StatelessWidget {
  final WallPhoto photo;

  const UserWallPhotoBottomBar({required this.photo, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: context.dividerColor,
            ),
          ),
          color: context.backgroundColor,
        ),
        child: Row(
          children: [
            UserWallPhotoShareButton(photo: photo),
            UserWallPhotoDeleteButton(photo: photo),
            if (photo.timeTaskId.isNotNullOrEmpty && !photo.isRewardAcquired)
              UserWallPhotoRewardButton(timeTaskId: photo.timeTaskId!),
          ],
        ),
      ),
    );
  }
}

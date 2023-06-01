import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/add_wall_photo/widgets/add_wall_photo_share_button.dart';

class AddWallPhotoBottomBar extends StatelessWidget {
  const AddWallPhotoBottomBar({Key? key}) : super(key: key);

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
        child: const Row(
          children: [
            AddWallPhotoShareButton(),
          ],
        ),
      ),
    );
  }
}

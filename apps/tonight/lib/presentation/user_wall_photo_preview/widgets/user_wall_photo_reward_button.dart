import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class UserWallPhotoRewardButton extends StatelessWidget {
  final String timeTaskId;

  const UserWallPhotoRewardButton({required this.timeTaskId, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.pushRoute(
        ActivateTimeTaskRewardRoute(timeTaskId: timeTaskId),
      ),
      icon: const FaIcon(FontAwesomeIcons.gift),
    );
  }
}

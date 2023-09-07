import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/presentation/profile_picture_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoryCircleAvatar extends StatelessWidget {
  final String username;
  final String userProfilePhotoUrl;
  final bool showAddStoryIcon;
  final bool isCurrentUser;
  final bool unseen;

  const StoryCircleAvatar({
    required this.username,
    required this.userProfilePhotoUrl,
    this.showAddStoryIcon = false,
    this.isCurrentUser = false,
    this.unseen = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> gradientColors = unseen
        ? [
            context.primaryColor,
            context.secondaryColor,
          ] // Tu możesz dostosować gradient dla nieoglądanych.
        : [
            context.surfaceColor,
            context.surfaceColor.lighten(.2),
          ];

    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 86,
              height: 86,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: gradientColors,
                ),
              ),
            ),
            ProfilePictureContainer(
              imageSize: 80,
              profilePictureUrl: userProfilePhotoUrl,
              username: username,
              textStyle: context.titleMedium,
              backgroundColor: Colors.transparent,
              textColor: Colors.white,
            ),
            if (showAddStoryIcon)
              const Positioned(
                bottom: 0,
                right: 0,
                child: FaIcon(FontAwesomeIcons.circlePlus),
              ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          // TODO - add translation
          isCurrentUser ? 'Twoja relacja' : username,
          style: context.bodySmall,
        ),
      ],
    );
  }
}

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/tonight_events/models/event_participant_model.dart';

class TonightEventParticipantsRow extends StatelessWidget {
  final int totalParticipants;
  final List<EventParticipant> firstParticipants;
  static const _avatarSize = 40.0;
  static const _avatarSpacing = 30.0;

  const TonightEventParticipantsRow({
    required this.totalParticipants,
    required this.firstParticipants,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatars = <Widget>[];

    for (var i = 0;
        i < firstParticipants.length && i < firstParticipants.length;
        i++) {
      avatars.add(
        Positioned(
          left: i * _avatarSpacing,
          child: ProfilePictureContainer(
            username: firstParticipants[i].username,
            profilePictureUrl: firstParticipants[i].profilePictureUrl,
            backgroundColor: firstParticipants[i].color,
            textColor: context.onSurfaceColor,
            textStyle: context.titleSmall,
            imageSize: _avatarSize,
          ),
        ),
      );
    }

    if (totalParticipants > firstParticipants.length) {
      avatars.add(
        Positioned(
          left: firstParticipants.length * _avatarSpacing,
          child: Container(
            height: _avatarSize,
            width: _avatarSize,
            decoration: BoxDecoration(
              color: context.onSurfaceColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '+${totalParticipants - firstParticipants.length}',
                style: context.titleSmall.copyWith(color: context.surfaceColor),
              ),
            ),
          ),
        ),
      );
    }

    return Stack(
      clipBehavior: Clip.none,
      children: avatars,
    );
  }
}

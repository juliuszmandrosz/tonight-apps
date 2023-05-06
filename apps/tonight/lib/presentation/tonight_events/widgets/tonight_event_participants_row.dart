import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/tonight_events/models/event_participant_model.dart';
import 'package:translations/translations.dart';

class TonightEventParticipantsRow extends StatelessWidget {
  final int totalParticipants;
  final List<EventParticipant> firstParticipants;
  static const _avatarSize = 25.0;
  static const _avatarSpacing = 20.0;

  const TonightEventParticipantsRow({
    required this.totalParticipants,
    required this.firstParticipants,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (totalParticipants == 0) {
      return const SizedBox.shrink();
    }

    final avatars = <Widget>[];
    for (var i = 0; i < firstParticipants.length; i++) {
      avatars.add(
        Positioned(
          left: i * _avatarSpacing,
          child: SizedBox(
            height: _avatarSize,
            width: _avatarSize,
            child: ProfilePictureContainer(
              username: firstParticipants[i].username,
              profilePictureUrl: firstParticipants[i].profilePictureUrl,
              backgroundColor: firstParticipants[i].color,
              textColor: context.onSurfaceColor,
              textStyle: context.labelSmall,
              imageSize: _avatarSize,
            ),
          ),
        ),
      );
    }

    if (totalParticipants > firstParticipants.length) {
      avatars.add(
        Positioned(
          left: firstParticipants.length * _avatarSpacing,
          child: Row(
            children: [
              Container(
                height: _avatarSize,
                width: _avatarSize,
                decoration: BoxDecoration(
                  color: context.surfaceColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: context.dividerColor,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    '+${totalParticipants - firstParticipants.length}',
                    style: context.labelSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    avatars.add(
      Positioned(
        left: totalParticipants > firstParticipants.length
            ? (firstParticipants.length + 1) * _avatarSpacing + 12
            : firstParticipants.length * _avatarSpacing + 12,
        child: SizedBox(
          height: _avatarSize,
          child: Center(
            child: totalParticipants > firstParticipants.length
                ? Text(
                    S().attending(2).toLowerCase(),
                    style: context.labelSmall.copyWith(
                      color: context.secondaryColor,
                    ),
                  )
                : Text(
                    '${firstParticipants.length} '
                    '${S().attending(firstParticipants.length).toLowerCase()}',
                    style: context.labelSmall.copyWith(
                      color: context.secondaryColor,
                    ),
                  ),
          ),
        ),
      ),
    );

    return Container(
      padding: const EdgeInsets.all(8),
      height: _avatarSize + 16,
      width: context.width,
      child: Stack(
        clipBehavior: Clip.none,
        children: avatars,
      ),
    );
  }
}

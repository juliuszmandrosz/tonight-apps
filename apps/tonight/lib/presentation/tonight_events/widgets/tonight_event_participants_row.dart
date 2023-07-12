import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/tonight_events/models/event_participant_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class TonightEventParticipantsRow extends StatelessWidget {
  final int totalParticipants;
  final List<EventParticipant> firstParticipants;
  final String eventId;
  static const _avatarSize = 25.0;
  static const _avatarSpacing = 20.0;

  const TonightEventParticipantsRow({
    required this.totalParticipants,
    required this.firstParticipants,
    required this.eventId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (totalParticipants == 0) {
      return const SizedBox(height: 4);
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

    avatars.add(
      Positioned(
        left: firstParticipants.length * _avatarSpacing + 12,
        child: SizedBox(
          height: _avatarSize,
          child: Center(
            child: totalParticipants > firstParticipants.length
                ? Text(
                    '+${totalParticipants - firstParticipants.length} ${S().attending(2).toLowerCase()}',
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

    return InkWell(
      onTap: () => context.pushRoute(
        EventParticipantsRoute(eventId: eventId),
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: _avatarSize + 16,
        width: context.width,
        child: Stack(
          clipBehavior: Clip.none,
          children: avatars,
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/event_room_participants/models/event_room_participant_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventRoomParticipantListTile extends StatelessWidget {
  final EventRoomParticipant participant;

  const EventRoomParticipantListTile({
    required this.participant,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      onTap: () => context.pushRoute(
        UserDetailsRoute(userId: participant.userId),
      ),
      leading: ProfilePictureContainer(
        username: participant.username,
        profilePictureUrl: participant.profilePictureUrl,
        backgroundColor: participant.color,
        textColor: context.onSurfaceColor,
        textStyle: context.titleSmall,
        imageSize: 40,
      ),
      title: Text(
        participant.username,
        style: context.titleSmall,
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: context.secondaryColor,
      ),
    );
  }
}

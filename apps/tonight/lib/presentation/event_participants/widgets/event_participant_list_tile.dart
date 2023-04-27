import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/tonight_events/models/event_participant_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventParticipantListTile extends StatelessWidget {
  final EventParticipant participant;

  const EventParticipantListTile({
    required this.participant,
    Key? key,
  }) : super(key: key);

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
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
    );
  }
}

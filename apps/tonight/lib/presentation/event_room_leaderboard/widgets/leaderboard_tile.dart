import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class LeaderboardTile extends StatelessWidget {
  final Participant participant;
  final int index;

  const LeaderboardTile({
    super.key,
    required this.participant,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushRoute(
        UserDetailsRoute(userId: participant.userId),
      ),
      child: DenseListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.primaryColor,
          ),
          child: Center(
            child: Text(
              '${index + 1}',
              style: context.titleMedium,
            ),
          ),
        ),
        title: Text(
          participant.username,
          style: context.titleMedium,
        ),
        subtitle: Text(
          // TODO - add translation
          'Steps: ${participant.stepCount}',
          style: context.titleSmall.copyWithSecondaryColor(),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}

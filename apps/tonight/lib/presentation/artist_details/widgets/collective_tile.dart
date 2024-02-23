import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class CollectiveTile extends StatelessWidget {
  final Collective collective;

  const CollectiveTile({
    required this.collective,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      onTap: () => context.pushRoute(
        CollectiveDetailsRoute(
          collective: collective,
          heroTag: 'collectiveTile-${collective.id}',
        ),
      ),
      leading: ProfilePictureContainer(
        username: collective.collectiveName,
        profilePictureUrl: collective.collectivePhotoUrl,
        backgroundColor: context.surfaceColor,
        textColor: context.onSurfaceColor,
        textStyle: context.titleSmall,
        imageSize: 40,
      ),
      title: Text(
        collective.collectiveName,
        style: context.titleSmall,
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: context.secondaryColor,
      ),
    );
  }
}

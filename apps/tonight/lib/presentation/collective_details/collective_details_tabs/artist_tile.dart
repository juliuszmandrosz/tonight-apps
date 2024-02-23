import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ArtistTile extends StatelessWidget {
  final Artist artist;

  const ArtistTile({
    required this.artist,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      onTap: () => context.pushRoute(
        ArtistDetailsRoute(
          artist: artist,
          heroTag: 'artistTile-${artist.id}',
        ),
      ),
      leading: ProfilePictureContainer(
        username: artist.artistName,
        profilePictureUrl: artist.artistPhotoUrl,
        backgroundColor: context.surfaceColor,
        textColor: context.onSurfaceColor,
        textStyle: context.titleSmall,
        imageSize: 40,
      ),
      title: Text(
        artist.artistName,
        style: context.titleSmall,
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: context.secondaryColor,
      ),
    );
  }
}

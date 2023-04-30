import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/presentation/dense_list_tile.dart';
import 'package:common/presentation/profile_picture_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/add_wall_photo/wall_photo_venue_model.dart';
import 'package:tonight/application/select_club/select_club_bloc.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';

class SelectClubTile extends StatelessWidget {
  final WallPhotoVenue venue;

  const SelectClubTile({required this.venue, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      onTap: () => context
          .read<SelectClubBloc>()
          .add(SelectClubEvent.venueSelected(venue)),
      leading: ProfilePictureContainer(
        profilePictureUrl: venue.venuePhotoUrl,
        imageSize: 40,
        backgroundColor: context.surfaceColor,
        textColor: context.onSurfaceColor,
        textStyle: context.titleSmall,
        username: venue.venueName,
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: TonightHeadline(
          text: venue.venueName,
          isSmallerVersion: true,
        ),
      ),
    );
  }
}

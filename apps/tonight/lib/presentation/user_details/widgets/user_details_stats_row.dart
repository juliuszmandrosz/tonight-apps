import 'package:common/presentation/user_detail_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/user_details/user_details_model.dart';
import 'package:translations/translations.dart';

class UserDetailsStatsRow extends StatelessWidget {
  final UserDetails user;

  const UserDetailsStatsRow({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          UserDetailTile(
            label: S().photos(2),
            value: user.totalPhotos,
            icon: FontAwesomeIcons.images,
            onTap: null,
          ),
          const VerticalDivider(width: 1),
          UserDetailTile(
            label: S().spots,
            value: user.favoriteClubs.length,
            icon: FontAwesomeIcons.solidHeart,
            onTap: null,
          ),
        ],
      ),
    );
  }
}

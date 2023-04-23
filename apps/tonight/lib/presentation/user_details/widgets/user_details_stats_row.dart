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
            label: 'Raver Coins',
            value: user.raverCoins,
            icon: FontAwesomeIcons.coins,
            onTap: null,
          ),
          const VerticalDivider(
            width: 20,
            thickness: 1,
            // color: context.,
          ),
          UserDetailTile(
            label: S().favoriteClubs,
            value: user.favoriteClubs.length,
            icon: FontAwesomeIcons.solidHeart,
            onTap: null,
          ),
        ],
      ),
    );
  }
}

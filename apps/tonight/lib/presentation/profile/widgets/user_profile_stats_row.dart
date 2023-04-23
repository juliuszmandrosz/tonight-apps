import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/user_profile/user_profile_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class UserProfileStatsRow extends StatelessWidget {
  final UserProfile userProfile;

  const UserProfileStatsRow({
    required this.userProfile,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: UserDetailTile(
              onTap: () => context.showSnackbarMessage(
                // TODO - add translation
                'Wkrótce będziesz mógł wymieniać coinsy na nagrody!',
              ),
              value: userProfile.raverCoins,
              label: 'Raver Coins',
              icon: FontAwesomeIcons.coins,
            ),
          ),
          const VerticalDivider(
            width: 20,
            thickness: 1,
            // color: context.,
          ),
          Expanded(
            child: UserDetailTile(
              onTap: () => context.pushRoute(const FavoritesRoute()),
              value: userProfile.favoritesCount,
              label: S().favorites,
              icon: FontAwesomeIcons.solidHeart,
            ),
          ),
          const VerticalDivider(
            width: 20,
            thickness: 1,
            // color: context.,
          ),
          Expanded(
            child: UserDetailTile(
              onTap: () => context.pushRoute(const TicketsRoute()),
              value: userProfile.ticketsCount,
              label: S().tickets(2),
              icon: FontAwesomeIcons.ticket,
            ),
          ),
        ],
      ),
    );
  }
}

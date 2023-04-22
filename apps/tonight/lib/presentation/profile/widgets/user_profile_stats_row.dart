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
            child: UserProfileDetailTile(
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
            child: UserProfileDetailTile(
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
            child: UserProfileDetailTile(
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

class UserProfileDetailTile extends StatelessWidget {
  final String label;
  final int value;
  final IconData icon;
  final VoidCallback onTap;

  const UserProfileDetailTile({
    required this.label,
    required this.value,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          FaIcon(
            icon,
            color: colors.secondary,
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: context.titleSmall.copyWith(
              color: colors.secondary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '$value',
            style: context.titleMedium.copyWith(
              color: colors.secondary,
            ),
          ),
        ],
      ),
    );
  }
}

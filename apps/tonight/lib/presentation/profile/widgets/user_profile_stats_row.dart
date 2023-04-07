import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/user_profile/user_profile_model.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                '${userProfile.raverCoins}',
                style: context.titleMedium,
              ),
              const SizedBox(height: 5),
              Text(
                // TODO - add translation
                "Raver Coins",
                style: context.titleMedium.copyWith(
                  color: colors.secondary,
                ),
              ),
            ],
          ),
          const VerticalDivider(
            width: 20,
            thickness: 1,
            // color: context.,
          ),
          Column(
            children: [
              Text(
                '${userProfile.favoriteClubsCount}',
                style: context.titleMedium,
              ),
              const SizedBox(height: 5),
              Text(
                S().favoriteClubs,
                style: context.titleMedium.copyWith(
                  color: colors.secondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

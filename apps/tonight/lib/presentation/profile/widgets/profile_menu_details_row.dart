import 'package:account_settings/account_settings.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class ProfileMenuDetailsRow extends StatelessWidget {
  final UserProfile user;

  const ProfileMenuDetailsRow({
    required this.user,
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
                '${user.raverCoins}',
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
                '${user.favoriteClubIds.length}',
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

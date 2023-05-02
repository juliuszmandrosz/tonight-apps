import 'package:clubs/domain/club/club_entity.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/clubs/widgets/club_card.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/raver_translations.dart';

class UserDetailsFavoriteClubs extends StatelessWidget {
  final List<Club> favoriteClubs;

  static const heroPhrase = 'userDetailsFavoriteClubsHero';

  const UserDetailsFavoriteClubs({
    required this.favoriteClubs,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TonightHeadline(
              text: S().favoriteClubs,
              isSmallerVersion: true,
            ),
            if (favoriteClubs.length > 1)
              const FaIcon(
                FontAwesomeIcons.chevronRight,
                size: 16,
              ),
          ],
        ),
        const SizedBox(height: 16),
        favoriteClubs.isEmpty
            ? Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S().userHasNoFavoriteClubs,
                  style: context.bodyMedium.copyWith(
                    color: context.secondaryColor,
                  ),
                ),
              )
            : SizedBox(
                height: 280,
                child: PageView.builder(
                  itemCount: favoriteClubs.length,
                  itemBuilder: (ctx, i) {
                    return ClubCard(
                      club: favoriteClubs[i],
                      heroPhrase: heroPhrase,
                      isFavoriteCard: true,
                      height: 200,
                    );
                  },
                ),
              ),
      ],
    );
  }
}

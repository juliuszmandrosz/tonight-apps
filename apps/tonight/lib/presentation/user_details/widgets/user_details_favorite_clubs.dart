import 'package:clubs/domain/club/club_entity.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/clubs/widgets/club_card.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

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
        Align(
          alignment: Alignment.centerLeft,
          child: TonightHeadline(
            text: S().favoriteClubs,
            isSmallerVersion: true,
          ),
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
                  padEnds: false,
                  controller: PageController(viewportFraction: 0.85),
                  itemCount: favoriteClubs.length,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: i == 0 ? 0 : 4,
                        right: i == favoriteClubs.length - 1 ? 0 : 4,
                      ),
                      child: ClubCard(
                        club: favoriteClubs[i],
                        heroPhrase: heroPhrase,
                        isFavoriteCard: true,
                        height: 200,
                      ),
                    );
                  },
                ),
              ),
      ],
    );
  }
}

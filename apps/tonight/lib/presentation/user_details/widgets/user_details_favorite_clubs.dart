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
        const SizedBox(height: 20),
        favoriteClubs.isEmpty
            ? Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  // TODO - add translation
                  "User has no favorite clubs",
                  style: context.bodyMedium.copyWith(
                    color: context.secondaryColor,
                  ),
                ),
              )
            : SizedBox(
                height: 245,
                child: PageView.builder(
                  controller: PageController(
                    viewportFraction: favoriteClubs.length > 1 ? 0.9 : 1.0,
                  ),
                  itemCount: favoriteClubs.length,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: i == 0
                          ? const EdgeInsets.only(right: 5)
                          : i == favoriteClubs.length - 1
                              ? const EdgeInsets.only(left: 5)
                              : const EdgeInsets.symmetric(horizontal: 5),
                      child: ClubCard(
                        club: favoriteClubs[i],
                        heroPhrase: heroPhrase,
                        isFavoriteCard: true,
                        height: 150,
                      ),
                    );
                  },
                ),
              ),
      ],
    );
  }
}

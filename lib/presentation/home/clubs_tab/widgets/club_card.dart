import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_favorite_button.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_translations/generated/generated.dart';

class ClubCard extends StatelessWidget {
  final Club _club;
  final String _heroTagPhraseWithIndex;
  final String heroPhrase;

  ClubCard({
    Key? key,
    required Club club,
    required int index,
    required this.heroPhrase,
  })  : _club = club,
        _heroTagPhraseWithIndex = heroPhrase + index.toString(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final clubReviewAvg = _club.reviewAvg;
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      context.router.push(ClubRoute(
                          club: _club, heroTag: _heroTagPhraseWithIndex));
                    },
                    child: Stack(
                      children: [
                        Hero(
                          tag: _heroTagPhraseWithIndex,
                          child: Container(
                            height: 220,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: Image.network(_club.clubImageUrl).image,
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: theme.shadowColor,
                                  offset: const Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: ClubFavoriteButton(clubId: _club.id)),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: theme.backgroundColor,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(_club.clubName),
                                    ],
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(top: 5)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(_club.locationString),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      RatingBarIndicator(
                                        rating: clubReviewAvg,
                                        itemCount: 5,
                                        itemSize: 24,
                                        direction: Axis.horizontal,
                                        itemBuilder: (context, index) =>
                                            const Icon(Icons.star),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          clubReviewAvg.toStringAsFixed(1),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          '${_club.reviewCount} ${S().opinions(_club.reviewCount)}',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ]);
  }
}

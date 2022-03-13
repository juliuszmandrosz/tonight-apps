import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/routes/app_router.dart';

class ClubCard extends StatelessWidget {
  static const heroTagPhrase = "clubPhoto";

  final Club _club;
  final String _heroTagPhraseWithIndex;

  ClubCard({Key? key, required Club club, required int index})
      : _club = club,
        _heroTagPhraseWithIndex = heroTagPhrase + index.toString(),
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
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
                                    image:
                                        Image.network(_club.clubImageUrl).image,
                                    fit: BoxFit.cover),
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
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: double.infinity,
                              decoration:
                                  BoxDecoration(color: theme.backgroundColor),
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
                                        const Icon(Icons.favorite_border),
                                      ],
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 5)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            '$clubReviewAvg.',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
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
                ),
              ]),
        ]);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:raver/domain/clubs/club_overview/club_overview_entity.dart';

class ClubCard extends StatelessWidget {
  final ClubOverview _clubOverview;

  const ClubCard({Key? key, required ClubOverview club})
      : _clubOverview = club,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final clubReviewAvg = _clubOverview.reviewAvg.getOrCrash();
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
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: InkWell(
                      onTap: () async {},
                      child: Stack(
                        children: [
                          Container(
                            height: 210,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image.network(
                                    _clubOverview.clubImageUrl.getOrCrash(),
                                  ).image,
                                  fit: BoxFit.cover),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
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
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        _clubOverview.clubName.getOrCrash(),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(_clubOverview.addressString
                                          .getOrCrash()),
                                      const Icon(Icons.favorite_border),
                                    ],
                                  ),
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
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 0, 0, 0),
                                        child: Text(clubReviewAvg.toString()),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 0, 0, 0),
                                        child: Text(_clubOverview.reviewCount
                                                .getOrCrash()
                                                .toString() +
                                            " opinii"),
                                      ),
                                    ],
                                  ),
                                ],
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

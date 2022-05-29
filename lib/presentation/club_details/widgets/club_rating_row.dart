import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubRatingRow extends StatelessWidget {
  const ClubRatingRow({
    Key? key,
    required this.rating,
    required this.rateCount,
  }) : super(key: key);

  final double rating;
  final int rateCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBarIndicator(
          rating: rating,
          itemCount: 5,
          itemSize: 22,
          direction: Axis.horizontal,
          itemBuilder: (context, index) =>
              const FaIcon(FontAwesomeIcons.solidStar),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          rating.toStringAsFixed(1),
          style: context.bodyText2,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '$rateCount ${S().opinions(rateCount)}',
          style: context.bodyText2,
        )
      ],
    );
  }
}

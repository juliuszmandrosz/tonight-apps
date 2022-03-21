import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
          itemSize: 24,
          direction: Axis.horizontal,
          itemBuilder: (context, index) => const Icon(
            Icons.star_rate_rounded,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(rating.toStringAsFixed(1)),
        const SizedBox(
          width: 10,
        ),
        Text('$rateCount ${S().opinions(rateCount)}')
      ],
    );
  }
}

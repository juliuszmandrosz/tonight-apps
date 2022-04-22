import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:raver_translations/raver_translations.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    Key? key,
    required this.rating,
    required this.rateCount,
  }) : super(key: key);

  final double rating;
  final int rateCount;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        RatingBarIndicator(
          rating: rating,
          itemCount: 5,
          itemSize: 24,
          direction: Axis.horizontal,
          itemBuilder: (context, index) => Icon(
            Icons.star_rate_rounded,
            color: theme.primaryColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(rating.toString()),
        const SizedBox(
          width: 10,
        ),
        Text('$rateCount ${S().opinions(rateCount)}')
      ],
    );
  }
}

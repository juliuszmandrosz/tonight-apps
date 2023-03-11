import 'package:flutter/material.dart';
import 'package:raver/presentation/club_details/widgets/club_reviews/review_subtitle.dart';
import 'package:raver/presentation/club_details/widgets/club_reviews/review_title.dart';
import 'package:raver_clubs/raver_clubs.dart';

class ClubReviewListTile extends StatelessWidget {
  final Review review;

  const ClubReviewListTile({
    Key? key,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        dense: true,
        contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
        title: ReviewTitle(review: review),
        subtitle: ReviewSubtitle(review: review));
  }
}

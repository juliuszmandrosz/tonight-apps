import 'package:clubs/clubs.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/collective_details/collective_details_tabs/reviews/review_subtitle.dart';
import 'package:tonight/presentation/collective_details/collective_details_tabs/reviews/review_title.dart';

class CollectiveReviewListTile extends StatelessWidget {
  final Review review;

  const CollectiveReviewListTile({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        dense: true,
        contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
        title: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: ReviewTitle(review: review),
        ),
        subtitle: ReviewSubtitle(review: review));
  }
}

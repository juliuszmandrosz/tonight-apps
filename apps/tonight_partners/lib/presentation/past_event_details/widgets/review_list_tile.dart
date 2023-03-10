import 'package:flutter/material.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_partners/presentation/past_event_details/widgets/review_subtitle.dart';
import 'package:raver_partners/presentation/past_event_details/widgets/review_title.dart';

class ReviewListTile extends StatelessWidget {
  final Review review;

  const ReviewListTile({
    required this.review,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: ReviewTitle(review: review),
      subtitle: ReviewSubtitle(review: review),
    );
  }
}

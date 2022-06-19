import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_clubs/domain/reviews/entities/review_entity.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/presentation/past_event_details/widgets/report_review_button.dart';

class ReviewSubtitle extends StatelessWidget {
  final Review review;

  const ReviewSubtitle({required this.review, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: AutoSizeText(
              review.userOpinion,
              style: context.subtitle1,
              maxLines: 4,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: ReportReviewButton(review: review),
        ),
      ],
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/club_details/widgets/club_reviews/report_review_button.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';

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
        Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    width: constraints.maxWidth * 0.6,
                    child: AutoSizeText(
                      review.eventName,
                      maxLines: 2,
                      style: context.bodyText2
                          .copyWith(color: context.secondaryColor),
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ReportReviewButton(review: review),
            ),
          ],
        ),
      ],
    );
  }
}

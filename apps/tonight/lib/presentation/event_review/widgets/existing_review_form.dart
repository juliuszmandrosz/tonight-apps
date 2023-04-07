import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/event_review/event_review_form_model.dart';
import 'package:tonight/presentation/event_review/widgets/read_only_rating_indicator.dart';
import 'package:tonight/presentation/event_review/widgets/read_only_review_content.dart';
import 'package:tonight/presentation/event_review/widgets/review_event_date.dart';
import 'package:tonight/presentation/event_review/widgets/review_event_name.dart';

class ExistingReviewForm extends StatelessWidget {
  final EventReviewForm eventReviewForm;

  const ExistingReviewForm({
    required this.eventReviewForm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ReviewEventName(eventReviewForm: eventReviewForm),
          const SizedBox(height: 30),
          ReviewEventDate(eventReviewForm: eventReviewForm),
          const SizedBox(height: 30),
          ReadOnlyRatingIndicator(eventReviewForm: eventReviewForm),
          const SizedBox(height: 40),
          if (eventReviewForm.reviewContent.isNotNullOrEmpty)
            ReadOnlyReviewContent(content: eventReviewForm.reviewContent!),
        ],
      ),
    );
  }
}

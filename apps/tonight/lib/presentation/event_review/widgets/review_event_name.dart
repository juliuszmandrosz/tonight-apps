import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/event_review/event_review_form_model.dart';

class ReviewEventName extends StatelessWidget {
  final EventReviewForm eventReviewForm;

  const ReviewEventName({
    required this.eventReviewForm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      eventReviewForm.eventName,
      maxLines: 2,
      style: context.titleLarge,
      textAlign: TextAlign.center,
    );
  }
}

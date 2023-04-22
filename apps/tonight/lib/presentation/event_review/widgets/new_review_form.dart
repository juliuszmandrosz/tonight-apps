import 'package:flutter/material.dart';
import 'package:tonight/domain/event_review/event_review_form_model.dart';
import 'package:tonight/presentation/event_review/widgets/review_event_date.dart';
import 'package:tonight/presentation/event_review/widgets/review_event_name.dart';
import 'package:tonight/presentation/event_review/widgets/review_rating_bar.dart';
import 'package:tonight/presentation/event_review/widgets/review_submit_button.dart';
import 'package:tonight/presentation/event_review/widgets/review_text_input.dart';

class NewReviewForm extends StatelessWidget {
  final EventReviewForm eventReviewForm;

  const NewReviewForm({
    required this.eventReviewForm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Center(
                  child: ReviewEventName(eventReviewForm: eventReviewForm),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ReviewEventDate(eventReviewForm: eventReviewForm),
                ),
                const SizedBox(height: 30),
                const ReviewRatingBar(),
                const SizedBox(height: 30),
                const ReviewTextInput(),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const ReviewSubmitButton(),
        ],
      ),
    );
  }
}

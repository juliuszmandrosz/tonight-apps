import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/event_review/event_review_form_model.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/raver_translations.dart';

class ReadOnlyRatingIndicator extends StatelessWidget {
  final EventReviewForm eventReviewForm;

  const ReadOnlyRatingIndicator({
    Key? key,
    required this.eventReviewForm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TonightHeadline(
          text: S().yourRate,
          isSmallerVersion: true,
        ),
        const SizedBox(height: 20),
        Center(
          child: RatingBarIndicator(
            rating: eventReviewForm.reviewValue ?? 0,
            direction: Axis.horizontal,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const FaIcon(
              FontAwesomeIcons.solidStar,
            ),
          ),
        ),
      ],
    );
  }
}

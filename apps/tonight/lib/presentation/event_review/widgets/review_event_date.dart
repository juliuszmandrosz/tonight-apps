import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/event_review/event_review_form_model.dart';

class ReviewEventDate extends StatelessWidget {
  final EventReviewForm eventReviewForm;

  const ReviewEventDate({
    required this.eventReviewForm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: AutoSizeText(
            context.formatDateTimeToLocaleYMDHM(
              eventReviewForm.eventStartDateTime,
            ),
            style: context.titleMedium,
            maxLines: 1,
          ),
        ),
        const SizedBox(width: 10),
        FaIcon(
          FontAwesomeIcons.arrowRight,
          color: context.secondaryColor,
          size: 16,
        ),
        const SizedBox(width: 10),
        Flexible(
          child: AutoSizeText(
            context.formatDateTimeToLocaleYMDHM(
              eventReviewForm.eventEndDateTime,
            ),
            style: context.titleMedium,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}

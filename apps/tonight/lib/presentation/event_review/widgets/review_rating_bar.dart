import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/event_review/event_review_cubit.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/raver_translations.dart';

class ReviewRatingBar extends StatelessWidget {
  const ReviewRatingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TonightHeadline(
          text: S().rateEvent,
          isSmallerVersion: true,
        ),
        const SizedBox(height: 20),
        Center(
          child: RatingBar.builder(
            initialRating: 0,
            minRating: 1,
            direction: Axis.horizontal,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
            itemBuilder: (context, _) =>
                const FaIcon(FontAwesomeIcons.solidStar),
            onRatingUpdate: (rating) =>
                context.read<EventReviewCubit>().reviewValueChanged(rating),
          ),
        )
      ],
    );
  }
}

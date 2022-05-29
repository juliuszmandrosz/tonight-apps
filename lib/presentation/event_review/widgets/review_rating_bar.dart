import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/event_review/new_review/event_review_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ReviewRatingBar extends StatelessWidget {
  const ReviewRatingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S().rateEvent,
          style: context.subtitle1,
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
                context.read<NewReviewCubit>().reviewValueChanged(rating),
          ),
        )
      ],
    );
  }
}

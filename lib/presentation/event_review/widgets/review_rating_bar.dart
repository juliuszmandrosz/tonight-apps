import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:raver/application/event_review/new_review/event_review_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class ReviewRatingBar extends StatelessWidget {
  const ReviewRatingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(S().rateEvent),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar.builder(
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
              ),
              onRatingUpdate: (rating) =>
                  context.read<NewReviewCubit>().reviewValueChanged(rating),
            )
          ],
        )
      ],
    );
  }
}

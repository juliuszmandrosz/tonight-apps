import 'package:flutter/material.dart';
import 'package:raver/domain/clubs/club_review_entity.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_reviews/club_review_card.dart';

class ClubOpinions extends StatelessWidget {
  const ClubOpinions({
    Key? key,
    required this.reviews,
  }) : super(key: key);

  final List<ClubReview> reviews;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              var review = reviews[index];
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: ClubReviewCard(
                      username: review.username,
                      userRate: review.userRate,
                      userOpinion: review.userOpinion,
                      dateTime: review.dateTime,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

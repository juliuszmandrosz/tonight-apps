import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:tonight/presentation/club_details/widgets/club_reviews/review_tile_user_picture.dart';

class ReviewTitle extends StatelessWidget {
  final Review review;

  const ReviewTitle({required this.review, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const containerSize = 40.0;
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.zero,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: context.surfaceColor,
                shape: BoxShape.circle,
              ),
              child: review.userPictureUrl.isNotEmpty
                  ? ReviewTileUserPicture(
                      profilePictureUrl: review.userPictureUrl,
                      containerSize: containerSize,
                    )
                  : Center(
                      child: Text(
                        review.username.toUpperCase().substring(0, 2),
                        style: context.titleMedium,
                      ),
                    ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Flexible(
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        review.username,
                        style: context.titleMedium.copyWith(
                          color: context.secondaryColor,
                        ),
                      ),
                      const SizedBox(height: 5),
                      RatingBarIndicator(
                        rating: review.userRate,
                        itemBuilder: (context, index) =>
                            const FaIcon(FontAwesomeIcons.solidStar),
                        itemCount: 5,
                        itemSize: 18,
                        direction: Axis.horizontal,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      timeago.format(
                        review.dateAdded,
                        locale: Intl.getCurrentLocale(),
                      ),
                      style: context.bodyLarge.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

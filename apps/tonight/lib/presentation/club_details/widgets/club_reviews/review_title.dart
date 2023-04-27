import 'package:auto_route/auto_route.dart';
import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ReviewTitle extends StatelessWidget {
  final Review review;

  const ReviewTitle({required this.review, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const containerSize = 40.0;
    return InkWell(
      onTap: () => context.pushRoute(
        UserDetailsRoute(userId: review.userId),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfilePictureContainer(
                imageSize: containerSize,
                profilePictureUrl: review.userPictureUrl,
                username: review.username,
                textStyle: context.titleSmall,
                showPlaceholder: review.isUserDeleted,
                backgroundColor: context.surfaceColor,
                textColor: context.onSurfaceColor,
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
                          review.isUserDeleted
                              ? 'Użytkownik Tonight'
                              : review.username,
                          style: context.titleSmall.copyWith(
                            color: context.secondaryColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                        RatingBarIndicator(
                          rating: review.userRate,
                          itemBuilder: (context, index) => FaIcon(
                            FontAwesomeIcons.solidStar,
                            color: context.onSurfaceColor,
                          ),
                          itemCount: 5,
                          itemSize: 14,
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
      ),
    );
  }
}

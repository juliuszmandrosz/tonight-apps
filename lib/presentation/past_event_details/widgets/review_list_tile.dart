import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:timeago/timeago.dart' as timeago;

class ReviewListTile extends StatelessWidget {
  final Review review;

  const ReviewListTile({
    required this.review,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: Row(
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
                child: Center(
                  child: Text(
                    review.username.toUpperCase().substring(0, 2),
                    style: context.subtitle1,
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
                          style: context.subtitle1.copyWith(
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
                        style: context.bodyText1.copyWith(
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
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: AutoSizeText(
          review.userOpinion,
          style: context.subtitle1,
          maxLines: 4,
        ),
      ),
    );
  }
}

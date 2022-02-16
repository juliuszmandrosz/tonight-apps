import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClubReviewCard extends StatelessWidget {
  const ClubReviewCard({
    Key? key,
    required this.username,
    required this.reviewDouble,
    required this.reviewString,
    required this.timestamp,
  }) : super(key: key);

  final String username;
  final double reviewDouble;
  final String reviewString;
  final String timestamp;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: 120,
      decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: theme.shadowColor,
              offset: const Offset(0, 2),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(username.substring(0, 2)),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [Text(username)],
                        ),
                        Row(
                          children: [Text(timestamp)],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.only(end: 5),
                          child: Icon(
                            FontAwesomeIcons.solidStar,
                            size: 15,
                          ),
                        ),
                        Text(reviewDouble.toString()),
                      ],
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 8),
              child: Row(
                children: [
                  Text(reviewString),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

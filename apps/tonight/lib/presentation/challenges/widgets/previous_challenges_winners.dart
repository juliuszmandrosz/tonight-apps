import 'package:flutter/material.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:tonight/presentation/challenges/widgets/podium_widget.dart';

class PreviousChallengesWinners extends StatelessWidget {
  final List<Challenge> previousChallenges;

  const PreviousChallengesWinners({
    required this.previousChallenges,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: PageView.builder(
        padEnds: false,
        itemCount: previousChallenges.length,
        controller: PageController(viewportFraction: 0.85),
        itemBuilder: (context, i) {
          return Padding(
            padding: EdgeInsets.only(
              left: i == 0 ? 4 : 8,
              right: i == previousChallenges.length - 1 ? 4 : 8,
            ),
            child: PodiumWidget(challenge: previousChallenges[i]),
          );
        },
      ),
    );
  }
}

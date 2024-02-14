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
      height: 251,
      child: PageView.builder(
        padEnds: false,
        itemCount: previousChallenges.isEmpty ? 1 : previousChallenges.length,
        controller: PageController(
          viewportFraction: previousChallenges.length <= 1 ? 1 : 0.85,
        ),
        itemBuilder: (context, i) {
          return Padding(
            padding: EdgeInsets.only(
              left: i == 0 ? 4 : 8,
              right: i == previousChallenges.length - 1 ? 4 : 8,
            ),
            child: PodiumWidget(
              challenge: previousChallenges.isEmpty
                  ? Challenge.empty()
                  : previousChallenges[i],
            ),
          );
        },
      ),
    );
  }
}

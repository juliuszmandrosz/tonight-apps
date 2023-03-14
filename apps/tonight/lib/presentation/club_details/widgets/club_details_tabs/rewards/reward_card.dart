import 'package:flutter/material.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/rewards/reward_progress_bar.dart';

class RewardCard extends StatelessWidget {
  final int currentEntries;
  final int requiredEntries;
  final String rewardContent;

  const RewardCard({
    Key? key,
    required this.currentEntries,
    required this.requiredEntries,
    required this.rewardContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isRewardCompleted = currentEntries == requiredEntries;
    return Card(
      color: isRewardCompleted ? Colors.grey.shade300 : null,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(rewardContent),
                    if (isRewardCompleted) const Icon(Icons.check)
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Flexible(
                child: RewardProgressBar(
                  currentEntries: currentEntries,
                  requiredEntries: requiredEntries,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:rewards/rewards.dart';

class ClubRewardsWithAttendance extends Equatable {
  final List<Reward> rewards;
  final int userAttendance;

  ClubRewardsWithAttendance({
    required this.rewards,
    required this.userAttendance,
  }) {
    rewards.sort((a, b) => a.requiredEntries.compareTo(b.requiredEntries));
  }

  @override
  List<Object?> get props => [
        rewards,
        userAttendance,
      ];
}

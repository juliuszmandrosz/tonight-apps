import 'package:equatable/equatable.dart';

class DailySpinRewards extends Equatable {
  final List<int> rewards;

  const DailySpinRewards(this.rewards);

  factory DailySpinRewards.empty() => const DailySpinRewards([]);

  @override
  List<Object?> get props => [rewards];
}

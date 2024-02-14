import 'package:equatable/equatable.dart';

class AppSettings extends Equatable {
  final int currentChallengePeriod;

  const AppSettings({required this.currentChallengePeriod});

  @override
  List<Object?> get props => [currentChallengePeriod];

  AppSettings copyWith({
    int? currentChallengePeriod,
  }) {
    return AppSettings(
      currentChallengePeriod: currentChallengePeriod ??
          this.currentChallengePeriod,
    );
  }
}

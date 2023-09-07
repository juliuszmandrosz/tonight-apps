import 'package:equatable/equatable.dart';
import 'package:tonight/domain/challenges/winner_entity.dart';
import 'package:uuid/uuid.dart';

class Challenge extends Equatable {
  final String id;
  final DateTime createdAt;

  final String title;

  /// Key - place, value - tokens
  final Map<int, int> rewards;
  final DateTime startDate;
  final DateTime endDate;
  final int periodNumber;
  final List<Winner> winners;

  Challenge({
    String? id,
    DateTime? createdAt,
    required this.title,
    required this.rewards,
    required this.startDate,
    required this.endDate,
    required this.periodNumber,
    this.winners = const [],
  })  : id = id ?? const Uuid().v1(),
        createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        id,
        createdAt,
        title,
        rewards,
        startDate,
        endDate,
        periodNumber,
        winners,
      ];

  Challenge copyWith({
    String? title,
    Map<int, int>? rewards,
    DateTime? startDate,
    DateTime? endDate,
    int? periodNumber,
    List<Winner>? winners,
  }) {
    return Challenge(
      id: id,
      createdAt: createdAt,
      title: title ?? this.title,
      rewards: rewards ?? this.rewards,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      periodNumber: periodNumber ?? this.periodNumber,
      winners: winners ?? this.winners,
    );
  }
}

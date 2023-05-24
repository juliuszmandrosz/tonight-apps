import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class TimeTask extends Equatable {
  final String id;
  final String eventId;
  final String eventName;
  final String descriptionPl;
  final String descriptionEn;
  final int durationInMinutes;
  final DateTime createdAt;
  final bool isRewardAcquired;

  TimeTask({
    String? id,
    DateTime? createdAt,
    required this.eventId,
    required this.eventName,
    required this.descriptionPl,
    required this.descriptionEn,
    required this.durationInMinutes,
    this.isRewardAcquired = false,
  })  : id = id ?? const Uuid().v1(),
        createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        id,
        eventId,
        eventName,
        descriptionPl,
        descriptionEn,
        durationInMinutes,
        createdAt,
        isRewardAcquired,
      ];
}

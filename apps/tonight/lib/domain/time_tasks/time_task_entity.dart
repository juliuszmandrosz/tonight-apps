import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class TimeTask extends Equatable {
  final String id;
  final String eventId;
  final String eventName;
  final DateTime createdAt;
  final int durationInMinutes;
  final String timeTaskName;
  final String voucherName;
  final String descriptionPl;
  final String descriptionEn;
  final int poolLimit;
  final int currentUsage;

  TimeTask({
    String? id,
    DateTime? createdAt,
    required this.eventId,
    required this.eventName,
    required this.durationInMinutes,
    required this.timeTaskName,
    required this.voucherName,
    required this.descriptionPl,
    required this.descriptionEn,
    required this.poolLimit,
    this.currentUsage = 0,
  })  : id = id ?? const Uuid().v1(),
        createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        id,
        eventId,
        eventName,
        createdAt,
        durationInMinutes,
        timeTaskName,
        voucherName,
        descriptionPl,
        descriptionEn,
        poolLimit,
        currentUsage,
      ];
}

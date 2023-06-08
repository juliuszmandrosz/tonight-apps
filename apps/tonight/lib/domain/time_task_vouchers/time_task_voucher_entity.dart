import 'package:equatable/equatable.dart';

class TimeTaskVoucher extends Equatable {
  final String timeTaskId;
  final String venueId;
  final String wallPhotoId;
  final String wallPhotoUrl;
  final String timeTaskName;
  final String venueName;
  final String voucherName;
  final DateTime validUntil;
  final bool isActivated;
  final bool isRewardAcquired;
  final DateTime createdAt;
  final DateTime? usedAt;

  TimeTaskVoucher({
    DateTime? createdAt,
    required this.timeTaskId,
    required this.venueId,
    required this.wallPhotoId,
    required this.wallPhotoUrl,
    required this.timeTaskName,
    required this.venueName,
    required this.voucherName,
    required this.validUntil,
    this.isActivated = false,
    this.isRewardAcquired = false,
    this.usedAt,
  }) : createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        timeTaskId,
        venueId,
        wallPhotoId,
        wallPhotoUrl,
        timeTaskName,
        venueName,
        voucherName,
        validUntil,
        isActivated,
        isRewardAcquired,
        usedAt,
      ];

  bool get isExpired {
    if (validUntil.isBefore(DateTime.now())) return true;
    if (isRewardAcquired) return true;
    if (isActivated &&
        usedAt!.add(const Duration(minutes: 10)).isBefore(DateTime.now())) {
      return true;
    }
    return false;
  }
}

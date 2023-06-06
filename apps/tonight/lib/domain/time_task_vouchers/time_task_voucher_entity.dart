import 'package:equatable/equatable.dart';

class TimeTaskVoucher extends Equatable {
  final String timeTaskId;
  final String venueId;
  final String wallPhotoId;
  final String timeTaskName;
  final String venueName;
  final String voucherName;
  final DateTime validUntil;
  final bool isActivated;
  final bool isRewardAcquired;
  final DateTime? usedAt;

  const TimeTaskVoucher({
    required this.timeTaskId,
    required this.venueId,
    required this.wallPhotoId,
    required this.timeTaskName,
    required this.venueName,
    required this.voucherName,
    required this.validUntil,
    this.isActivated = false,
    this.isRewardAcquired = false,
    this.usedAt,
  });

  @override
  List<Object?> get props => [
        timeTaskId,
        venueId,
        wallPhotoId,
        timeTaskName,
        venueName,
        voucherName,
        validUntil,
        isActivated,
        isRewardAcquired,
        usedAt,
      ];
}

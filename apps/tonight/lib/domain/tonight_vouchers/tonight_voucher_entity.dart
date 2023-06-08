import 'package:equatable/equatable.dart';

class TonightVoucher extends Equatable {
  final String eventId;
  final String venueId;
  final String venueName;
  final String eventName;
  final String voucherName;
  final DateTime validUntil;
  final int poolLimit;

  /// List of user ids
  final List<String> usedBy;

  const TonightVoucher({
    required this.eventId,
    required this.venueId,
    required this.venueName,
    required this.eventName,
    required this.voucherName,
    required this.validUntil,
    required this.poolLimit,
    this.usedBy = const [],
  });

  @override
  List<Object?> get props => [
        eventId,
        venueId,
        venueName,
        eventName,
        voucherName,
        validUntil,
        poolLimit,
        usedBy,
      ];

  bool checkIfExpired(String currentUserId) {
    if (validUntil.isBefore(DateTime.now())) return true;
    if (usedBy.length >= poolLimit) return true;
    if (usedBy.contains(currentUserId)) return true;
    return false;
  }
}

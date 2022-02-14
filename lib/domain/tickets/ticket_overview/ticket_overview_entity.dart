import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_overview_entity.freezed.dart';

@freezed
abstract class TicketOverview implements _$TicketOverview {
  const TicketOverview._();

  const factory TicketOverview({
    required String clubName,
    required String eventName,
    required String eventDateTime,
    required int price,
    required bool isVip,
    required bool isExpired,
  }) = _TicketOverview;
}

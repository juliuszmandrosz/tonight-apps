import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_entity.dart';

part 'ticket_overview_dto.freezed.dart';
part 'ticket_overview_dto.g.dart';

@freezed
class TicketOverviewDto with _$TicketOverviewDto {
  const TicketOverviewDto._();

  // ignore: invalid_annotation_target
  @JsonSerializable()
  const factory TicketOverviewDto({
    required String clubName,
    required String eventName,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: dateTimeFromTimestamp, toJson: timestampFromDateTime)
    required  DateTime eventDateTime,
    required int price,
    required bool isVip,
    required bool isExpired,
  }) = _TicketOverviewDto;

  factory TicketOverviewDto.fromDomain(TicketOverview ticket) {
    return TicketOverviewDto(
      clubName: ticket.clubName,
      eventName: ticket.eventName,
      eventDateTime: DateTime.parse(ticket.eventDateTime),
      price: ticket.price,
      isVip: ticket.isVip,
      isExpired: ticket.isExpired,
    );
  }


  factory TicketOverviewDto.fromJson(Map<String, dynamic> json) =>
      _$TicketOverviewDtoFromJson(json);

  factory TicketOverviewDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return TicketOverviewDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  TicketOverview toDomain() {
    return TicketOverview(
      clubName: clubName,
      eventName: eventName,
      eventDateTime: _formatDateToDomain(eventDateTime),
      price: price,
      isVip: isVip,
      isExpired: isExpired,
    );
  }

  // TODO - add global date format
  _formatDateToDomain(DateTime date) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd hh:mm');
    return formatter.format(date);
  }
}


DateTime dateTimeFromTimestamp(Timestamp timestamp) => timestamp.toDate();

Timestamp timestampFromDateTime(DateTime dateTime) => Timestamp.fromDate(dateTime);








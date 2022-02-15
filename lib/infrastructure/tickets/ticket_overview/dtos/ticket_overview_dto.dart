import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_entity.dart';

part 'ticket_overview_dto.freezed.dart';
part 'ticket_overview_dto.g.dart';

@freezed
class TicketOverviewDto with _$TicketOverviewDto {
  const factory TicketOverviewDto({
    required String clubName,
    required String eventName,
    @JsonKey(fromJson: _stringFromTimestamp, toJson: _timestampFromString)
    required  DateTime eventDateTime,
    required int price,
    required bool isVip,
    required bool isExpired,
  }) = _TicketOverviewDto;

  static String _stringFromTimestamp(Timestamp timestamp) {
    return timestamp.toDate().toString();
  }

  static Timestamp _timestampFromString(String string) {
    return Timestamp.fromDate(DateTime.parse(string));
  }


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
      eventDateTime: eventDateTime.toString(),
      price: price,
      isVip: isVip,
      isExpired: isExpired,
    );
  }
}






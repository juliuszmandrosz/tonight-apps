import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/tickets/ticket_entity.dart';
import 'package:raver/infrastructure/core/firebase_converters.dart';


part 'ticket_dto.freezed.dart';
part 'ticket_dto.g.dart';


@freezed
class TicketDto with _$TicketDto {
  const TicketDto._();

  // ignore: invalid_annotation_target
  @JsonSerializable()
  const factory TicketDto({
    // ignore: invalid_annotation_target
    @JsonKey(ignore: true) String? id,
    required String clubName,
    required String eventName,
    required String eventId,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: dateTimeFromTimestamp, toJson: timestampFromDateTime)
    required  DateTime eventDateTime,
    required int price,
    required bool isVip,
    required bool isExpired,
  }) = _TicketDto;

  factory TicketDto.fromDomain(Ticket ticket) {
    return TicketDto(
      id: ticket.id,
      eventId: ticket.eventId,
      clubName: ticket.clubName,
      eventName: ticket.eventName,
      eventDateTime: ticket.eventDateTime,
      price: ticket.price,
      isVip: ticket.isVip,
      isExpired: ticket.isExpired,
    );
  }


  factory TicketDto.fromJson(Map<String, dynamic> json) =>
      _$TicketDtoFromJson(json);

  factory TicketDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return TicketDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>).copyWith(id: documentSnapshot.id);
  }

  Ticket toDomain() {
    return Ticket(
      id: id,
      eventId: eventId,
      clubName: clubName,
      eventName: eventName,
      eventDateTime: eventDateTime,
      price: price,
      isVip: isVip,
      isExpired: isExpired,
    );
  }
}








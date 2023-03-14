import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:events/domain/event_costs/event_costs_entity.dart';

part 'event_costs_dto.freezed.dart';

part 'event_costs_dto.g.dart';

@freezed
class EventCostsDto with _$EventCostsDto {
  const EventCostsDto._();

  @JsonSerializable(explicitToJson: true)
  const factory EventCostsDto({
    @JsonKey(ignore: true) String? eventId,
    required String currency,
    @Default(0) double paymentProcessorFeeBalance,
    @Default(0) double eventPostponeBalance,
  }) = _EventCostsDto;

  factory EventCostsDto.fromDomain(EventCosts eventCosts) {
    return EventCostsDto(
      eventId: eventCosts.eventId,
      currency: eventCosts.currency,
      paymentProcessorFeeBalance: eventCosts.paymentProcessorFeeBalance,
      eventPostponeBalance: eventCosts.eventPostponeBalance,
    );
  }

  factory EventCostsDto.fromJson(Map<String, dynamic> json) =>
      _$EventCostsDtoFromJson(json);

  factory EventCostsDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return EventCostsDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(eventId: documentSnapshot.id);
  }

  EventCosts toDomain() {
    return EventCosts(
      eventId: eventId!,
      currency: currency,
      paymentProcessorFeeBalance: paymentProcessorFeeBalance,
      eventPostponeBalance: eventPostponeBalance,
    );
  }
}

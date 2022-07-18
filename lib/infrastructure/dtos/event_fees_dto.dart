import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_payments/domain/domain.dart';

part 'event_fees_dto.freezed.dart';

part 'event_fees_dto.g.dart';

@freezed
class EventFeesDto with _$EventFeesDto {
  const EventFeesDto._();

  @JsonSerializable()
  const factory EventFeesDto({
    required double normal,
    required double exclusive,
  }) = _EventFeesDto;

  factory EventFeesDto.fromJson(Map<String, dynamic> json) =>
      _$EventFeesDtoFromJson(json);

  EventFees toDomain() {
    return EventFees(
      normal: normal,
      exclusive: exclusive,
    );
  }
}

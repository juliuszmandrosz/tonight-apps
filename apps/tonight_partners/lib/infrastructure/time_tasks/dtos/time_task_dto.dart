import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight_partners/domain/time_tasks/time_task_entity.dart';

part 'time_task_dto.freezed.dart';
part 'time_task_dto.g.dart';

@freezed
class TimeTaskDto with _$TimeTaskDto {
  const TimeTaskDto._();

  @JsonSerializable()
  const factory TimeTaskDto({
    @JsonKey(ignore: true) String? id,
    required String eventId,
    required String eventName,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
    required int durationInMinutes,
    required String descriptionPl,
    required String descriptionEn,
    @Default(false) isRewardAcquired,
  }) = _TimeTaskDto;

  factory TimeTaskDto.fromJson(Map<String, dynamic> json) =>
      _$TimeTaskDtoFromJson(json);

  factory TimeTaskDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return TimeTaskDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(
      id: documentSnapshot.id,
    );
  }

  factory TimeTaskDto.fromDomain(TimeTask task) => TimeTaskDto(
        eventId: task.eventId,
        eventName: task.eventName,
        createdAt: task.createdAt,
        durationInMinutes: task.durationInMinutes,
        descriptionPl: task.descriptionPl,
        descriptionEn: task.descriptionEn,
      );

  TimeTask toDomain() => TimeTask(
        eventId: eventId,
        eventName: eventName,
        descriptionPl: descriptionPl,
        descriptionEn: descriptionEn,
        durationInMinutes: durationInMinutes,
      );
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/time_tasks/time_task_entity.dart';

part 'time_task_dto.freezed.dart';
part 'time_task_dto.g.dart';

@freezed
class TimeTaskDto with _$TimeTaskDto {
  const TimeTaskDto._();

  @JsonSerializable()
  const factory TimeTaskDto({
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
    required String eventId,
    required String eventName,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
    required int durationInMinutes,
    required String timeTaskName,
    required String voucherName,
    required String descriptionPl,
    required String descriptionEn,
    required int poolLimit,
    required int currentUsage,
  }) = _TimeTaskDto;

  factory TimeTaskDto.fromJson(Map<String, dynamic> json) =>
      _$TimeTaskDtoFromJson(json);

  factory TimeTaskDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return TimeTaskDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory TimeTaskDto.fromDomain(TimeTask timeTask) {
    return TimeTaskDto(
      id: timeTask.id,
      eventId: timeTask.eventId,
      eventName: timeTask.eventName,
      createdAt: timeTask.createdAt,
      durationInMinutes: timeTask.durationInMinutes,
      timeTaskName: timeTask.timeTaskName,
      voucherName: timeTask.voucherName,
      descriptionPl: timeTask.descriptionPl,
      descriptionEn: timeTask.descriptionEn,
      poolLimit: timeTask.poolLimit,
      currentUsage: timeTask.currentUsage,
    );
  }

  TimeTask toDomain() {
    return TimeTask(
      id: id,
      eventId: eventId,
      eventName: eventName,
      createdAt: createdAt,
      durationInMinutes: durationInMinutes,
      timeTaskName: timeTaskName,
      voucherName: voucherName,
      descriptionPl: descriptionPl,
      descriptionEn: descriptionEn,
      poolLimit: poolLimit,
      currentUsage: currentUsage,
    );
  }
}

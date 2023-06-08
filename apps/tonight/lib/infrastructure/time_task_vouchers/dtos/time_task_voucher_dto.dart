import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/infrastructure/json_converters/firebase_nullable_timestamp_json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_entity.dart';

part 'time_task_voucher_dto.freezed.dart';
part 'time_task_voucher_dto.g.dart';

@freezed
class TimeTaskVoucherDto with _$TimeTaskVoucherDto {
  const TimeTaskVoucherDto._();

  const factory TimeTaskVoucherDto({
    @JsonKey(includeToJson: false, includeFromJson: false) String? timeTaskId,
    required String venueId,
    required String wallPhotoId,
    required String wallPhotoUrl,
    required String timeTaskName,
    required String venueName,
    required String voucherName,
    required DateTime validUntil,
    required DateTime createdAt,
    @Default(false) bool isActivated,
    @Default(false) bool isRewardAcquired,
    @FirebaseNullableTimestampJsonConverter() DateTime? usedAt,
  }) = _TimeTaskVoucherDto;

  factory TimeTaskVoucherDto.fromJson(Map<String, dynamic> json) =>
      _$TimeTaskVoucherDtoFromJson(json);

  factory TimeTaskVoucherDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return TimeTaskVoucherDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(timeTaskId: documentSnapshot.id);
  }

  factory TimeTaskVoucherDto.fromDomain(TimeTaskVoucher timeTaskVoucher) {
    return TimeTaskVoucherDto(
      timeTaskId: timeTaskVoucher.timeTaskId,
      venueId: timeTaskVoucher.venueId,
      wallPhotoId: timeTaskVoucher.wallPhotoId,
      wallPhotoUrl: timeTaskVoucher.wallPhotoUrl,
      timeTaskName: timeTaskVoucher.timeTaskName,
      venueName: timeTaskVoucher.venueName,
      voucherName: timeTaskVoucher.voucherName,
      validUntil: timeTaskVoucher.validUntil,
      createdAt: timeTaskVoucher.createdAt,
      isActivated: timeTaskVoucher.isActivated,
      isRewardAcquired: timeTaskVoucher.isRewardAcquired,
      usedAt: timeTaskVoucher.usedAt,
    );
  }

  TimeTaskVoucher toDomain() {
    return TimeTaskVoucher(
      timeTaskId: timeTaskId!,
      venueId: venueId,
      wallPhotoId: wallPhotoId,
      wallPhotoUrl: wallPhotoUrl,
      timeTaskName: timeTaskName,
      venueName: venueName,
      voucherName: voucherName,
      validUntil: validUntil,
      createdAt: createdAt,
      isActivated: isActivated,
      isRewardAcquired: isRewardAcquired,
      usedAt: usedAt,
    );
  }
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_task_voucher_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeTaskVoucherDto _$TimeTaskVoucherDtoFromJson(Map<String, dynamic> json) {
  return _TimeTaskVoucherDto.fromJson(json);
}

/// @nodoc
mixin _$TimeTaskVoucherDto {
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get timeTaskId => throw _privateConstructorUsedError;
  String get venueId => throw _privateConstructorUsedError;
  String get wallPhotoId => throw _privateConstructorUsedError;
  String get wallPhotoUrl => throw _privateConstructorUsedError;
  String get timeTaskName => throw _privateConstructorUsedError;
  String get venueName => throw _privateConstructorUsedError;
  String get voucherName => throw _privateConstructorUsedError;
  DateTime get validUntil => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isActivated => throw _privateConstructorUsedError;
  bool get isRewardAcquired => throw _privateConstructorUsedError;
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get usedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeTaskVoucherDtoCopyWith<TimeTaskVoucherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTaskVoucherDtoCopyWith<$Res> {
  factory $TimeTaskVoucherDtoCopyWith(
          TimeTaskVoucherDto value, $Res Function(TimeTaskVoucherDto) then) =
      _$TimeTaskVoucherDtoCopyWithImpl<$Res, TimeTaskVoucherDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      String? timeTaskId,
      String venueId,
      String wallPhotoId,
      String wallPhotoUrl,
      String timeTaskName,
      String venueName,
      String voucherName,
      DateTime validUntil,
      DateTime createdAt,
      bool isActivated,
      bool isRewardAcquired,
      @FirebaseNullableTimestampJsonConverter() DateTime? usedAt});
}

/// @nodoc
class _$TimeTaskVoucherDtoCopyWithImpl<$Res, $Val extends TimeTaskVoucherDto>
    implements $TimeTaskVoucherDtoCopyWith<$Res> {
  _$TimeTaskVoucherDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeTaskId = freezed,
    Object? venueId = null,
    Object? wallPhotoId = null,
    Object? wallPhotoUrl = null,
    Object? timeTaskName = null,
    Object? venueName = null,
    Object? voucherName = null,
    Object? validUntil = null,
    Object? createdAt = null,
    Object? isActivated = null,
    Object? isRewardAcquired = null,
    Object? usedAt = freezed,
  }) {
    return _then(_value.copyWith(
      timeTaskId: freezed == timeTaskId
          ? _value.timeTaskId
          : timeTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      venueId: null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
      wallPhotoId: null == wallPhotoId
          ? _value.wallPhotoId
          : wallPhotoId // ignore: cast_nullable_to_non_nullable
              as String,
      wallPhotoUrl: null == wallPhotoUrl
          ? _value.wallPhotoUrl
          : wallPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      timeTaskName: null == timeTaskName
          ? _value.timeTaskName
          : timeTaskName // ignore: cast_nullable_to_non_nullable
              as String,
      venueName: null == venueName
          ? _value.venueName
          : venueName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isRewardAcquired: null == isRewardAcquired
          ? _value.isRewardAcquired
          : isRewardAcquired // ignore: cast_nullable_to_non_nullable
              as bool,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeTaskVoucherDtoImplCopyWith<$Res>
    implements $TimeTaskVoucherDtoCopyWith<$Res> {
  factory _$$TimeTaskVoucherDtoImplCopyWith(_$TimeTaskVoucherDtoImpl value,
          $Res Function(_$TimeTaskVoucherDtoImpl) then) =
      __$$TimeTaskVoucherDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      String? timeTaskId,
      String venueId,
      String wallPhotoId,
      String wallPhotoUrl,
      String timeTaskName,
      String venueName,
      String voucherName,
      DateTime validUntil,
      DateTime createdAt,
      bool isActivated,
      bool isRewardAcquired,
      @FirebaseNullableTimestampJsonConverter() DateTime? usedAt});
}

/// @nodoc
class __$$TimeTaskVoucherDtoImplCopyWithImpl<$Res>
    extends _$TimeTaskVoucherDtoCopyWithImpl<$Res, _$TimeTaskVoucherDtoImpl>
    implements _$$TimeTaskVoucherDtoImplCopyWith<$Res> {
  __$$TimeTaskVoucherDtoImplCopyWithImpl(_$TimeTaskVoucherDtoImpl _value,
      $Res Function(_$TimeTaskVoucherDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeTaskId = freezed,
    Object? venueId = null,
    Object? wallPhotoId = null,
    Object? wallPhotoUrl = null,
    Object? timeTaskName = null,
    Object? venueName = null,
    Object? voucherName = null,
    Object? validUntil = null,
    Object? createdAt = null,
    Object? isActivated = null,
    Object? isRewardAcquired = null,
    Object? usedAt = freezed,
  }) {
    return _then(_$TimeTaskVoucherDtoImpl(
      timeTaskId: freezed == timeTaskId
          ? _value.timeTaskId
          : timeTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      venueId: null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
      wallPhotoId: null == wallPhotoId
          ? _value.wallPhotoId
          : wallPhotoId // ignore: cast_nullable_to_non_nullable
              as String,
      wallPhotoUrl: null == wallPhotoUrl
          ? _value.wallPhotoUrl
          : wallPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      timeTaskName: null == timeTaskName
          ? _value.timeTaskName
          : timeTaskName // ignore: cast_nullable_to_non_nullable
              as String,
      venueName: null == venueName
          ? _value.venueName
          : venueName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isRewardAcquired: null == isRewardAcquired
          ? _value.isRewardAcquired
          : isRewardAcquired // ignore: cast_nullable_to_non_nullable
              as bool,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeTaskVoucherDtoImpl extends _TimeTaskVoucherDto {
  const _$TimeTaskVoucherDtoImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.timeTaskId,
      required this.venueId,
      required this.wallPhotoId,
      required this.wallPhotoUrl,
      required this.timeTaskName,
      required this.venueName,
      required this.voucherName,
      required this.validUntil,
      required this.createdAt,
      this.isActivated = false,
      this.isRewardAcquired = false,
      @FirebaseNullableTimestampJsonConverter() this.usedAt})
      : super._();

  factory _$TimeTaskVoucherDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeTaskVoucherDtoImplFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? timeTaskId;
  @override
  final String venueId;
  @override
  final String wallPhotoId;
  @override
  final String wallPhotoUrl;
  @override
  final String timeTaskName;
  @override
  final String venueName;
  @override
  final String voucherName;
  @override
  final DateTime validUntil;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final bool isActivated;
  @override
  @JsonKey()
  final bool isRewardAcquired;
  @override
  @FirebaseNullableTimestampJsonConverter()
  final DateTime? usedAt;

  @override
  String toString() {
    return 'TimeTaskVoucherDto(timeTaskId: $timeTaskId, venueId: $venueId, wallPhotoId: $wallPhotoId, wallPhotoUrl: $wallPhotoUrl, timeTaskName: $timeTaskName, venueName: $venueName, voucherName: $voucherName, validUntil: $validUntil, createdAt: $createdAt, isActivated: $isActivated, isRewardAcquired: $isRewardAcquired, usedAt: $usedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeTaskVoucherDtoImpl &&
            (identical(other.timeTaskId, timeTaskId) ||
                other.timeTaskId == timeTaskId) &&
            (identical(other.venueId, venueId) || other.venueId == venueId) &&
            (identical(other.wallPhotoId, wallPhotoId) ||
                other.wallPhotoId == wallPhotoId) &&
            (identical(other.wallPhotoUrl, wallPhotoUrl) ||
                other.wallPhotoUrl == wallPhotoUrl) &&
            (identical(other.timeTaskName, timeTaskName) ||
                other.timeTaskName == timeTaskName) &&
            (identical(other.venueName, venueName) ||
                other.venueName == venueName) &&
            (identical(other.voucherName, voucherName) ||
                other.voucherName == voucherName) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.isRewardAcquired, isRewardAcquired) ||
                other.isRewardAcquired == isRewardAcquired) &&
            (identical(other.usedAt, usedAt) || other.usedAt == usedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timeTaskId,
      venueId,
      wallPhotoId,
      wallPhotoUrl,
      timeTaskName,
      venueName,
      voucherName,
      validUntil,
      createdAt,
      isActivated,
      isRewardAcquired,
      usedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeTaskVoucherDtoImplCopyWith<_$TimeTaskVoucherDtoImpl> get copyWith =>
      __$$TimeTaskVoucherDtoImplCopyWithImpl<_$TimeTaskVoucherDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeTaskVoucherDtoImplToJson(
      this,
    );
  }
}

abstract class _TimeTaskVoucherDto extends TimeTaskVoucherDto {
  const factory _TimeTaskVoucherDto(
          {@JsonKey(includeToJson: false, includeFromJson: false)
          final String? timeTaskId,
          required final String venueId,
          required final String wallPhotoId,
          required final String wallPhotoUrl,
          required final String timeTaskName,
          required final String venueName,
          required final String voucherName,
          required final DateTime validUntil,
          required final DateTime createdAt,
          final bool isActivated,
          final bool isRewardAcquired,
          @FirebaseNullableTimestampJsonConverter() final DateTime? usedAt}) =
      _$TimeTaskVoucherDtoImpl;
  const _TimeTaskVoucherDto._() : super._();

  factory _TimeTaskVoucherDto.fromJson(Map<String, dynamic> json) =
      _$TimeTaskVoucherDtoImpl.fromJson;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get timeTaskId;
  @override
  String get venueId;
  @override
  String get wallPhotoId;
  @override
  String get wallPhotoUrl;
  @override
  String get timeTaskName;
  @override
  String get venueName;
  @override
  String get voucherName;
  @override
  DateTime get validUntil;
  @override
  DateTime get createdAt;
  @override
  bool get isActivated;
  @override
  bool get isRewardAcquired;
  @override
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get usedAt;
  @override
  @JsonKey(ignore: true)
  _$$TimeTaskVoucherDtoImplCopyWith<_$TimeTaskVoucherDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

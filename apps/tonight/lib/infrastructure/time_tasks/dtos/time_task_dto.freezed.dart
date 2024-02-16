// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeTaskDto _$TimeTaskDtoFromJson(Map<String, dynamic> json) {
  return _TimeTaskDto.fromJson(json);
}

/// @nodoc
mixin _$TimeTaskDto {
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get durationInMinutes => throw _privateConstructorUsedError;
  String get timeTaskName => throw _privateConstructorUsedError;
  String get voucherName => throw _privateConstructorUsedError;
  String get descriptionPl => throw _privateConstructorUsedError;
  String get descriptionEn => throw _privateConstructorUsedError;
  int get poolLimit => throw _privateConstructorUsedError;
  int get currentUsage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeTaskDtoCopyWith<TimeTaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTaskDtoCopyWith<$Res> {
  factory $TimeTaskDtoCopyWith(
          TimeTaskDto value, $Res Function(TimeTaskDto) then) =
      _$TimeTaskDtoCopyWithImpl<$Res, TimeTaskDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      String eventId,
      String eventName,
      @FirebaseTimestampJsonConverter() DateTime createdAt,
      int durationInMinutes,
      String timeTaskName,
      String voucherName,
      String descriptionPl,
      String descriptionEn,
      int poolLimit,
      int currentUsage});
}

/// @nodoc
class _$TimeTaskDtoCopyWithImpl<$Res, $Val extends TimeTaskDto>
    implements $TimeTaskDtoCopyWith<$Res> {
  _$TimeTaskDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = null,
    Object? eventName = null,
    Object? createdAt = null,
    Object? durationInMinutes = null,
    Object? timeTaskName = null,
    Object? voucherName = null,
    Object? descriptionPl = null,
    Object? descriptionEn = null,
    Object? poolLimit = null,
    Object? currentUsage = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      timeTaskName: null == timeTaskName
          ? _value.timeTaskName
          : timeTaskName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionPl: null == descriptionPl
          ? _value.descriptionPl
          : descriptionPl // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String,
      poolLimit: null == poolLimit
          ? _value.poolLimit
          : poolLimit // ignore: cast_nullable_to_non_nullable
              as int,
      currentUsage: null == currentUsage
          ? _value.currentUsage
          : currentUsage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeTaskDtoImplCopyWith<$Res>
    implements $TimeTaskDtoCopyWith<$Res> {
  factory _$$TimeTaskDtoImplCopyWith(
          _$TimeTaskDtoImpl value, $Res Function(_$TimeTaskDtoImpl) then) =
      __$$TimeTaskDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      String eventId,
      String eventName,
      @FirebaseTimestampJsonConverter() DateTime createdAt,
      int durationInMinutes,
      String timeTaskName,
      String voucherName,
      String descriptionPl,
      String descriptionEn,
      int poolLimit,
      int currentUsage});
}

/// @nodoc
class __$$TimeTaskDtoImplCopyWithImpl<$Res>
    extends _$TimeTaskDtoCopyWithImpl<$Res, _$TimeTaskDtoImpl>
    implements _$$TimeTaskDtoImplCopyWith<$Res> {
  __$$TimeTaskDtoImplCopyWithImpl(
      _$TimeTaskDtoImpl _value, $Res Function(_$TimeTaskDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = null,
    Object? eventName = null,
    Object? createdAt = null,
    Object? durationInMinutes = null,
    Object? timeTaskName = null,
    Object? voucherName = null,
    Object? descriptionPl = null,
    Object? descriptionEn = null,
    Object? poolLimit = null,
    Object? currentUsage = null,
  }) {
    return _then(_$TimeTaskDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      timeTaskName: null == timeTaskName
          ? _value.timeTaskName
          : timeTaskName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionPl: null == descriptionPl
          ? _value.descriptionPl
          : descriptionPl // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String,
      poolLimit: null == poolLimit
          ? _value.poolLimit
          : poolLimit // ignore: cast_nullable_to_non_nullable
              as int,
      currentUsage: null == currentUsage
          ? _value.currentUsage
          : currentUsage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$TimeTaskDtoImpl extends _TimeTaskDto {
  const _$TimeTaskDtoImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.id,
      required this.eventId,
      required this.eventName,
      @FirebaseTimestampJsonConverter() required this.createdAt,
      required this.durationInMinutes,
      required this.timeTaskName,
      required this.voucherName,
      required this.descriptionPl,
      required this.descriptionEn,
      required this.poolLimit,
      required this.currentUsage})
      : super._();

  factory _$TimeTaskDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeTaskDtoImplFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? id;
  @override
  final String eventId;
  @override
  final String eventName;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime createdAt;
  @override
  final int durationInMinutes;
  @override
  final String timeTaskName;
  @override
  final String voucherName;
  @override
  final String descriptionPl;
  @override
  final String descriptionEn;
  @override
  final int poolLimit;
  @override
  final int currentUsage;

  @override
  String toString() {
    return 'TimeTaskDto(id: $id, eventId: $eventId, eventName: $eventName, createdAt: $createdAt, durationInMinutes: $durationInMinutes, timeTaskName: $timeTaskName, voucherName: $voucherName, descriptionPl: $descriptionPl, descriptionEn: $descriptionEn, poolLimit: $poolLimit, currentUsage: $currentUsage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeTaskDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            (identical(other.timeTaskName, timeTaskName) ||
                other.timeTaskName == timeTaskName) &&
            (identical(other.voucherName, voucherName) ||
                other.voucherName == voucherName) &&
            (identical(other.descriptionPl, descriptionPl) ||
                other.descriptionPl == descriptionPl) &&
            (identical(other.descriptionEn, descriptionEn) ||
                other.descriptionEn == descriptionEn) &&
            (identical(other.poolLimit, poolLimit) ||
                other.poolLimit == poolLimit) &&
            (identical(other.currentUsage, currentUsage) ||
                other.currentUsage == currentUsage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      eventId,
      eventName,
      createdAt,
      durationInMinutes,
      timeTaskName,
      voucherName,
      descriptionPl,
      descriptionEn,
      poolLimit,
      currentUsage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeTaskDtoImplCopyWith<_$TimeTaskDtoImpl> get copyWith =>
      __$$TimeTaskDtoImplCopyWithImpl<_$TimeTaskDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeTaskDtoImplToJson(
      this,
    );
  }
}

abstract class _TimeTaskDto extends TimeTaskDto {
  const factory _TimeTaskDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) final String? id,
      required final String eventId,
      required final String eventName,
      @FirebaseTimestampJsonConverter() required final DateTime createdAt,
      required final int durationInMinutes,
      required final String timeTaskName,
      required final String voucherName,
      required final String descriptionPl,
      required final String descriptionEn,
      required final int poolLimit,
      required final int currentUsage}) = _$TimeTaskDtoImpl;
  const _TimeTaskDto._() : super._();

  factory _TimeTaskDto.fromJson(Map<String, dynamic> json) =
      _$TimeTaskDtoImpl.fromJson;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id;
  @override
  String get eventId;
  @override
  String get eventName;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt;
  @override
  int get durationInMinutes;
  @override
  String get timeTaskName;
  @override
  String get voucherName;
  @override
  String get descriptionPl;
  @override
  String get descriptionEn;
  @override
  int get poolLimit;
  @override
  int get currentUsage;
  @override
  @JsonKey(ignore: true)
  _$$TimeTaskDtoImplCopyWith<_$TimeTaskDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

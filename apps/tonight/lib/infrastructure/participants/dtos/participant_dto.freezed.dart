// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParticipantDto _$ParticipantDtoFromJson(Map<String, dynamic> json) {
  return _ParticipantDto.fromJson(json);
}

/// @nodoc
mixin _$ParticipantDto {
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  int get stepCount => throw _privateConstructorUsedError;
  int get initialStepCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantDtoCopyWith<ParticipantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantDtoCopyWith<$Res> {
  factory $ParticipantDtoCopyWith(
          ParticipantDto value, $Res Function(ParticipantDto) then) =
      _$ParticipantDtoCopyWithImpl<$Res, ParticipantDto>;
  @useResult
  $Res call(
      {String userId,
      String username,
      String? profilePictureUrl,
      int stepCount,
      int initialStepCount});
}

/// @nodoc
class _$ParticipantDtoCopyWithImpl<$Res, $Val extends ParticipantDto>
    implements $ParticipantDtoCopyWith<$Res> {
  _$ParticipantDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? profilePictureUrl = freezed,
    Object? stepCount = null,
    Object? initialStepCount = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      stepCount: null == stepCount
          ? _value.stepCount
          : stepCount // ignore: cast_nullable_to_non_nullable
              as int,
      initialStepCount: null == initialStepCount
          ? _value.initialStepCount
          : initialStepCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipantDtoImplCopyWith<$Res>
    implements $ParticipantDtoCopyWith<$Res> {
  factory _$$ParticipantDtoImplCopyWith(_$ParticipantDtoImpl value,
          $Res Function(_$ParticipantDtoImpl) then) =
      __$$ParticipantDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String username,
      String? profilePictureUrl,
      int stepCount,
      int initialStepCount});
}

/// @nodoc
class __$$ParticipantDtoImplCopyWithImpl<$Res>
    extends _$ParticipantDtoCopyWithImpl<$Res, _$ParticipantDtoImpl>
    implements _$$ParticipantDtoImplCopyWith<$Res> {
  __$$ParticipantDtoImplCopyWithImpl(
      _$ParticipantDtoImpl _value, $Res Function(_$ParticipantDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? profilePictureUrl = freezed,
    Object? stepCount = null,
    Object? initialStepCount = null,
  }) {
    return _then(_$ParticipantDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      stepCount: null == stepCount
          ? _value.stepCount
          : stepCount // ignore: cast_nullable_to_non_nullable
              as int,
      initialStepCount: null == initialStepCount
          ? _value.initialStepCount
          : initialStepCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ParticipantDtoImpl extends _ParticipantDto {
  const _$ParticipantDtoImpl(
      {required this.userId,
      required this.username,
      this.profilePictureUrl,
      this.stepCount = 0,
      this.initialStepCount = 0})
      : super._();

  factory _$ParticipantDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantDtoImplFromJson(json);

  @override
  final String userId;
  @override
  final String username;
  @override
  final String? profilePictureUrl;
  @override
  @JsonKey()
  final int stepCount;
  @override
  @JsonKey()
  final int initialStepCount;

  @override
  String toString() {
    return 'ParticipantDto(userId: $userId, username: $username, profilePictureUrl: $profilePictureUrl, stepCount: $stepCount, initialStepCount: $initialStepCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.stepCount, stepCount) ||
                other.stepCount == stepCount) &&
            (identical(other.initialStepCount, initialStepCount) ||
                other.initialStepCount == initialStepCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username,
      profilePictureUrl, stepCount, initialStepCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantDtoImplCopyWith<_$ParticipantDtoImpl> get copyWith =>
      __$$ParticipantDtoImplCopyWithImpl<_$ParticipantDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantDtoImplToJson(
      this,
    );
  }
}

abstract class _ParticipantDto extends ParticipantDto {
  const factory _ParticipantDto(
      {required final String userId,
      required final String username,
      final String? profilePictureUrl,
      final int stepCount,
      final int initialStepCount}) = _$ParticipantDtoImpl;
  const _ParticipantDto._() : super._();

  factory _ParticipantDto.fromJson(Map<String, dynamic> json) =
      _$ParticipantDtoImpl.fromJson;

  @override
  String get userId;
  @override
  String get username;
  @override
  String? get profilePictureUrl;
  @override
  int get stepCount;
  @override
  int get initialStepCount;
  @override
  @JsonKey(ignore: true)
  _$$ParticipantDtoImplCopyWith<_$ParticipantDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

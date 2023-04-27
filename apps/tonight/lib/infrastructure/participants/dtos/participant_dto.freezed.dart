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
  @JsonKey(ignore: true)
  String? get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get profilePictureUrl => throw _privateConstructorUsedError;

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
      {@JsonKey(ignore: true) String? userId,
      String username,
      String? profilePictureUrl});
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
    Object? userId = freezed,
    Object? username = null,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParticipantDtoCopyWith<$Res>
    implements $ParticipantDtoCopyWith<$Res> {
  factory _$$_ParticipantDtoCopyWith(
          _$_ParticipantDto value, $Res Function(_$_ParticipantDto) then) =
      __$$_ParticipantDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? userId,
      String username,
      String? profilePictureUrl});
}

/// @nodoc
class __$$_ParticipantDtoCopyWithImpl<$Res>
    extends _$ParticipantDtoCopyWithImpl<$Res, _$_ParticipantDto>
    implements _$$_ParticipantDtoCopyWith<$Res> {
  __$$_ParticipantDtoCopyWithImpl(
      _$_ParticipantDto _value, $Res Function(_$_ParticipantDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = null,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_$_ParticipantDto(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ParticipantDto extends _ParticipantDto {
  const _$_ParticipantDto(
      {@JsonKey(ignore: true) this.userId,
      required this.username,
      this.profilePictureUrl})
      : super._();

  factory _$_ParticipantDto.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? userId;
  @override
  final String username;
  @override
  final String? profilePictureUrl;

  @override
  String toString() {
    return 'ParticipantDto(userId: $userId, username: $username, profilePictureUrl: $profilePictureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipantDto &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, username, profilePictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipantDtoCopyWith<_$_ParticipantDto> get copyWith =>
      __$$_ParticipantDtoCopyWithImpl<_$_ParticipantDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantDtoToJson(
      this,
    );
  }
}

abstract class _ParticipantDto extends ParticipantDto {
  const factory _ParticipantDto(
      {@JsonKey(ignore: true) final String? userId,
      required final String username,
      final String? profilePictureUrl}) = _$_ParticipantDto;
  const _ParticipantDto._() : super._();

  factory _ParticipantDto.fromJson(Map<String, dynamic> json) =
      _$_ParticipantDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get userId;
  @override
  String get username;
  @override
  String? get profilePictureUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantDtoCopyWith<_$_ParticipantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

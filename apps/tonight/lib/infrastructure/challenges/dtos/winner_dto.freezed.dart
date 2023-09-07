// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'winner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WinnerDto _$WinnerDtoFromJson(Map<String, dynamic> json) {
  return _WinnerDto.fromJson(json);
}

/// @nodoc
mixin _$WinnerDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get profilePictureUrl => throw _privateConstructorUsedError;
  int get place => throw _privateConstructorUsedError;
  int get reward => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WinnerDtoCopyWith<WinnerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinnerDtoCopyWith<$Res> {
  factory $WinnerDtoCopyWith(WinnerDto value, $Res Function(WinnerDto) then) =
      _$WinnerDtoCopyWithImpl<$Res, WinnerDto>;
  @useResult
  $Res call(
      {String id,
      String username,
      String profilePictureUrl,
      int place,
      int reward,
      int likesCount});
}

/// @nodoc
class _$WinnerDtoCopyWithImpl<$Res, $Val extends WinnerDto>
    implements $WinnerDtoCopyWith<$Res> {
  _$WinnerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? profilePictureUrl = null,
    Object? place = null,
    Object? reward = null,
    Object? likesCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as int,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WinnerDtoCopyWith<$Res> implements $WinnerDtoCopyWith<$Res> {
  factory _$$_WinnerDtoCopyWith(
          _$_WinnerDto value, $Res Function(_$_WinnerDto) then) =
      __$$_WinnerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String profilePictureUrl,
      int place,
      int reward,
      int likesCount});
}

/// @nodoc
class __$$_WinnerDtoCopyWithImpl<$Res>
    extends _$WinnerDtoCopyWithImpl<$Res, _$_WinnerDto>
    implements _$$_WinnerDtoCopyWith<$Res> {
  __$$_WinnerDtoCopyWithImpl(
      _$_WinnerDto _value, $Res Function(_$_WinnerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? profilePictureUrl = null,
    Object? place = null,
    Object? reward = null,
    Object? likesCount = null,
  }) {
    return _then(_$_WinnerDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as int,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_WinnerDto extends _WinnerDto {
  const _$_WinnerDto(
      {required this.id,
      required this.username,
      required this.profilePictureUrl,
      required this.place,
      required this.reward,
      this.likesCount = 0})
      : super._();

  factory _$_WinnerDto.fromJson(Map<String, dynamic> json) =>
      _$$_WinnerDtoFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String profilePictureUrl;
  @override
  final int place;
  @override
  final int reward;
  @override
  @JsonKey()
  final int likesCount;

  @override
  String toString() {
    return 'WinnerDto(id: $id, username: $username, profilePictureUrl: $profilePictureUrl, place: $place, reward: $reward, likesCount: $likesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WinnerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, profilePictureUrl, place, reward, likesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WinnerDtoCopyWith<_$_WinnerDto> get copyWith =>
      __$$_WinnerDtoCopyWithImpl<_$_WinnerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WinnerDtoToJson(
      this,
    );
  }
}

abstract class _WinnerDto extends WinnerDto {
  const factory _WinnerDto(
      {required final String id,
      required final String username,
      required final String profilePictureUrl,
      required final int place,
      required final int reward,
      final int likesCount}) = _$_WinnerDto;
  const _WinnerDto._() : super._();

  factory _WinnerDto.fromJson(Map<String, dynamic> json) =
      _$_WinnerDto.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get profilePictureUrl;
  @override
  int get place;
  @override
  int get reward;
  @override
  int get likesCount;
  @override
  @JsonKey(ignore: true)
  _$$_WinnerDtoCopyWith<_$_WinnerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

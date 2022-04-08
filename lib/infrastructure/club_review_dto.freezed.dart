// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClubReviewDto _$ClubReviewDtoFromJson(Map<String, dynamic> json) {
  return _ClubReviewDto.fromJson(json);
}

/// @nodoc
class _$ClubReviewDtoTearOff {
  const _$ClubReviewDtoTearOff();

  _ClubReviewDto call(
      {required String userOpinion,
      required double userRate,
      required String userId,
      required String username,
      @TimestampJsonConverter() required DateTime dateTime}) {
    return _ClubReviewDto(
      userOpinion: userOpinion,
      userRate: userRate,
      userId: userId,
      username: username,
      dateTime: dateTime,
    );
  }

  ClubReviewDto fromJson(Map<String, Object?> json) {
    return ClubReviewDto.fromJson(json);
  }
}

/// @nodoc
const $ClubReviewDto = _$ClubReviewDtoTearOff();

/// @nodoc
mixin _$ClubReviewDto {
  String get userOpinion => throw _privateConstructorUsedError;
  double get userRate => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @TimestampJsonConverter()
  DateTime get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubReviewDtoCopyWith<ClubReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubReviewDtoCopyWith<$Res> {
  factory $ClubReviewDtoCopyWith(
          ClubReviewDto value, $Res Function(ClubReviewDto) then) =
      _$ClubReviewDtoCopyWithImpl<$Res>;
  $Res call(
      {String userOpinion,
      double userRate,
      String userId,
      String username,
      @TimestampJsonConverter() DateTime dateTime});
}

/// @nodoc
class _$ClubReviewDtoCopyWithImpl<$Res>
    implements $ClubReviewDtoCopyWith<$Res> {
  _$ClubReviewDtoCopyWithImpl(this._value, this._then);

  final ClubReviewDto _value;
  // ignore: unused_field
  final $Res Function(ClubReviewDto) _then;

  @override
  $Res call({
    Object? userOpinion = freezed,
    Object? userRate = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      userOpinion: userOpinion == freezed
          ? _value.userOpinion
          : userOpinion // ignore: cast_nullable_to_non_nullable
              as String,
      userRate: userRate == freezed
          ? _value.userRate
          : userRate // ignore: cast_nullable_to_non_nullable
              as double,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ClubReviewDtoCopyWith<$Res>
    implements $ClubReviewDtoCopyWith<$Res> {
  factory _$ClubReviewDtoCopyWith(
          _ClubReviewDto value, $Res Function(_ClubReviewDto) then) =
      __$ClubReviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userOpinion,
      double userRate,
      String userId,
      String username,
      @TimestampJsonConverter() DateTime dateTime});
}

/// @nodoc
class __$ClubReviewDtoCopyWithImpl<$Res>
    extends _$ClubReviewDtoCopyWithImpl<$Res>
    implements _$ClubReviewDtoCopyWith<$Res> {
  __$ClubReviewDtoCopyWithImpl(
      _ClubReviewDto _value, $Res Function(_ClubReviewDto) _then)
      : super(_value, (v) => _then(v as _ClubReviewDto));

  @override
  _ClubReviewDto get _value => super._value as _ClubReviewDto;

  @override
  $Res call({
    Object? userOpinion = freezed,
    Object? userRate = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_ClubReviewDto(
      userOpinion: userOpinion == freezed
          ? _value.userOpinion
          : userOpinion // ignore: cast_nullable_to_non_nullable
              as String,
      userRate: userRate == freezed
          ? _value.userRate
          : userRate // ignore: cast_nullable_to_non_nullable
              as double,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClubReviewDto extends _ClubReviewDto {
  const _$_ClubReviewDto(
      {required this.userOpinion,
      required this.userRate,
      required this.userId,
      required this.username,
      @TimestampJsonConverter() required this.dateTime})
      : super._();

  factory _$_ClubReviewDto.fromJson(Map<String, dynamic> json) =>
      _$$_ClubReviewDtoFromJson(json);

  @override
  final String userOpinion;
  @override
  final double userRate;
  @override
  final String userId;
  @override
  final String username;
  @override
  @TimestampJsonConverter()
  final DateTime dateTime;

  @override
  String toString() {
    return 'ClubReviewDto(userOpinion: $userOpinion, userRate: $userRate, userId: $userId, username: $username, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClubReviewDto &&
            const DeepCollectionEquality()
                .equals(other.userOpinion, userOpinion) &&
            const DeepCollectionEquality().equals(other.userRate, userRate) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userOpinion),
      const DeepCollectionEquality().hash(userRate),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$ClubReviewDtoCopyWith<_ClubReviewDto> get copyWith =>
      __$ClubReviewDtoCopyWithImpl<_ClubReviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubReviewDtoToJson(this);
  }
}

abstract class _ClubReviewDto extends ClubReviewDto {
  const factory _ClubReviewDto(
      {required String userOpinion,
      required double userRate,
      required String userId,
      required String username,
      @TimestampJsonConverter() required DateTime dateTime}) = _$_ClubReviewDto;
  const _ClubReviewDto._() : super._();

  factory _ClubReviewDto.fromJson(Map<String, dynamic> json) =
      _$_ClubReviewDto.fromJson;

  @override
  String get userOpinion;
  @override
  double get userRate;
  @override
  String get userId;
  @override
  String get username;
  @override
  @TimestampJsonConverter()
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$ClubReviewDtoCopyWith<_ClubReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

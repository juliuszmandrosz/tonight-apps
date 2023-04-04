// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) {
  return _ReviewDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get userOpinion => throw _privateConstructorUsedError;
  double get userRate => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get ticketId => throw _privateConstructorUsedError;
  @TimestampJsonConverter()
  DateTime get dateAdded => throw _privateConstructorUsedError;
  String get userPictureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDtoCopyWith<ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDtoCopyWith<$Res> {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) then) =
      _$ReviewDtoCopyWithImpl<$Res, ReviewDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String userOpinion,
      double userRate,
      String userId,
      String username,
      String eventId,
      String eventName,
      String ticketId,
      @TimestampJsonConverter() DateTime dateAdded,
      String userPictureUrl});
}

/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res, $Val extends ReviewDto>
    implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userOpinion = null,
    Object? userRate = null,
    Object? userId = null,
    Object? username = null,
    Object? eventId = null,
    Object? eventName = null,
    Object? ticketId = null,
    Object? dateAdded = null,
    Object? userPictureUrl = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userOpinion: null == userOpinion
          ? _value.userOpinion
          : userOpinion // ignore: cast_nullable_to_non_nullable
              as String,
      userRate: null == userRate
          ? _value.userRate
          : userRate // ignore: cast_nullable_to_non_nullable
              as double,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userPictureUrl: null == userPictureUrl
          ? _value.userPictureUrl
          : userPictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$$_ReviewDtoCopyWith(
          _$_ReviewDto value, $Res Function(_$_ReviewDto) then) =
      __$$_ReviewDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String userOpinion,
      double userRate,
      String userId,
      String username,
      String eventId,
      String eventName,
      String ticketId,
      @TimestampJsonConverter() DateTime dateAdded,
      String userPictureUrl});
}

/// @nodoc
class __$$_ReviewDtoCopyWithImpl<$Res>
    extends _$ReviewDtoCopyWithImpl<$Res, _$_ReviewDto>
    implements _$$_ReviewDtoCopyWith<$Res> {
  __$$_ReviewDtoCopyWithImpl(
      _$_ReviewDto _value, $Res Function(_$_ReviewDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userOpinion = null,
    Object? userRate = null,
    Object? userId = null,
    Object? username = null,
    Object? eventId = null,
    Object? eventName = null,
    Object? ticketId = null,
    Object? dateAdded = null,
    Object? userPictureUrl = null,
  }) {
    return _then(_$_ReviewDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userOpinion: null == userOpinion
          ? _value.userOpinion
          : userOpinion // ignore: cast_nullable_to_non_nullable
              as String,
      userRate: null == userRate
          ? _value.userRate
          : userRate // ignore: cast_nullable_to_non_nullable
              as double,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userPictureUrl: null == userPictureUrl
          ? _value.userPictureUrl
          : userPictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewDto extends _ReviewDto {
  const _$_ReviewDto(
      {@JsonKey(ignore: true) this.id,
      required this.userOpinion,
      required this.userRate,
      required this.userId,
      required this.username,
      required this.eventId,
      required this.eventName,
      required this.ticketId,
      @TimestampJsonConverter() required this.dateAdded,
      this.userPictureUrl = ''})
      : super._();

  factory _$_ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String userOpinion;
  @override
  final double userRate;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String eventId;
  @override
  final String eventName;
  @override
  final String ticketId;
  @override
  @TimestampJsonConverter()
  final DateTime dateAdded;
  @override
  @JsonKey()
  final String userPictureUrl;

  @override
  String toString() {
    return 'ReviewDto(id: $id, userOpinion: $userOpinion, userRate: $userRate, userId: $userId, username: $username, eventId: $eventId, eventName: $eventName, ticketId: $ticketId, dateAdded: $dateAdded, userPictureUrl: $userPictureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userOpinion, userOpinion) ||
                other.userOpinion == userOpinion) &&
            (identical(other.userRate, userRate) ||
                other.userRate == userRate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.userPictureUrl, userPictureUrl) ||
                other.userPictureUrl == userPictureUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userOpinion,
      userRate,
      userId,
      username,
      eventId,
      eventName,
      ticketId,
      dateAdded,
      userPictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewDtoCopyWith<_$_ReviewDto> get copyWith =>
      __$$_ReviewDtoCopyWithImpl<_$_ReviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewDtoToJson(
      this,
    );
  }
}

abstract class _ReviewDto extends ReviewDto {
  const factory _ReviewDto(
      {@JsonKey(ignore: true) final String? id,
      required final String userOpinion,
      required final double userRate,
      required final String userId,
      required final String username,
      required final String eventId,
      required final String eventName,
      required final String ticketId,
      @TimestampJsonConverter() required final DateTime dateAdded,
      final String userPictureUrl}) = _$_ReviewDto;
  const _ReviewDto._() : super._();

  factory _ReviewDto.fromJson(Map<String, dynamic> json) =
      _$_ReviewDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get userOpinion;
  @override
  double get userRate;
  @override
  String get userId;
  @override
  String get username;
  @override
  String get eventId;
  @override
  String get eventName;
  @override
  String get ticketId;
  @override
  @TimestampJsonConverter()
  DateTime get dateAdded;
  @override
  String get userPictureUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewDtoCopyWith<_$_ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wall_photo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WallPhotoDto _$WallPhotoDtoFromJson(Map<String, dynamic> json) {
  return _WallPhotoDto.fromJson(json);
}

/// @nodoc
mixin _$WallPhotoDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get clubId => throw _privateConstructorUsedError;
  String get clubName => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @TimestampJsonConverter()
  DateTime get eventEndDateTime => throw _privateConstructorUsedError;
  @TimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get userProfilePhotoUrl => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  @LatLngConverter()
  LatLng get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WallPhotoDtoCopyWith<WallPhotoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallPhotoDtoCopyWith<$Res> {
  factory $WallPhotoDtoCopyWith(
          WallPhotoDto value, $Res Function(WallPhotoDto) then) =
      _$WallPhotoDtoCopyWithImpl<$Res, WallPhotoDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String photoUrl,
      String clubId,
      String clubName,
      String eventId,
      String eventName,
      String userId,
      String username,
      @TimestampJsonConverter() DateTime eventEndDateTime,
      @TimestampJsonConverter() DateTime createdAt,
      String? userProfilePhotoUrl,
      bool isVerified,
      @LatLngConverter() LatLng location});
}

/// @nodoc
class _$WallPhotoDtoCopyWithImpl<$Res, $Val extends WallPhotoDto>
    implements $WallPhotoDtoCopyWith<$Res> {
  _$WallPhotoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = null,
    Object? clubId = null,
    Object? clubName = null,
    Object? eventId = null,
    Object? eventName = null,
    Object? userId = null,
    Object? username = null,
    Object? eventEndDateTime = null,
    Object? createdAt = null,
    Object? userProfilePhotoUrl = freezed,
    Object? isVerified = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: null == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      eventEndDateTime: null == eventEndDateTime
          ? _value.eventEndDateTime
          : eventEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userProfilePhotoUrl: freezed == userProfilePhotoUrl
          ? _value.userProfilePhotoUrl
          : userProfilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WallPhotoDtoCopyWith<$Res>
    implements $WallPhotoDtoCopyWith<$Res> {
  factory _$$_WallPhotoDtoCopyWith(
          _$_WallPhotoDto value, $Res Function(_$_WallPhotoDto) then) =
      __$$_WallPhotoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String photoUrl,
      String clubId,
      String clubName,
      String eventId,
      String eventName,
      String userId,
      String username,
      @TimestampJsonConverter() DateTime eventEndDateTime,
      @TimestampJsonConverter() DateTime createdAt,
      String? userProfilePhotoUrl,
      bool isVerified,
      @LatLngConverter() LatLng location});
}

/// @nodoc
class __$$_WallPhotoDtoCopyWithImpl<$Res>
    extends _$WallPhotoDtoCopyWithImpl<$Res, _$_WallPhotoDto>
    implements _$$_WallPhotoDtoCopyWith<$Res> {
  __$$_WallPhotoDtoCopyWithImpl(
      _$_WallPhotoDto _value, $Res Function(_$_WallPhotoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = null,
    Object? clubId = null,
    Object? clubName = null,
    Object? eventId = null,
    Object? eventName = null,
    Object? userId = null,
    Object? username = null,
    Object? eventEndDateTime = null,
    Object? createdAt = null,
    Object? userProfilePhotoUrl = freezed,
    Object? isVerified = null,
    Object? location = null,
  }) {
    return _then(_$_WallPhotoDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: null == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      eventEndDateTime: null == eventEndDateTime
          ? _value.eventEndDateTime
          : eventEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userProfilePhotoUrl: freezed == userProfilePhotoUrl
          ? _value.userProfilePhotoUrl
          : userProfilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_WallPhotoDto extends _WallPhotoDto {
  const _$_WallPhotoDto(
      {@JsonKey(ignore: true) this.id,
      required this.photoUrl,
      required this.clubId,
      required this.clubName,
      required this.eventId,
      required this.eventName,
      required this.userId,
      required this.username,
      @TimestampJsonConverter() required this.eventEndDateTime,
      @TimestampJsonConverter() required this.createdAt,
      this.userProfilePhotoUrl,
      this.isVerified = false,
      @LatLngConverter() required this.location})
      : super._();

  factory _$_WallPhotoDto.fromJson(Map<String, dynamic> json) =>
      _$$_WallPhotoDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String photoUrl;
  @override
  final String clubId;
  @override
  final String clubName;
  @override
  final String eventId;
  @override
  final String eventName;
  @override
  final String userId;
  @override
  final String username;
  @override
  @TimestampJsonConverter()
  final DateTime eventEndDateTime;
  @override
  @TimestampJsonConverter()
  final DateTime createdAt;
  @override
  final String? userProfilePhotoUrl;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  @LatLngConverter()
  final LatLng location;

  @override
  String toString() {
    return 'WallPhotoDto(id: $id, photoUrl: $photoUrl, clubId: $clubId, clubName: $clubName, eventId: $eventId, eventName: $eventName, userId: $userId, username: $username, eventEndDateTime: $eventEndDateTime, createdAt: $createdAt, userProfilePhotoUrl: $userProfilePhotoUrl, isVerified: $isVerified, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WallPhotoDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.clubName, clubName) ||
                other.clubName == clubName) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.eventEndDateTime, eventEndDateTime) ||
                other.eventEndDateTime == eventEndDateTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userProfilePhotoUrl, userProfilePhotoUrl) ||
                other.userProfilePhotoUrl == userProfilePhotoUrl) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      photoUrl,
      clubId,
      clubName,
      eventId,
      eventName,
      userId,
      username,
      eventEndDateTime,
      createdAt,
      userProfilePhotoUrl,
      isVerified,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WallPhotoDtoCopyWith<_$_WallPhotoDto> get copyWith =>
      __$$_WallPhotoDtoCopyWithImpl<_$_WallPhotoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WallPhotoDtoToJson(
      this,
    );
  }
}

abstract class _WallPhotoDto extends WallPhotoDto {
  const factory _WallPhotoDto(
      {@JsonKey(ignore: true) final String? id,
      required final String photoUrl,
      required final String clubId,
      required final String clubName,
      required final String eventId,
      required final String eventName,
      required final String userId,
      required final String username,
      @TimestampJsonConverter() required final DateTime eventEndDateTime,
      @TimestampJsonConverter() required final DateTime createdAt,
      final String? userProfilePhotoUrl,
      final bool isVerified,
      @LatLngConverter() required final LatLng location}) = _$_WallPhotoDto;
  const _WallPhotoDto._() : super._();

  factory _WallPhotoDto.fromJson(Map<String, dynamic> json) =
      _$_WallPhotoDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get photoUrl;
  @override
  String get clubId;
  @override
  String get clubName;
  @override
  String get eventId;
  @override
  String get eventName;
  @override
  String get userId;
  @override
  String get username;
  @override
  @TimestampJsonConverter()
  DateTime get eventEndDateTime;
  @override
  @TimestampJsonConverter()
  DateTime get createdAt;
  @override
  String? get userProfilePhotoUrl;
  @override
  bool get isVerified;
  @override
  @LatLngConverter()
  LatLng get location;
  @override
  @JsonKey(ignore: true)
  _$$_WallPhotoDtoCopyWith<_$_WallPhotoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

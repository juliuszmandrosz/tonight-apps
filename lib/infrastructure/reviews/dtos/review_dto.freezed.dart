// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDtoCopyWith<ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDtoCopyWith<$Res> {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) then) =
      _$ReviewDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String userOpinion,
      double userRate,
      String userId,
      String username,
      String eventId,
      String eventName,
      String ticketId,
      @TimestampJsonConverter() DateTime dateAdded});
}

/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res> implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._value, this._then);

  final ReviewDto _value;
  // ignore: unused_field
  final $Res Function(ReviewDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userOpinion = freezed,
    Object? userRate = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? eventId = freezed,
    Object? eventName = freezed,
    Object? ticketId = freezed,
    Object? dateAdded = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: eventName == freezed
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: ticketId == freezed
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$$_ReviewDtoCopyWith(
          _$_ReviewDto value, $Res Function(_$_ReviewDto) then) =
      __$$_ReviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String userOpinion,
      double userRate,
      String userId,
      String username,
      String eventId,
      String eventName,
      String ticketId,
      @TimestampJsonConverter() DateTime dateAdded});
}

/// @nodoc
class __$$_ReviewDtoCopyWithImpl<$Res> extends _$ReviewDtoCopyWithImpl<$Res>
    implements _$$_ReviewDtoCopyWith<$Res> {
  __$$_ReviewDtoCopyWithImpl(
      _$_ReviewDto _value, $Res Function(_$_ReviewDto) _then)
      : super(_value, (v) => _then(v as _$_ReviewDto));

  @override
  _$_ReviewDto get _value => super._value as _$_ReviewDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? userOpinion = freezed,
    Object? userRate = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? eventId = freezed,
    Object? eventName = freezed,
    Object? ticketId = freezed,
    Object? dateAdded = freezed,
  }) {
    return _then(_$_ReviewDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: eventName == freezed
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: ticketId == freezed
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      @TimestampJsonConverter() required this.dateAdded})
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
  String toString() {
    return 'ReviewDto(id: $id, userOpinion: $userOpinion, userRate: $userRate, userId: $userId, username: $username, eventId: $eventId, eventName: $eventName, ticketId: $ticketId, dateAdded: $dateAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.userOpinion, userOpinion) &&
            const DeepCollectionEquality().equals(other.userRate, userRate) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality().equals(other.eventName, eventName) &&
            const DeepCollectionEquality().equals(other.ticketId, ticketId) &&
            const DeepCollectionEquality().equals(other.dateAdded, dateAdded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userOpinion),
      const DeepCollectionEquality().hash(userRate),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(eventId),
      const DeepCollectionEquality().hash(eventName),
      const DeepCollectionEquality().hash(ticketId),
      const DeepCollectionEquality().hash(dateAdded));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewDtoCopyWith<_$_ReviewDto> get copyWith =>
      __$$_ReviewDtoCopyWithImpl<_$_ReviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewDtoToJson(this);
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
          @TimestampJsonConverter() required final DateTime dateAdded}) =
      _$_ReviewDto;
  const _ReviewDto._() : super._();

  factory _ReviewDto.fromJson(Map<String, dynamic> json) =
      _$_ReviewDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get userOpinion => throw _privateConstructorUsedError;
  @override
  double get userRate => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get eventId => throw _privateConstructorUsedError;
  @override
  String get eventName => throw _privateConstructorUsedError;
  @override
  String get ticketId => throw _privateConstructorUsedError;
  @override
  @TimestampJsonConverter()
  DateTime get dateAdded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewDtoCopyWith<_$_ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

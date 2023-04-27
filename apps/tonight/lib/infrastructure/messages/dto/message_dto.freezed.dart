// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) {
  return _MessageDto.fromJson(json);
}

/// @nodoc
mixin _$MessageDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get userPictureUrl => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  dynamic get isJoinedInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDtoCopyWith<MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res, MessageDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String roomId,
      String userId,
      String username,
      String text,
      String? userPictureUrl,
      @FirebaseTimestampJsonConverter() DateTime createdAt,
      dynamic isJoinedInfo});
}

/// @nodoc
class _$MessageDtoCopyWithImpl<$Res, $Val extends MessageDto>
    implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomId = null,
    Object? userId = null,
    Object? username = null,
    Object? text = null,
    Object? userPictureUrl = freezed,
    Object? createdAt = null,
    Object? isJoinedInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      userPictureUrl: freezed == userPictureUrl
          ? _value.userPictureUrl
          : userPictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isJoinedInfo: freezed == isJoinedInfo
          ? _value.isJoinedInfo
          : isJoinedInfo // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageDtoCopyWith<$Res>
    implements $MessageDtoCopyWith<$Res> {
  factory _$$_MessageDtoCopyWith(
          _$_MessageDto value, $Res Function(_$_MessageDto) then) =
      __$$_MessageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String roomId,
      String userId,
      String username,
      String text,
      String? userPictureUrl,
      @FirebaseTimestampJsonConverter() DateTime createdAt,
      dynamic isJoinedInfo});
}

/// @nodoc
class __$$_MessageDtoCopyWithImpl<$Res>
    extends _$MessageDtoCopyWithImpl<$Res, _$_MessageDto>
    implements _$$_MessageDtoCopyWith<$Res> {
  __$$_MessageDtoCopyWithImpl(
      _$_MessageDto _value, $Res Function(_$_MessageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomId = null,
    Object? userId = null,
    Object? username = null,
    Object? text = null,
    Object? userPictureUrl = freezed,
    Object? createdAt = null,
    Object? isJoinedInfo = freezed,
  }) {
    return _then(_$_MessageDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      userPictureUrl: freezed == userPictureUrl
          ? _value.userPictureUrl
          : userPictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isJoinedInfo:
          freezed == isJoinedInfo ? _value.isJoinedInfo! : isJoinedInfo,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_MessageDto extends _MessageDto {
  const _$_MessageDto(
      {@JsonKey(ignore: true) this.id,
      required this.roomId,
      required this.userId,
      required this.username,
      required this.text,
      this.userPictureUrl,
      @FirebaseTimestampJsonConverter() required this.createdAt,
      this.isJoinedInfo = false})
      : super._();

  factory _$_MessageDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String roomId;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String text;
  @override
  final String? userPictureUrl;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime createdAt;
  @override
  @JsonKey()
  final dynamic isJoinedInfo;

  @override
  String toString() {
    return 'MessageDto(id: $id, roomId: $roomId, userId: $userId, username: $username, text: $text, userPictureUrl: $userPictureUrl, createdAt: $createdAt, isJoinedInfo: $isJoinedInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.userPictureUrl, userPictureUrl) ||
                other.userPictureUrl == userPictureUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other.isJoinedInfo, isJoinedInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roomId,
      userId,
      username,
      text,
      userPictureUrl,
      createdAt,
      const DeepCollectionEquality().hash(isJoinedInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageDtoCopyWith<_$_MessageDto> get copyWith =>
      __$$_MessageDtoCopyWithImpl<_$_MessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageDtoToJson(
      this,
    );
  }
}

abstract class _MessageDto extends MessageDto {
  const factory _MessageDto(
      {@JsonKey(ignore: true) final String? id,
      required final String roomId,
      required final String userId,
      required final String username,
      required final String text,
      final String? userPictureUrl,
      @FirebaseTimestampJsonConverter() required final DateTime createdAt,
      final dynamic isJoinedInfo}) = _$_MessageDto;
  const _MessageDto._() : super._();

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$_MessageDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get roomId;
  @override
  String get userId;
  @override
  String get username;
  @override
  String get text;
  @override
  String? get userPictureUrl;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt;
  @override
  dynamic get isJoinedInfo;
  @override
  @JsonKey(ignore: true)
  _$$_MessageDtoCopyWith<_$_MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

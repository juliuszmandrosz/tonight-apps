// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomDto _$RoomDtoFromJson(Map<String, dynamic> json) {
  return _RoomDto.fromJson(json);
}

/// @nodoc
mixin _$RoomDto {
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get roomName => throw _privateConstructorUsedError;
  String get roomPhotoUrl => throw _privateConstructorUsedError;
  String? get lastMessageId => throw _privateConstructorUsedError;
  String? get lastMessageText => throw _privateConstructorUsedError;
  String? get lastMessageUsername => throw _privateConstructorUsedError;
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get lastMessageCreatedAt => throw _privateConstructorUsedError;
  bool get isLastMessageLeftInfo => throw _privateConstructorUsedError;
  bool get isLastMessageJoinedInfo => throw _privateConstructorUsedError;
  List<String> get participantIds => throw _privateConstructorUsedError;

  /// Key is participantId, value is if participant read last message
  Map<String, bool> get participantReadStatuses =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomDtoCopyWith<RoomDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDtoCopyWith<$Res> {
  factory $RoomDtoCopyWith(RoomDto value, $Res Function(RoomDto) then) =
      _$RoomDtoCopyWithImpl<$Res, RoomDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      String roomName,
      String roomPhotoUrl,
      String? lastMessageId,
      String? lastMessageText,
      String? lastMessageUsername,
      @FirebaseNullableTimestampJsonConverter() DateTime? lastMessageCreatedAt,
      bool isLastMessageLeftInfo,
      bool isLastMessageJoinedInfo,
      List<String> participantIds,
      Map<String, bool> participantReadStatuses});
}

/// @nodoc
class _$RoomDtoCopyWithImpl<$Res, $Val extends RoomDto>
    implements $RoomDtoCopyWith<$Res> {
  _$RoomDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomName = null,
    Object? roomPhotoUrl = null,
    Object? lastMessageId = freezed,
    Object? lastMessageText = freezed,
    Object? lastMessageUsername = freezed,
    Object? lastMessageCreatedAt = freezed,
    Object? isLastMessageLeftInfo = null,
    Object? isLastMessageJoinedInfo = null,
    Object? participantIds = null,
    Object? participantReadStatuses = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      roomPhotoUrl: null == roomPhotoUrl
          ? _value.roomPhotoUrl
          : roomPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageId: freezed == lastMessageId
          ? _value.lastMessageId
          : lastMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageText: freezed == lastMessageText
          ? _value.lastMessageText
          : lastMessageText // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageUsername: freezed == lastMessageUsername
          ? _value.lastMessageUsername
          : lastMessageUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageCreatedAt: freezed == lastMessageCreatedAt
          ? _value.lastMessageCreatedAt
          : lastMessageCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLastMessageLeftInfo: null == isLastMessageLeftInfo
          ? _value.isLastMessageLeftInfo
          : isLastMessageLeftInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastMessageJoinedInfo: null == isLastMessageJoinedInfo
          ? _value.isLastMessageJoinedInfo
          : isLastMessageJoinedInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      participantIds: null == participantIds
          ? _value.participantIds
          : participantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      participantReadStatuses: null == participantReadStatuses
          ? _value.participantReadStatuses
          : participantReadStatuses // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomDtoCopyWith<$Res> implements $RoomDtoCopyWith<$Res> {
  factory _$$_RoomDtoCopyWith(
          _$_RoomDto value, $Res Function(_$_RoomDto) then) =
      __$$_RoomDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      String roomName,
      String roomPhotoUrl,
      String? lastMessageId,
      String? lastMessageText,
      String? lastMessageUsername,
      @FirebaseNullableTimestampJsonConverter() DateTime? lastMessageCreatedAt,
      bool isLastMessageLeftInfo,
      bool isLastMessageJoinedInfo,
      List<String> participantIds,
      Map<String, bool> participantReadStatuses});
}

/// @nodoc
class __$$_RoomDtoCopyWithImpl<$Res>
    extends _$RoomDtoCopyWithImpl<$Res, _$_RoomDto>
    implements _$$_RoomDtoCopyWith<$Res> {
  __$$_RoomDtoCopyWithImpl(_$_RoomDto _value, $Res Function(_$_RoomDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomName = null,
    Object? roomPhotoUrl = null,
    Object? lastMessageId = freezed,
    Object? lastMessageText = freezed,
    Object? lastMessageUsername = freezed,
    Object? lastMessageCreatedAt = freezed,
    Object? isLastMessageLeftInfo = null,
    Object? isLastMessageJoinedInfo = null,
    Object? participantIds = null,
    Object? participantReadStatuses = null,
  }) {
    return _then(_$_RoomDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      roomPhotoUrl: null == roomPhotoUrl
          ? _value.roomPhotoUrl
          : roomPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageId: freezed == lastMessageId
          ? _value.lastMessageId
          : lastMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageText: freezed == lastMessageText
          ? _value.lastMessageText
          : lastMessageText // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageUsername: freezed == lastMessageUsername
          ? _value.lastMessageUsername
          : lastMessageUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageCreatedAt: freezed == lastMessageCreatedAt
          ? _value.lastMessageCreatedAt
          : lastMessageCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLastMessageLeftInfo: null == isLastMessageLeftInfo
          ? _value.isLastMessageLeftInfo
          : isLastMessageLeftInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastMessageJoinedInfo: null == isLastMessageJoinedInfo
          ? _value.isLastMessageJoinedInfo
          : isLastMessageJoinedInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      participantIds: null == participantIds
          ? _value._participantIds
          : participantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      participantReadStatuses: null == participantReadStatuses
          ? _value._participantReadStatuses
          : participantReadStatuses // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_RoomDto extends _RoomDto {
  const _$_RoomDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.id,
      required this.roomName,
      required this.roomPhotoUrl,
      this.lastMessageId,
      this.lastMessageText,
      this.lastMessageUsername,
      @FirebaseNullableTimestampJsonConverter() this.lastMessageCreatedAt,
      this.isLastMessageLeftInfo = false,
      this.isLastMessageJoinedInfo = false,
      final List<String> participantIds = const [],
      final Map<String, bool> participantReadStatuses = const {}})
      : _participantIds = participantIds,
        _participantReadStatuses = participantReadStatuses,
        super._();

  factory _$_RoomDto.fromJson(Map<String, dynamic> json) =>
      _$$_RoomDtoFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? id;
  @override
  final String roomName;
  @override
  final String roomPhotoUrl;
  @override
  final String? lastMessageId;
  @override
  final String? lastMessageText;
  @override
  final String? lastMessageUsername;
  @override
  @FirebaseNullableTimestampJsonConverter()
  final DateTime? lastMessageCreatedAt;
  @override
  @JsonKey()
  final bool isLastMessageLeftInfo;
  @override
  @JsonKey()
  final bool isLastMessageJoinedInfo;
  final List<String> _participantIds;
  @override
  @JsonKey()
  List<String> get participantIds {
    if (_participantIds is EqualUnmodifiableListView) return _participantIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantIds);
  }

  /// Key is participantId, value is if participant read last message
  final Map<String, bool> _participantReadStatuses;

  /// Key is participantId, value is if participant read last message
  @override
  @JsonKey()
  Map<String, bool> get participantReadStatuses {
    if (_participantReadStatuses is EqualUnmodifiableMapView)
      return _participantReadStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_participantReadStatuses);
  }

  @override
  String toString() {
    return 'RoomDto(id: $id, roomName: $roomName, roomPhotoUrl: $roomPhotoUrl, lastMessageId: $lastMessageId, lastMessageText: $lastMessageText, lastMessageUsername: $lastMessageUsername, lastMessageCreatedAt: $lastMessageCreatedAt, isLastMessageLeftInfo: $isLastMessageLeftInfo, isLastMessageJoinedInfo: $isLastMessageJoinedInfo, participantIds: $participantIds, participantReadStatuses: $participantReadStatuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.roomPhotoUrl, roomPhotoUrl) ||
                other.roomPhotoUrl == roomPhotoUrl) &&
            (identical(other.lastMessageId, lastMessageId) ||
                other.lastMessageId == lastMessageId) &&
            (identical(other.lastMessageText, lastMessageText) ||
                other.lastMessageText == lastMessageText) &&
            (identical(other.lastMessageUsername, lastMessageUsername) ||
                other.lastMessageUsername == lastMessageUsername) &&
            (identical(other.lastMessageCreatedAt, lastMessageCreatedAt) ||
                other.lastMessageCreatedAt == lastMessageCreatedAt) &&
            (identical(other.isLastMessageLeftInfo, isLastMessageLeftInfo) ||
                other.isLastMessageLeftInfo == isLastMessageLeftInfo) &&
            (identical(
                    other.isLastMessageJoinedInfo, isLastMessageJoinedInfo) ||
                other.isLastMessageJoinedInfo == isLastMessageJoinedInfo) &&
            const DeepCollectionEquality()
                .equals(other._participantIds, _participantIds) &&
            const DeepCollectionEquality().equals(
                other._participantReadStatuses, _participantReadStatuses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roomName,
      roomPhotoUrl,
      lastMessageId,
      lastMessageText,
      lastMessageUsername,
      lastMessageCreatedAt,
      isLastMessageLeftInfo,
      isLastMessageJoinedInfo,
      const DeepCollectionEquality().hash(_participantIds),
      const DeepCollectionEquality().hash(_participantReadStatuses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomDtoCopyWith<_$_RoomDto> get copyWith =>
      __$$_RoomDtoCopyWithImpl<_$_RoomDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomDtoToJson(
      this,
    );
  }
}

abstract class _RoomDto extends RoomDto {
  const factory _RoomDto(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          final String? id,
      required final String roomName,
      required final String roomPhotoUrl,
      final String? lastMessageId,
      final String? lastMessageText,
      final String? lastMessageUsername,
      @FirebaseNullableTimestampJsonConverter()
          final DateTime? lastMessageCreatedAt,
      final bool isLastMessageLeftInfo,
      final bool isLastMessageJoinedInfo,
      final List<String> participantIds,
      final Map<String, bool> participantReadStatuses}) = _$_RoomDto;
  const _RoomDto._() : super._();

  factory _RoomDto.fromJson(Map<String, dynamic> json) = _$_RoomDto.fromJson;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id;
  @override
  String get roomName;
  @override
  String get roomPhotoUrl;
  @override
  String? get lastMessageId;
  @override
  String? get lastMessageText;
  @override
  String? get lastMessageUsername;
  @override
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get lastMessageCreatedAt;
  @override
  bool get isLastMessageLeftInfo;
  @override
  bool get isLastMessageJoinedInfo;
  @override
  List<String> get participantIds;
  @override

  /// Key is participantId, value is if participant read last message
  Map<String, bool> get participantReadStatuses;
  @override
  @JsonKey(ignore: true)
  _$$_RoomDtoCopyWith<_$_RoomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

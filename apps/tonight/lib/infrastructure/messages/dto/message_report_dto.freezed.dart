// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_report_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageReportDto _$MessageReportDtoFromJson(Map<String, dynamic> json) {
  return _MessageReportDto.fromJson(json);
}

/// @nodoc
mixin _$MessageReportDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  String get reporterId => throw _privateConstructorUsedError;
  String get messageContent => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageReportDtoCopyWith<MessageReportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageReportDtoCopyWith<$Res> {
  factory $MessageReportDtoCopyWith(
          MessageReportDto value, $Res Function(MessageReportDto) then) =
      _$MessageReportDtoCopyWithImpl<$Res, MessageReportDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String messageId,
      String roomId,
      String reporterId,
      String messageContent,
      @FirebaseTimestampJsonConverter() DateTime createdAt});
}

/// @nodoc
class _$MessageReportDtoCopyWithImpl<$Res, $Val extends MessageReportDto>
    implements $MessageReportDtoCopyWith<$Res> {
  _$MessageReportDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? messageId = null,
    Object? roomId = null,
    Object? reporterId = null,
    Object? messageContent = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      reporterId: null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      messageContent: null == messageContent
          ? _value.messageContent
          : messageContent // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageReportDtoCopyWith<$Res>
    implements $MessageReportDtoCopyWith<$Res> {
  factory _$$_MessageReportDtoCopyWith(
          _$_MessageReportDto value, $Res Function(_$_MessageReportDto) then) =
      __$$_MessageReportDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String messageId,
      String roomId,
      String reporterId,
      String messageContent,
      @FirebaseTimestampJsonConverter() DateTime createdAt});
}

/// @nodoc
class __$$_MessageReportDtoCopyWithImpl<$Res>
    extends _$MessageReportDtoCopyWithImpl<$Res, _$_MessageReportDto>
    implements _$$_MessageReportDtoCopyWith<$Res> {
  __$$_MessageReportDtoCopyWithImpl(
      _$_MessageReportDto _value, $Res Function(_$_MessageReportDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? messageId = null,
    Object? roomId = null,
    Object? reporterId = null,
    Object? messageContent = null,
    Object? createdAt = null,
  }) {
    return _then(_$_MessageReportDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      reporterId: null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      messageContent: null == messageContent
          ? _value.messageContent
          : messageContent // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageReportDto extends _MessageReportDto {
  const _$_MessageReportDto(
      {@JsonKey(ignore: true) this.id,
      required this.messageId,
      required this.roomId,
      required this.reporterId,
      required this.messageContent,
      @FirebaseTimestampJsonConverter() required this.createdAt})
      : super._();

  factory _$_MessageReportDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageReportDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String messageId;
  @override
  final String roomId;
  @override
  final String reporterId;
  @override
  final String messageContent;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'MessageReportDto(id: $id, messageId: $messageId, roomId: $roomId, reporterId: $reporterId, messageContent: $messageContent, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageReportDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.reporterId, reporterId) ||
                other.reporterId == reporterId) &&
            (identical(other.messageContent, messageContent) ||
                other.messageContent == messageContent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, messageId, roomId,
      reporterId, messageContent, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageReportDtoCopyWith<_$_MessageReportDto> get copyWith =>
      __$$_MessageReportDtoCopyWithImpl<_$_MessageReportDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageReportDtoToJson(
      this,
    );
  }
}

abstract class _MessageReportDto extends MessageReportDto {
  const factory _MessageReportDto(
      {@JsonKey(ignore: true) final String? id,
      required final String messageId,
      required final String roomId,
      required final String reporterId,
      required final String messageContent,
      @FirebaseTimestampJsonConverter()
      required final DateTime createdAt}) = _$_MessageReportDto;
  const _MessageReportDto._() : super._();

  factory _MessageReportDto.fromJson(Map<String, dynamic> json) =
      _$_MessageReportDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get messageId;
  @override
  String get roomId;
  @override
  String get reporterId;
  @override
  String get messageContent;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_MessageReportDtoCopyWith<_$_MessageReportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

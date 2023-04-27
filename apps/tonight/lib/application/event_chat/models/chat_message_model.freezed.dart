// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatMessage {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isCurrentUser => throw _privateConstructorUsedError;
  ChatUser get user => throw _privateConstructorUsedError;
  bool get isLastMessageByUser => throw _privateConstructorUsedError;
  bool get isFirstMessageByUser => throw _privateConstructorUsedError;
  bool get isSameUserAsPrevious => throw _privateConstructorUsedError;
  bool get isFirstMessageFromDay => throw _privateConstructorUsedError;
  bool get isSending => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isJoinedInfo => throw _privateConstructorUsedError;
  bool get isLeftInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {String id,
      String text,
      DateTime createdAt,
      bool isCurrentUser,
      ChatUser user,
      bool isLastMessageByUser,
      bool isFirstMessageByUser,
      bool isSameUserAsPrevious,
      bool isFirstMessageFromDay,
      bool isSending,
      bool hasError,
      bool isJoinedInfo,
      bool isLeftInfo});

  $ChatUserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? createdAt = null,
    Object? isCurrentUser = null,
    Object? user = null,
    Object? isLastMessageByUser = null,
    Object? isFirstMessageByUser = null,
    Object? isSameUserAsPrevious = null,
    Object? isFirstMessageFromDay = null,
    Object? isSending = null,
    Object? hasError = null,
    Object? isJoinedInfo = null,
    Object? isLeftInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ChatUser,
      isLastMessageByUser: null == isLastMessageByUser
          ? _value.isLastMessageByUser
          : isLastMessageByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstMessageByUser: null == isFirstMessageByUser
          ? _value.isFirstMessageByUser
          : isFirstMessageByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isSameUserAsPrevious: null == isSameUserAsPrevious
          ? _value.isSameUserAsPrevious
          : isSameUserAsPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstMessageFromDay: null == isFirstMessageFromDay
          ? _value.isFirstMessageFromDay
          : isFirstMessageFromDay // ignore: cast_nullable_to_non_nullable
              as bool,
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isJoinedInfo: null == isJoinedInfo
          ? _value.isJoinedInfo
          : isJoinedInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      isLeftInfo: null == isLeftInfo
          ? _value.isLeftInfo
          : isLeftInfo // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatUserCopyWith<$Res> get user {
    return $ChatUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatMessageCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$_ChatMessageCopyWith(
          _$_ChatMessage value, $Res Function(_$_ChatMessage) then) =
      __$$_ChatMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      DateTime createdAt,
      bool isCurrentUser,
      ChatUser user,
      bool isLastMessageByUser,
      bool isFirstMessageByUser,
      bool isSameUserAsPrevious,
      bool isFirstMessageFromDay,
      bool isSending,
      bool hasError,
      bool isJoinedInfo,
      bool isLeftInfo});

  @override
  $ChatUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ChatMessageCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$_ChatMessage>
    implements _$$_ChatMessageCopyWith<$Res> {
  __$$_ChatMessageCopyWithImpl(
      _$_ChatMessage _value, $Res Function(_$_ChatMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? createdAt = null,
    Object? isCurrentUser = null,
    Object? user = null,
    Object? isLastMessageByUser = null,
    Object? isFirstMessageByUser = null,
    Object? isSameUserAsPrevious = null,
    Object? isFirstMessageFromDay = null,
    Object? isSending = null,
    Object? hasError = null,
    Object? isJoinedInfo = null,
    Object? isLeftInfo = null,
  }) {
    return _then(_$_ChatMessage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ChatUser,
      isLastMessageByUser: null == isLastMessageByUser
          ? _value.isLastMessageByUser
          : isLastMessageByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstMessageByUser: null == isFirstMessageByUser
          ? _value.isFirstMessageByUser
          : isFirstMessageByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isSameUserAsPrevious: null == isSameUserAsPrevious
          ? _value.isSameUserAsPrevious
          : isSameUserAsPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstMessageFromDay: null == isFirstMessageFromDay
          ? _value.isFirstMessageFromDay
          : isFirstMessageFromDay // ignore: cast_nullable_to_non_nullable
              as bool,
      isSending: null == isSending
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isJoinedInfo: null == isJoinedInfo
          ? _value.isJoinedInfo
          : isJoinedInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      isLeftInfo: null == isLeftInfo
          ? _value.isLeftInfo
          : isLeftInfo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChatMessage extends _ChatMessage {
  const _$_ChatMessage(
      {required this.id,
      required this.text,
      required this.createdAt,
      required this.isCurrentUser,
      required this.user,
      this.isLastMessageByUser = false,
      this.isFirstMessageByUser = false,
      this.isSameUserAsPrevious = false,
      this.isFirstMessageFromDay = false,
      this.isSending = false,
      this.hasError = false,
      this.isJoinedInfo = false,
      this.isLeftInfo = false})
      : super._();

  @override
  final String id;
  @override
  final String text;
  @override
  final DateTime createdAt;
  @override
  final bool isCurrentUser;
  @override
  final ChatUser user;
  @override
  @JsonKey()
  final bool isLastMessageByUser;
  @override
  @JsonKey()
  final bool isFirstMessageByUser;
  @override
  @JsonKey()
  final bool isSameUserAsPrevious;
  @override
  @JsonKey()
  final bool isFirstMessageFromDay;
  @override
  @JsonKey()
  final bool isSending;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final bool isJoinedInfo;
  @override
  @JsonKey()
  final bool isLeftInfo;

  @override
  String toString() {
    return 'ChatMessage(id: $id, text: $text, createdAt: $createdAt, isCurrentUser: $isCurrentUser, user: $user, isLastMessageByUser: $isLastMessageByUser, isFirstMessageByUser: $isFirstMessageByUser, isSameUserAsPrevious: $isSameUserAsPrevious, isFirstMessageFromDay: $isFirstMessageFromDay, isSending: $isSending, hasError: $hasError, isJoinedInfo: $isJoinedInfo, isLeftInfo: $isLeftInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isCurrentUser, isCurrentUser) ||
                other.isCurrentUser == isCurrentUser) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLastMessageByUser, isLastMessageByUser) ||
                other.isLastMessageByUser == isLastMessageByUser) &&
            (identical(other.isFirstMessageByUser, isFirstMessageByUser) ||
                other.isFirstMessageByUser == isFirstMessageByUser) &&
            (identical(other.isSameUserAsPrevious, isSameUserAsPrevious) ||
                other.isSameUserAsPrevious == isSameUserAsPrevious) &&
            (identical(other.isFirstMessageFromDay, isFirstMessageFromDay) ||
                other.isFirstMessageFromDay == isFirstMessageFromDay) &&
            (identical(other.isSending, isSending) ||
                other.isSending == isSending) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isJoinedInfo, isJoinedInfo) ||
                other.isJoinedInfo == isJoinedInfo) &&
            (identical(other.isLeftInfo, isLeftInfo) ||
                other.isLeftInfo == isLeftInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      text,
      createdAt,
      isCurrentUser,
      user,
      isLastMessageByUser,
      isFirstMessageByUser,
      isSameUserAsPrevious,
      isFirstMessageFromDay,
      isSending,
      hasError,
      isJoinedInfo,
      isLeftInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatMessageCopyWith<_$_ChatMessage> get copyWith =>
      __$$_ChatMessageCopyWithImpl<_$_ChatMessage>(this, _$identity);
}

abstract class _ChatMessage extends ChatMessage {
  const factory _ChatMessage(
      {required final String id,
      required final String text,
      required final DateTime createdAt,
      required final bool isCurrentUser,
      required final ChatUser user,
      final bool isLastMessageByUser,
      final bool isFirstMessageByUser,
      final bool isSameUserAsPrevious,
      final bool isFirstMessageFromDay,
      final bool isSending,
      final bool hasError,
      final bool isJoinedInfo,
      final bool isLeftInfo}) = _$_ChatMessage;
  const _ChatMessage._() : super._();

  @override
  String get id;
  @override
  String get text;
  @override
  DateTime get createdAt;
  @override
  bool get isCurrentUser;
  @override
  ChatUser get user;
  @override
  bool get isLastMessageByUser;
  @override
  bool get isFirstMessageByUser;
  @override
  bool get isSameUserAsPrevious;
  @override
  bool get isFirstMessageFromDay;
  @override
  bool get isSending;
  @override
  bool get hasError;
  @override
  bool get isJoinedInfo;
  @override
  bool get isLeftInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ChatMessageCopyWith<_$_ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

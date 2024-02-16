// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function(bool isComment) messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message, bool isComment)
        messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function(bool isComment)? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message, bool isComment)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function(bool isComment)? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message, bool isComment)? messageResent,
    TResult Function(ChatMessage message)? messageReported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitialized value) chatInitialized,
    required TResult Function(_NextPageMessagesFetched value)
        nextPageMessagesFetched,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_InputMessageChanged value) inputMessageChanged,
    required TResult Function(_MessageResent value) messageResent,
    required TResult Function(_MessageReported value) messageReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitialized value)? chatInitialized,
    TResult? Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_InputMessageChanged value)? inputMessageChanged,
    TResult? Function(_MessageResent value)? messageResent,
    TResult? Function(_MessageReported value)? messageReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitialized value)? chatInitialized,
    TResult Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_InputMessageChanged value)? inputMessageChanged,
    TResult Function(_MessageResent value)? messageResent,
    TResult Function(_MessageReported value)? messageReported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventChatEventCopyWith<$Res> {
  factory $EventChatEventCopyWith(
          EventChatEvent value, $Res Function(EventChatEvent) then) =
      _$EventChatEventCopyWithImpl<$Res, EventChatEvent>;
}

/// @nodoc
class _$EventChatEventCopyWithImpl<$Res, $Val extends EventChatEvent>
    implements $EventChatEventCopyWith<$Res> {
  _$EventChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatInitializedImplCopyWith<$Res> {
  factory _$$ChatInitializedImplCopyWith(_$ChatInitializedImpl value,
          $Res Function(_$ChatInitializedImpl) then) =
      __$$ChatInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId, Participant participant});
}

/// @nodoc
class __$$ChatInitializedImplCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$ChatInitializedImpl>
    implements _$$ChatInitializedImplCopyWith<$Res> {
  __$$ChatInitializedImplCopyWithImpl(
      _$ChatInitializedImpl _value, $Res Function(_$ChatInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? participant = null,
  }) {
    return _then(_$ChatInitializedImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      participant: null == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as Participant,
    ));
  }
}

/// @nodoc

class _$ChatInitializedImpl implements _ChatInitialized {
  const _$ChatInitializedImpl(
      {required this.roomId, required this.participant});

  @override
  final String roomId;
  @override
  final Participant participant;

  @override
  String toString() {
    return 'EventChatEvent.chatInitialized(roomId: $roomId, participant: $participant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatInitializedImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.participant, participant) ||
                other.participant == participant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, participant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatInitializedImplCopyWith<_$ChatInitializedImpl> get copyWith =>
      __$$ChatInitializedImplCopyWithImpl<_$ChatInitializedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function(bool isComment) messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message, bool isComment)
        messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return chatInitialized(roomId, participant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function(bool isComment)? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message, bool isComment)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return chatInitialized?.call(roomId, participant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function(bool isComment)? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message, bool isComment)? messageResent,
    TResult Function(ChatMessage message)? messageReported,
    required TResult orElse(),
  }) {
    if (chatInitialized != null) {
      return chatInitialized(roomId, participant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitialized value) chatInitialized,
    required TResult Function(_NextPageMessagesFetched value)
        nextPageMessagesFetched,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_InputMessageChanged value) inputMessageChanged,
    required TResult Function(_MessageResent value) messageResent,
    required TResult Function(_MessageReported value) messageReported,
  }) {
    return chatInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitialized value)? chatInitialized,
    TResult? Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_InputMessageChanged value)? inputMessageChanged,
    TResult? Function(_MessageResent value)? messageResent,
    TResult? Function(_MessageReported value)? messageReported,
  }) {
    return chatInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitialized value)? chatInitialized,
    TResult Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_InputMessageChanged value)? inputMessageChanged,
    TResult Function(_MessageResent value)? messageResent,
    TResult Function(_MessageReported value)? messageReported,
    required TResult orElse(),
  }) {
    if (chatInitialized != null) {
      return chatInitialized(this);
    }
    return orElse();
  }
}

abstract class _ChatInitialized implements EventChatEvent {
  const factory _ChatInitialized(
      {required final String roomId,
      required final Participant participant}) = _$ChatInitializedImpl;

  String get roomId;
  Participant get participant;
  @JsonKey(ignore: true)
  _$$ChatInitializedImplCopyWith<_$ChatInitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageMessagesFetchedImplCopyWith<$Res> {
  factory _$$NextPageMessagesFetchedImplCopyWith(
          _$NextPageMessagesFetchedImpl value,
          $Res Function(_$NextPageMessagesFetchedImpl) then) =
      __$$NextPageMessagesFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageMessagesFetchedImplCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$NextPageMessagesFetchedImpl>
    implements _$$NextPageMessagesFetchedImplCopyWith<$Res> {
  __$$NextPageMessagesFetchedImplCopyWithImpl(
      _$NextPageMessagesFetchedImpl _value,
      $Res Function(_$NextPageMessagesFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageMessagesFetchedImpl implements _NextPageMessagesFetched {
  const _$NextPageMessagesFetchedImpl();

  @override
  String toString() {
    return 'EventChatEvent.nextPageMessagesFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPageMessagesFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function(bool isComment) messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message, bool isComment)
        messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return nextPageMessagesFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function(bool isComment)? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message, bool isComment)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return nextPageMessagesFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function(bool isComment)? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message, bool isComment)? messageResent,
    TResult Function(ChatMessage message)? messageReported,
    required TResult orElse(),
  }) {
    if (nextPageMessagesFetched != null) {
      return nextPageMessagesFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitialized value) chatInitialized,
    required TResult Function(_NextPageMessagesFetched value)
        nextPageMessagesFetched,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_InputMessageChanged value) inputMessageChanged,
    required TResult Function(_MessageResent value) messageResent,
    required TResult Function(_MessageReported value) messageReported,
  }) {
    return nextPageMessagesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitialized value)? chatInitialized,
    TResult? Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_InputMessageChanged value)? inputMessageChanged,
    TResult? Function(_MessageResent value)? messageResent,
    TResult? Function(_MessageReported value)? messageReported,
  }) {
    return nextPageMessagesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitialized value)? chatInitialized,
    TResult Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_InputMessageChanged value)? inputMessageChanged,
    TResult Function(_MessageResent value)? messageResent,
    TResult Function(_MessageReported value)? messageReported,
    required TResult orElse(),
  }) {
    if (nextPageMessagesFetched != null) {
      return nextPageMessagesFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageMessagesFetched implements EventChatEvent {
  const factory _NextPageMessagesFetched() = _$NextPageMessagesFetchedImpl;
}

/// @nodoc
abstract class _$$MessageSentImplCopyWith<$Res> {
  factory _$$MessageSentImplCopyWith(
          _$MessageSentImpl value, $Res Function(_$MessageSentImpl) then) =
      __$$MessageSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isComment});
}

/// @nodoc
class __$$MessageSentImplCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$MessageSentImpl>
    implements _$$MessageSentImplCopyWith<$Res> {
  __$$MessageSentImplCopyWithImpl(
      _$MessageSentImpl _value, $Res Function(_$MessageSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isComment = null,
  }) {
    return _then(_$MessageSentImpl(
      null == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MessageSentImpl implements _MessageSent {
  const _$MessageSentImpl(this.isComment);

  @override
  final bool isComment;

  @override
  String toString() {
    return 'EventChatEvent.messageSent(isComment: $isComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSentImpl &&
            (identical(other.isComment, isComment) ||
                other.isComment == isComment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      __$$MessageSentImplCopyWithImpl<_$MessageSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function(bool isComment) messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message, bool isComment)
        messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return messageSent(isComment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function(bool isComment)? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message, bool isComment)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return messageSent?.call(isComment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function(bool isComment)? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message, bool isComment)? messageResent,
    TResult Function(ChatMessage message)? messageReported,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(isComment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitialized value) chatInitialized,
    required TResult Function(_NextPageMessagesFetched value)
        nextPageMessagesFetched,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_InputMessageChanged value) inputMessageChanged,
    required TResult Function(_MessageResent value) messageResent,
    required TResult Function(_MessageReported value) messageReported,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitialized value)? chatInitialized,
    TResult? Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_InputMessageChanged value)? inputMessageChanged,
    TResult? Function(_MessageResent value)? messageResent,
    TResult? Function(_MessageReported value)? messageReported,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitialized value)? chatInitialized,
    TResult Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_InputMessageChanged value)? inputMessageChanged,
    TResult Function(_MessageResent value)? messageResent,
    TResult Function(_MessageReported value)? messageReported,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class _MessageSent implements EventChatEvent {
  const factory _MessageSent(final bool isComment) = _$MessageSentImpl;

  bool get isComment;
  @JsonKey(ignore: true)
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputMessageChangedImplCopyWith<$Res> {
  factory _$$InputMessageChangedImplCopyWith(_$InputMessageChangedImpl value,
          $Res Function(_$InputMessageChangedImpl) then) =
      __$$InputMessageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InputMessageChangedImplCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$InputMessageChangedImpl>
    implements _$$InputMessageChangedImplCopyWith<$Res> {
  __$$InputMessageChangedImplCopyWithImpl(_$InputMessageChangedImpl _value,
      $Res Function(_$InputMessageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InputMessageChangedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputMessageChangedImpl implements _InputMessageChanged {
  const _$InputMessageChangedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EventChatEvent.inputMessageChanged(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputMessageChangedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputMessageChangedImplCopyWith<_$InputMessageChangedImpl> get copyWith =>
      __$$InputMessageChangedImplCopyWithImpl<_$InputMessageChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function(bool isComment) messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message, bool isComment)
        messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return inputMessageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function(bool isComment)? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message, bool isComment)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return inputMessageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function(bool isComment)? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message, bool isComment)? messageResent,
    TResult Function(ChatMessage message)? messageReported,
    required TResult orElse(),
  }) {
    if (inputMessageChanged != null) {
      return inputMessageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitialized value) chatInitialized,
    required TResult Function(_NextPageMessagesFetched value)
        nextPageMessagesFetched,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_InputMessageChanged value) inputMessageChanged,
    required TResult Function(_MessageResent value) messageResent,
    required TResult Function(_MessageReported value) messageReported,
  }) {
    return inputMessageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitialized value)? chatInitialized,
    TResult? Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_InputMessageChanged value)? inputMessageChanged,
    TResult? Function(_MessageResent value)? messageResent,
    TResult? Function(_MessageReported value)? messageReported,
  }) {
    return inputMessageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitialized value)? chatInitialized,
    TResult Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_InputMessageChanged value)? inputMessageChanged,
    TResult Function(_MessageResent value)? messageResent,
    TResult Function(_MessageReported value)? messageReported,
    required TResult orElse(),
  }) {
    if (inputMessageChanged != null) {
      return inputMessageChanged(this);
    }
    return orElse();
  }
}

abstract class _InputMessageChanged implements EventChatEvent {
  const factory _InputMessageChanged(final String message) =
      _$InputMessageChangedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InputMessageChangedImplCopyWith<_$InputMessageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageResentImplCopyWith<$Res> {
  factory _$$MessageResentImplCopyWith(
          _$MessageResentImpl value, $Res Function(_$MessageResentImpl) then) =
      __$$MessageResentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message, bool isComment});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageResentImplCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$MessageResentImpl>
    implements _$$MessageResentImplCopyWith<$Res> {
  __$$MessageResentImplCopyWithImpl(
      _$MessageResentImpl _value, $Res Function(_$MessageResentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isComment = null,
  }) {
    return _then(_$MessageResentImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      null == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$MessageResentImpl implements _MessageResent {
  const _$MessageResentImpl(this.message, this.isComment);

  @override
  final ChatMessage message;
  @override
  final bool isComment;

  @override
  String toString() {
    return 'EventChatEvent.messageResent(message: $message, isComment: $isComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageResentImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isComment, isComment) ||
                other.isComment == isComment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageResentImplCopyWith<_$MessageResentImpl> get copyWith =>
      __$$MessageResentImplCopyWithImpl<_$MessageResentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function(bool isComment) messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message, bool isComment)
        messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return messageResent(message, isComment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function(bool isComment)? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message, bool isComment)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return messageResent?.call(message, isComment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function(bool isComment)? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message, bool isComment)? messageResent,
    TResult Function(ChatMessage message)? messageReported,
    required TResult orElse(),
  }) {
    if (messageResent != null) {
      return messageResent(message, isComment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitialized value) chatInitialized,
    required TResult Function(_NextPageMessagesFetched value)
        nextPageMessagesFetched,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_InputMessageChanged value) inputMessageChanged,
    required TResult Function(_MessageResent value) messageResent,
    required TResult Function(_MessageReported value) messageReported,
  }) {
    return messageResent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitialized value)? chatInitialized,
    TResult? Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_InputMessageChanged value)? inputMessageChanged,
    TResult? Function(_MessageResent value)? messageResent,
    TResult? Function(_MessageReported value)? messageReported,
  }) {
    return messageResent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitialized value)? chatInitialized,
    TResult Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_InputMessageChanged value)? inputMessageChanged,
    TResult Function(_MessageResent value)? messageResent,
    TResult Function(_MessageReported value)? messageReported,
    required TResult orElse(),
  }) {
    if (messageResent != null) {
      return messageResent(this);
    }
    return orElse();
  }
}

abstract class _MessageResent implements EventChatEvent {
  const factory _MessageResent(
      final ChatMessage message, final bool isComment) = _$MessageResentImpl;

  ChatMessage get message;
  bool get isComment;
  @JsonKey(ignore: true)
  _$$MessageResentImplCopyWith<_$MessageResentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReportedImplCopyWith<$Res> {
  factory _$$MessageReportedImplCopyWith(_$MessageReportedImpl value,
          $Res Function(_$MessageReportedImpl) then) =
      __$$MessageReportedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageReportedImplCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$MessageReportedImpl>
    implements _$$MessageReportedImplCopyWith<$Res> {
  __$$MessageReportedImplCopyWithImpl(
      _$MessageReportedImpl _value, $Res Function(_$MessageReportedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageReportedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$MessageReportedImpl implements _MessageReported {
  const _$MessageReportedImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'EventChatEvent.messageReported(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReportedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReportedImplCopyWith<_$MessageReportedImpl> get copyWith =>
      __$$MessageReportedImplCopyWithImpl<_$MessageReportedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function(bool isComment) messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message, bool isComment)
        messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return messageReported(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function(bool isComment)? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message, bool isComment)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return messageReported?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function(bool isComment)? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message, bool isComment)? messageResent,
    TResult Function(ChatMessage message)? messageReported,
    required TResult orElse(),
  }) {
    if (messageReported != null) {
      return messageReported(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatInitialized value) chatInitialized,
    required TResult Function(_NextPageMessagesFetched value)
        nextPageMessagesFetched,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_InputMessageChanged value) inputMessageChanged,
    required TResult Function(_MessageResent value) messageResent,
    required TResult Function(_MessageReported value) messageReported,
  }) {
    return messageReported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatInitialized value)? chatInitialized,
    TResult? Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_InputMessageChanged value)? inputMessageChanged,
    TResult? Function(_MessageResent value)? messageResent,
    TResult? Function(_MessageReported value)? messageReported,
  }) {
    return messageReported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatInitialized value)? chatInitialized,
    TResult Function(_NextPageMessagesFetched value)? nextPageMessagesFetched,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_InputMessageChanged value)? inputMessageChanged,
    TResult Function(_MessageResent value)? messageResent,
    TResult Function(_MessageReported value)? messageReported,
    required TResult orElse(),
  }) {
    if (messageReported != null) {
      return messageReported(this);
    }
    return orElse();
  }
}

abstract class _MessageReported implements EventChatEvent {
  const factory _MessageReported(final ChatMessage message) =
      _$MessageReportedImpl;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$MessageReportedImplCopyWith<_$MessageReportedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventChatState {
  CubitStatus get initialStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  Option<ChatUser> get currentUser => throw _privateConstructorUsedError;
  List<ChatMessage> get oldMessages => throw _privateConstructorUsedError;
  List<ChatMessage> get displayedMessages => throw _privateConstructorUsedError;
  List<ChatMessage> get queuedMessages => throw _privateConstructorUsedError;
  Option<String> get roomId => throw _privateConstructorUsedError;
  String get inputMessage => throw _privateConstructorUsedError;
  List<String> get reportingMessageIds => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  Option<ChatMessage> get newMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventChatStateCopyWith<EventChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventChatStateCopyWith<$Res> {
  factory $EventChatStateCopyWith(
          EventChatState value, $Res Function(EventChatState) then) =
      _$EventChatStateCopyWithImpl<$Res, EventChatState>;
  @useResult
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus nextPageStatus,
      bool hasReachedMax,
      Option<ChatUser> currentUser,
      List<ChatMessage> oldMessages,
      List<ChatMessage> displayedMessages,
      List<ChatMessage> queuedMessages,
      Option<String> roomId,
      String inputMessage,
      List<String> reportingMessageIds,
      Option<String> snackbarMessage,
      Option<ChatMessage> newMessage});
}

/// @nodoc
class _$EventChatStateCopyWithImpl<$Res, $Val extends EventChatState>
    implements $EventChatStateCopyWith<$Res> {
  _$EventChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialStatus = null,
    Object? nextPageStatus = null,
    Object? hasReachedMax = null,
    Object? currentUser = null,
    Object? oldMessages = null,
    Object? displayedMessages = null,
    Object? queuedMessages = null,
    Object? roomId = null,
    Object? inputMessage = null,
    Object? reportingMessageIds = null,
    Object? snackbarMessage = null,
    Object? newMessage = null,
  }) {
    return _then(_value.copyWith(
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as Option<ChatUser>,
      oldMessages: null == oldMessages
          ? _value.oldMessages
          : oldMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      displayedMessages: null == displayedMessages
          ? _value.displayedMessages
          : displayedMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      queuedMessages: null == queuedMessages
          ? _value.queuedMessages
          : queuedMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      inputMessage: null == inputMessage
          ? _value.inputMessage
          : inputMessage // ignore: cast_nullable_to_non_nullable
              as String,
      reportingMessageIds: null == reportingMessageIds
          ? _value.reportingMessageIds
          : reportingMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      newMessage: null == newMessage
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as Option<ChatMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventChatStateImplCopyWith<$Res>
    implements $EventChatStateCopyWith<$Res> {
  factory _$$EventChatStateImplCopyWith(_$EventChatStateImpl value,
          $Res Function(_$EventChatStateImpl) then) =
      __$$EventChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus nextPageStatus,
      bool hasReachedMax,
      Option<ChatUser> currentUser,
      List<ChatMessage> oldMessages,
      List<ChatMessage> displayedMessages,
      List<ChatMessage> queuedMessages,
      Option<String> roomId,
      String inputMessage,
      List<String> reportingMessageIds,
      Option<String> snackbarMessage,
      Option<ChatMessage> newMessage});
}

/// @nodoc
class __$$EventChatStateImplCopyWithImpl<$Res>
    extends _$EventChatStateCopyWithImpl<$Res, _$EventChatStateImpl>
    implements _$$EventChatStateImplCopyWith<$Res> {
  __$$EventChatStateImplCopyWithImpl(
      _$EventChatStateImpl _value, $Res Function(_$EventChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialStatus = null,
    Object? nextPageStatus = null,
    Object? hasReachedMax = null,
    Object? currentUser = null,
    Object? oldMessages = null,
    Object? displayedMessages = null,
    Object? queuedMessages = null,
    Object? roomId = null,
    Object? inputMessage = null,
    Object? reportingMessageIds = null,
    Object? snackbarMessage = null,
    Object? newMessage = null,
  }) {
    return _then(_$EventChatStateImpl(
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as Option<ChatUser>,
      oldMessages: null == oldMessages
          ? _value._oldMessages
          : oldMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      displayedMessages: null == displayedMessages
          ? _value._displayedMessages
          : displayedMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      queuedMessages: null == queuedMessages
          ? _value._queuedMessages
          : queuedMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      inputMessage: null == inputMessage
          ? _value.inputMessage
          : inputMessage // ignore: cast_nullable_to_non_nullable
              as String,
      reportingMessageIds: null == reportingMessageIds
          ? _value._reportingMessageIds
          : reportingMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      newMessage: null == newMessage
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as Option<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$EventChatStateImpl implements _EventChatState {
  const _$EventChatStateImpl(
      {required this.initialStatus,
      required this.nextPageStatus,
      required this.hasReachedMax,
      required this.currentUser,
      required final List<ChatMessage> oldMessages,
      required final List<ChatMessage> displayedMessages,
      required final List<ChatMessage> queuedMessages,
      required this.roomId,
      required this.inputMessage,
      required final List<String> reportingMessageIds,
      required this.snackbarMessage,
      required this.newMessage})
      : _oldMessages = oldMessages,
        _displayedMessages = displayedMessages,
        _queuedMessages = queuedMessages,
        _reportingMessageIds = reportingMessageIds;

  @override
  final CubitStatus initialStatus;
  @override
  final CubitStatus nextPageStatus;
  @override
  final bool hasReachedMax;
  @override
  final Option<ChatUser> currentUser;
  final List<ChatMessage> _oldMessages;
  @override
  List<ChatMessage> get oldMessages {
    if (_oldMessages is EqualUnmodifiableListView) return _oldMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldMessages);
  }

  final List<ChatMessage> _displayedMessages;
  @override
  List<ChatMessage> get displayedMessages {
    if (_displayedMessages is EqualUnmodifiableListView)
      return _displayedMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displayedMessages);
  }

  final List<ChatMessage> _queuedMessages;
  @override
  List<ChatMessage> get queuedMessages {
    if (_queuedMessages is EqualUnmodifiableListView) return _queuedMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queuedMessages);
  }

  @override
  final Option<String> roomId;
  @override
  final String inputMessage;
  final List<String> _reportingMessageIds;
  @override
  List<String> get reportingMessageIds {
    if (_reportingMessageIds is EqualUnmodifiableListView)
      return _reportingMessageIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportingMessageIds);
  }

  @override
  final Option<String> snackbarMessage;
  @override
  final Option<ChatMessage> newMessage;

  @override
  String toString() {
    return 'EventChatState(initialStatus: $initialStatus, nextPageStatus: $nextPageStatus, hasReachedMax: $hasReachedMax, currentUser: $currentUser, oldMessages: $oldMessages, displayedMessages: $displayedMessages, queuedMessages: $queuedMessages, roomId: $roomId, inputMessage: $inputMessage, reportingMessageIds: $reportingMessageIds, snackbarMessage: $snackbarMessage, newMessage: $newMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventChatStateImpl &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            const DeepCollectionEquality()
                .equals(other._oldMessages, _oldMessages) &&
            const DeepCollectionEquality()
                .equals(other._displayedMessages, _displayedMessages) &&
            const DeepCollectionEquality()
                .equals(other._queuedMessages, _queuedMessages) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.inputMessage, inputMessage) ||
                other.inputMessage == inputMessage) &&
            const DeepCollectionEquality()
                .equals(other._reportingMessageIds, _reportingMessageIds) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.newMessage, newMessage) ||
                other.newMessage == newMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      initialStatus,
      nextPageStatus,
      hasReachedMax,
      currentUser,
      const DeepCollectionEquality().hash(_oldMessages),
      const DeepCollectionEquality().hash(_displayedMessages),
      const DeepCollectionEquality().hash(_queuedMessages),
      roomId,
      inputMessage,
      const DeepCollectionEquality().hash(_reportingMessageIds),
      snackbarMessage,
      newMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventChatStateImplCopyWith<_$EventChatStateImpl> get copyWith =>
      __$$EventChatStateImplCopyWithImpl<_$EventChatStateImpl>(
          this, _$identity);
}

abstract class _EventChatState implements EventChatState {
  const factory _EventChatState(
      {required final CubitStatus initialStatus,
      required final CubitStatus nextPageStatus,
      required final bool hasReachedMax,
      required final Option<ChatUser> currentUser,
      required final List<ChatMessage> oldMessages,
      required final List<ChatMessage> displayedMessages,
      required final List<ChatMessage> queuedMessages,
      required final Option<String> roomId,
      required final String inputMessage,
      required final List<String> reportingMessageIds,
      required final Option<String> snackbarMessage,
      required final Option<ChatMessage> newMessage}) = _$EventChatStateImpl;

  @override
  CubitStatus get initialStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  bool get hasReachedMax;
  @override
  Option<ChatUser> get currentUser;
  @override
  List<ChatMessage> get oldMessages;
  @override
  List<ChatMessage> get displayedMessages;
  @override
  List<ChatMessage> get queuedMessages;
  @override
  Option<String> get roomId;
  @override
  String get inputMessage;
  @override
  List<String> get reportingMessageIds;
  @override
  Option<String> get snackbarMessage;
  @override
  Option<ChatMessage> get newMessage;
  @override
  @JsonKey(ignore: true)
  _$$EventChatStateImplCopyWith<_$EventChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

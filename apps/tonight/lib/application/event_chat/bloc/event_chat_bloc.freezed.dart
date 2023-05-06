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
    required TResult Function(Event event, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function() messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message) messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function()? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function()? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message)? messageResent,
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
abstract class _$$_ChatInitializedCopyWith<$Res> {
  factory _$$_ChatInitializedCopyWith(
          _$_ChatInitialized value, $Res Function(_$_ChatInitialized) then) =
      __$$_ChatInitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event, Participant participant});
}

/// @nodoc
class __$$_ChatInitializedCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$_ChatInitialized>
    implements _$$_ChatInitializedCopyWith<$Res> {
  __$$_ChatInitializedCopyWithImpl(
      _$_ChatInitialized _value, $Res Function(_$_ChatInitialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? participant = null,
  }) {
    return _then(_$_ChatInitialized(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      participant: null == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as Participant,
    ));
  }
}

/// @nodoc

class _$_ChatInitialized implements _ChatInitialized {
  const _$_ChatInitialized({required this.event, required this.participant});

  @override
  final Event event;
  @override
  final Participant participant;

  @override
  String toString() {
    return 'EventChatEvent.chatInitialized(event: $event, participant: $participant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatInitialized &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.participant, participant) ||
                other.participant == participant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, participant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatInitializedCopyWith<_$_ChatInitialized> get copyWith =>
      __$$_ChatInitializedCopyWithImpl<_$_ChatInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function() messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message) messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return chatInitialized(event, participant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function()? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return chatInitialized?.call(event, participant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function()? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message)? messageResent,
    TResult Function(ChatMessage message)? messageReported,
    required TResult orElse(),
  }) {
    if (chatInitialized != null) {
      return chatInitialized(event, participant);
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
      {required final Event event,
      required final Participant participant}) = _$_ChatInitialized;

  Event get event;
  Participant get participant;
  @JsonKey(ignore: true)
  _$$_ChatInitializedCopyWith<_$_ChatInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextPageMessagesFetchedCopyWith<$Res> {
  factory _$$_NextPageMessagesFetchedCopyWith(_$_NextPageMessagesFetched value,
          $Res Function(_$_NextPageMessagesFetched) then) =
      __$$_NextPageMessagesFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageMessagesFetchedCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$_NextPageMessagesFetched>
    implements _$$_NextPageMessagesFetchedCopyWith<$Res> {
  __$$_NextPageMessagesFetchedCopyWithImpl(_$_NextPageMessagesFetched _value,
      $Res Function(_$_NextPageMessagesFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPageMessagesFetched implements _NextPageMessagesFetched {
  const _$_NextPageMessagesFetched();

  @override
  String toString() {
    return 'EventChatEvent.nextPageMessagesFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPageMessagesFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function() messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message) messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return nextPageMessagesFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function()? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return nextPageMessagesFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function()? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message)? messageResent,
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
  const factory _NextPageMessagesFetched() = _$_NextPageMessagesFetched;
}

/// @nodoc
abstract class _$$_MessageSentCopyWith<$Res> {
  factory _$$_MessageSentCopyWith(
          _$_MessageSent value, $Res Function(_$_MessageSent) then) =
      __$$_MessageSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MessageSentCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$_MessageSent>
    implements _$$_MessageSentCopyWith<$Res> {
  __$$_MessageSentCopyWithImpl(
      _$_MessageSent _value, $Res Function(_$_MessageSent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MessageSent implements _MessageSent {
  const _$_MessageSent();

  @override
  String toString() {
    return 'EventChatEvent.messageSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MessageSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function() messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message) messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return messageSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function()? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return messageSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function()? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message)? messageResent,
    TResult Function(ChatMessage message)? messageReported,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent();
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
  const factory _MessageSent() = _$_MessageSent;
}

/// @nodoc
abstract class _$$_InputMessageChangedCopyWith<$Res> {
  factory _$$_InputMessageChangedCopyWith(_$_InputMessageChanged value,
          $Res Function(_$_InputMessageChanged) then) =
      __$$_InputMessageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_InputMessageChangedCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$_InputMessageChanged>
    implements _$$_InputMessageChangedCopyWith<$Res> {
  __$$_InputMessageChangedCopyWithImpl(_$_InputMessageChanged _value,
      $Res Function(_$_InputMessageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_InputMessageChanged(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputMessageChanged implements _InputMessageChanged {
  const _$_InputMessageChanged(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EventChatEvent.inputMessageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputMessageChanged &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputMessageChangedCopyWith<_$_InputMessageChanged> get copyWith =>
      __$$_InputMessageChangedCopyWithImpl<_$_InputMessageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function() messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message) messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return inputMessageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function()? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return inputMessageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function()? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message)? messageResent,
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
      _$_InputMessageChanged;

  String get message;
  @JsonKey(ignore: true)
  _$$_InputMessageChangedCopyWith<_$_InputMessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MessageResentCopyWith<$Res> {
  factory _$$_MessageResentCopyWith(
          _$_MessageResent value, $Res Function(_$_MessageResent) then) =
      __$$_MessageResentCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_MessageResentCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$_MessageResent>
    implements _$$_MessageResentCopyWith<$Res> {
  __$$_MessageResentCopyWithImpl(
      _$_MessageResent _value, $Res Function(_$_MessageResent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_MessageResent(
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

class _$_MessageResent implements _MessageResent {
  const _$_MessageResent(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'EventChatEvent.messageResent(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageResent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageResentCopyWith<_$_MessageResent> get copyWith =>
      __$$_MessageResentCopyWithImpl<_$_MessageResent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function() messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message) messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return messageResent(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function()? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return messageResent?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function()? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message)? messageResent,
    TResult Function(ChatMessage message)? messageReported,
    required TResult orElse(),
  }) {
    if (messageResent != null) {
      return messageResent(message);
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
  const factory _MessageResent(final ChatMessage message) = _$_MessageResent;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$_MessageResentCopyWith<_$_MessageResent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MessageReportedCopyWith<$Res> {
  factory _$$_MessageReportedCopyWith(
          _$_MessageReported value, $Res Function(_$_MessageReported) then) =
      __$$_MessageReportedCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_MessageReportedCopyWithImpl<$Res>
    extends _$EventChatEventCopyWithImpl<$Res, _$_MessageReported>
    implements _$$_MessageReportedCopyWith<$Res> {
  __$$_MessageReportedCopyWithImpl(
      _$_MessageReported _value, $Res Function(_$_MessageReported) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_MessageReported(
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

class _$_MessageReported implements _MessageReported {
  const _$_MessageReported(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'EventChatEvent.messageReported(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageReported &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageReportedCopyWith<_$_MessageReported> get copyWith =>
      __$$_MessageReportedCopyWithImpl<_$_MessageReported>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event, Participant participant)
        chatInitialized,
    required TResult Function() nextPageMessagesFetched,
    required TResult Function() messageSent,
    required TResult Function(String message) inputMessageChanged,
    required TResult Function(ChatMessage message) messageResent,
    required TResult Function(ChatMessage message) messageReported,
  }) {
    return messageReported(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event, Participant participant)? chatInitialized,
    TResult? Function()? nextPageMessagesFetched,
    TResult? Function()? messageSent,
    TResult? Function(String message)? inputMessageChanged,
    TResult? Function(ChatMessage message)? messageResent,
    TResult? Function(ChatMessage message)? messageReported,
  }) {
    return messageReported?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event, Participant participant)? chatInitialized,
    TResult Function()? nextPageMessagesFetched,
    TResult Function()? messageSent,
    TResult Function(String message)? inputMessageChanged,
    TResult Function(ChatMessage message)? messageResent,
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
      _$_MessageReported;

  ChatMessage get message;
  @JsonKey(ignore: true)
  _$$_MessageReportedCopyWith<_$_MessageReported> get copyWith =>
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
  Option<Event> get event => throw _privateConstructorUsedError;
  String get inputMessage => throw _privateConstructorUsedError;
  List<String> get reportingMessageIds => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

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
      Option<Event> event,
      String inputMessage,
      List<String> reportingMessageIds,
      Option<String> snackbarMessage});
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
    Object? event = null,
    Object? inputMessage = null,
    Object? reportingMessageIds = null,
    Object? snackbarMessage = null,
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
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventChatStateCopyWith<$Res>
    implements $EventChatStateCopyWith<$Res> {
  factory _$$_EventChatStateCopyWith(
          _$_EventChatState value, $Res Function(_$_EventChatState) then) =
      __$$_EventChatStateCopyWithImpl<$Res>;
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
      Option<Event> event,
      String inputMessage,
      List<String> reportingMessageIds,
      Option<String> snackbarMessage});
}

/// @nodoc
class __$$_EventChatStateCopyWithImpl<$Res>
    extends _$EventChatStateCopyWithImpl<$Res, _$_EventChatState>
    implements _$$_EventChatStateCopyWith<$Res> {
  __$$_EventChatStateCopyWithImpl(
      _$_EventChatState _value, $Res Function(_$_EventChatState) _then)
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
    Object? event = null,
    Object? inputMessage = null,
    Object? reportingMessageIds = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$_EventChatState(
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
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
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
    ));
  }
}

/// @nodoc

class _$_EventChatState implements _EventChatState {
  const _$_EventChatState(
      {required this.initialStatus,
      required this.nextPageStatus,
      required this.hasReachedMax,
      required this.currentUser,
      required final List<ChatMessage> oldMessages,
      required final List<ChatMessage> displayedMessages,
      required final List<ChatMessage> queuedMessages,
      required this.event,
      required this.inputMessage,
      required final List<String> reportingMessageIds,
      required this.snackbarMessage})
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
  final Option<Event> event;
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
  String toString() {
    return 'EventChatState(initialStatus: $initialStatus, nextPageStatus: $nextPageStatus, hasReachedMax: $hasReachedMax, currentUser: $currentUser, oldMessages: $oldMessages, displayedMessages: $displayedMessages, queuedMessages: $queuedMessages, event: $event, inputMessage: $inputMessage, reportingMessageIds: $reportingMessageIds, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventChatState &&
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
            (identical(other.event, event) || other.event == event) &&
            (identical(other.inputMessage, inputMessage) ||
                other.inputMessage == inputMessage) &&
            const DeepCollectionEquality()
                .equals(other._reportingMessageIds, _reportingMessageIds) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
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
      event,
      inputMessage,
      const DeepCollectionEquality().hash(_reportingMessageIds),
      snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventChatStateCopyWith<_$_EventChatState> get copyWith =>
      __$$_EventChatStateCopyWithImpl<_$_EventChatState>(this, _$identity);
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
      required final Option<Event> event,
      required final String inputMessage,
      required final List<String> reportingMessageIds,
      required final Option<String> snackbarMessage}) = _$_EventChatState;

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
  Option<Event> get event;
  @override
  String get inputMessage;
  @override
  List<String> get reportingMessageIds;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$_EventChatStateCopyWith<_$_EventChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

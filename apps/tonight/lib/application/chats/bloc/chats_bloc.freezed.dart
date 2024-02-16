// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatsFetched,
    required TResult Function() nextPageFetched,
    required TResult Function(String chatId) chatLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatsFetched,
    TResult? Function()? nextPageFetched,
    TResult? Function(String chatId)? chatLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatsFetched,
    TResult Function()? nextPageFetched,
    TResult Function(String chatId)? chatLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatsFetched value) chatsFetched,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_ChatLeft value) chatLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsFetched value)? chatsFetched,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_ChatLeft value)? chatLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsFetched value)? chatsFetched,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_ChatLeft value)? chatLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsEventCopyWith<$Res> {
  factory $ChatsEventCopyWith(
          ChatsEvent value, $Res Function(ChatsEvent) then) =
      _$ChatsEventCopyWithImpl<$Res, ChatsEvent>;
}

/// @nodoc
class _$ChatsEventCopyWithImpl<$Res, $Val extends ChatsEvent>
    implements $ChatsEventCopyWith<$Res> {
  _$ChatsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatsFetchedImplCopyWith<$Res> {
  factory _$$ChatsFetchedImplCopyWith(
          _$ChatsFetchedImpl value, $Res Function(_$ChatsFetchedImpl) then) =
      __$$ChatsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatsFetchedImplCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$ChatsFetchedImpl>
    implements _$$ChatsFetchedImplCopyWith<$Res> {
  __$$ChatsFetchedImplCopyWithImpl(
      _$ChatsFetchedImpl _value, $Res Function(_$ChatsFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatsFetchedImpl implements _ChatsFetched {
  const _$ChatsFetchedImpl();

  @override
  String toString() {
    return 'ChatsEvent.chatsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatsFetched,
    required TResult Function() nextPageFetched,
    required TResult Function(String chatId) chatLeft,
  }) {
    return chatsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatsFetched,
    TResult? Function()? nextPageFetched,
    TResult? Function(String chatId)? chatLeft,
  }) {
    return chatsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatsFetched,
    TResult Function()? nextPageFetched,
    TResult Function(String chatId)? chatLeft,
    required TResult orElse(),
  }) {
    if (chatsFetched != null) {
      return chatsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatsFetched value) chatsFetched,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_ChatLeft value) chatLeft,
  }) {
    return chatsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsFetched value)? chatsFetched,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_ChatLeft value)? chatLeft,
  }) {
    return chatsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsFetched value)? chatsFetched,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_ChatLeft value)? chatLeft,
    required TResult orElse(),
  }) {
    if (chatsFetched != null) {
      return chatsFetched(this);
    }
    return orElse();
  }
}

abstract class _ChatsFetched implements ChatsEvent {
  const factory _ChatsFetched() = _$ChatsFetchedImpl;
}

/// @nodoc
abstract class _$$NextPageFetchedImplCopyWith<$Res> {
  factory _$$NextPageFetchedImplCopyWith(_$NextPageFetchedImpl value,
          $Res Function(_$NextPageFetchedImpl) then) =
      __$$NextPageFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageFetchedImplCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$NextPageFetchedImpl>
    implements _$$NextPageFetchedImplCopyWith<$Res> {
  __$$NextPageFetchedImplCopyWithImpl(
      _$NextPageFetchedImpl _value, $Res Function(_$NextPageFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageFetchedImpl implements _NextPageFetched {
  const _$NextPageFetchedImpl();

  @override
  String toString() {
    return 'ChatsEvent.nextPageFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatsFetched,
    required TResult Function() nextPageFetched,
    required TResult Function(String chatId) chatLeft,
  }) {
    return nextPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatsFetched,
    TResult? Function()? nextPageFetched,
    TResult? Function(String chatId)? chatLeft,
  }) {
    return nextPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatsFetched,
    TResult Function()? nextPageFetched,
    TResult Function(String chatId)? chatLeft,
    required TResult orElse(),
  }) {
    if (nextPageFetched != null) {
      return nextPageFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatsFetched value) chatsFetched,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_ChatLeft value) chatLeft,
  }) {
    return nextPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsFetched value)? chatsFetched,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_ChatLeft value)? chatLeft,
  }) {
    return nextPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsFetched value)? chatsFetched,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_ChatLeft value)? chatLeft,
    required TResult orElse(),
  }) {
    if (nextPageFetched != null) {
      return nextPageFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageFetched implements ChatsEvent {
  const factory _NextPageFetched() = _$NextPageFetchedImpl;
}

/// @nodoc
abstract class _$$ChatLeftImplCopyWith<$Res> {
  factory _$$ChatLeftImplCopyWith(
          _$ChatLeftImpl value, $Res Function(_$ChatLeftImpl) then) =
      __$$ChatLeftImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$ChatLeftImplCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$ChatLeftImpl>
    implements _$$ChatLeftImplCopyWith<$Res> {
  __$$ChatLeftImplCopyWithImpl(
      _$ChatLeftImpl _value, $Res Function(_$ChatLeftImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$ChatLeftImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatLeftImpl implements _ChatLeft {
  const _$ChatLeftImpl(this.chatId);

  @override
  final String chatId;

  @override
  String toString() {
    return 'ChatsEvent.chatLeft(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatLeftImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatLeftImplCopyWith<_$ChatLeftImpl> get copyWith =>
      __$$ChatLeftImplCopyWithImpl<_$ChatLeftImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatsFetched,
    required TResult Function() nextPageFetched,
    required TResult Function(String chatId) chatLeft,
  }) {
    return chatLeft(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatsFetched,
    TResult? Function()? nextPageFetched,
    TResult? Function(String chatId)? chatLeft,
  }) {
    return chatLeft?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatsFetched,
    TResult Function()? nextPageFetched,
    TResult Function(String chatId)? chatLeft,
    required TResult orElse(),
  }) {
    if (chatLeft != null) {
      return chatLeft(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatsFetched value) chatsFetched,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_ChatLeft value) chatLeft,
  }) {
    return chatLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsFetched value)? chatsFetched,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_ChatLeft value)? chatLeft,
  }) {
    return chatLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsFetched value)? chatsFetched,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_ChatLeft value)? chatLeft,
    required TResult orElse(),
  }) {
    if (chatLeft != null) {
      return chatLeft(this);
    }
    return orElse();
  }
}

abstract class _ChatLeft implements ChatsEvent {
  const factory _ChatLeft(final String chatId) = _$ChatLeftImpl;

  String get chatId;
  @JsonKey(ignore: true)
  _$$ChatLeftImplCopyWith<_$ChatLeftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatsState {
  List<Chat> get chats => throw _privateConstructorUsedError;
  CubitStatus get fetchChatsStatus => throw _privateConstructorUsedError;
  CubitStatus get fetchNextPageStatus => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatsStateCopyWith<ChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res, ChatsState>;
  @useResult
  $Res call(
      {List<Chat> chats,
      CubitStatus fetchChatsStatus,
      CubitStatus fetchNextPageStatus,
      bool hasReachedMax});
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res, $Val extends ChatsState>
    implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? fetchChatsStatus = null,
    Object? fetchNextPageStatus = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_value.copyWith(
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      fetchChatsStatus: null == fetchChatsStatus
          ? _value.fetchChatsStatus
          : fetchChatsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchNextPageStatus: null == fetchNextPageStatus
          ? _value.fetchNextPageStatus
          : fetchNextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatsStateImplCopyWith<$Res>
    implements $ChatsStateCopyWith<$Res> {
  factory _$$ChatsStateImplCopyWith(
          _$ChatsStateImpl value, $Res Function(_$ChatsStateImpl) then) =
      __$$ChatsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Chat> chats,
      CubitStatus fetchChatsStatus,
      CubitStatus fetchNextPageStatus,
      bool hasReachedMax});
}

/// @nodoc
class __$$ChatsStateImplCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$ChatsStateImpl>
    implements _$$ChatsStateImplCopyWith<$Res> {
  __$$ChatsStateImplCopyWithImpl(
      _$ChatsStateImpl _value, $Res Function(_$ChatsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? fetchChatsStatus = null,
    Object? fetchNextPageStatus = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$ChatsStateImpl(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      fetchChatsStatus: null == fetchChatsStatus
          ? _value.fetchChatsStatus
          : fetchChatsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchNextPageStatus: null == fetchNextPageStatus
          ? _value.fetchNextPageStatus
          : fetchNextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatsStateImpl implements _ChatsState {
  const _$ChatsStateImpl(
      {required final List<Chat> chats,
      required this.fetchChatsStatus,
      required this.fetchNextPageStatus,
      required this.hasReachedMax})
      : _chats = chats;

  final List<Chat> _chats;
  @override
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  final CubitStatus fetchChatsStatus;
  @override
  final CubitStatus fetchNextPageStatus;
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'ChatsState(chats: $chats, fetchChatsStatus: $fetchChatsStatus, fetchNextPageStatus: $fetchNextPageStatus, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsStateImpl &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.fetchChatsStatus, fetchChatsStatus) ||
                other.fetchChatsStatus == fetchChatsStatus) &&
            (identical(other.fetchNextPageStatus, fetchNextPageStatus) ||
                other.fetchNextPageStatus == fetchNextPageStatus) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chats),
      fetchChatsStatus,
      fetchNextPageStatus,
      hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsStateImplCopyWith<_$ChatsStateImpl> get copyWith =>
      __$$ChatsStateImplCopyWithImpl<_$ChatsStateImpl>(this, _$identity);
}

abstract class _ChatsState implements ChatsState {
  const factory _ChatsState(
      {required final List<Chat> chats,
      required final CubitStatus fetchChatsStatus,
      required final CubitStatus fetchNextPageStatus,
      required final bool hasReachedMax}) = _$ChatsStateImpl;

  @override
  List<Chat> get chats;
  @override
  CubitStatus get fetchChatsStatus;
  @override
  CubitStatus get fetchNextPageStatus;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$ChatsStateImplCopyWith<_$ChatsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

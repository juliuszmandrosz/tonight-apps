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
    required TResult Function() chatsInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatsInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatsInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatsInitialized value) chatsInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsInitialized value)? chatsInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsInitialized value)? chatsInitialized,
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
abstract class _$$_ChatsInitializedCopyWith<$Res> {
  factory _$$_ChatsInitializedCopyWith(
          _$_ChatsInitialized value, $Res Function(_$_ChatsInitialized) then) =
      __$$_ChatsInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChatsInitializedCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res, _$_ChatsInitialized>
    implements _$$_ChatsInitializedCopyWith<$Res> {
  __$$_ChatsInitializedCopyWithImpl(
      _$_ChatsInitialized _value, $Res Function(_$_ChatsInitialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChatsInitialized implements _ChatsInitialized {
  const _$_ChatsInitialized();

  @override
  String toString() {
    return 'ChatsEvent.chatsInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChatsInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatsInitialized,
  }) {
    return chatsInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatsInitialized,
  }) {
    return chatsInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatsInitialized,
    required TResult orElse(),
  }) {
    if (chatsInitialized != null) {
      return chatsInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatsInitialized value) chatsInitialized,
  }) {
    return chatsInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatsInitialized value)? chatsInitialized,
  }) {
    return chatsInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatsInitialized value)? chatsInitialized,
    required TResult orElse(),
  }) {
    if (chatsInitialized != null) {
      return chatsInitialized(this);
    }
    return orElse();
  }
}

abstract class _ChatsInitialized implements ChatsEvent {
  const factory _ChatsInitialized() = _$_ChatsInitialized;
}

/// @nodoc
mixin _$ChatsState {
  List<Chat> get chats => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;

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
  $Res call({List<Chat> chats, CubitStatus status});
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
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatsStateCopyWith<$Res>
    implements $ChatsStateCopyWith<$Res> {
  factory _$$_ChatsStateCopyWith(
          _$_ChatsState value, $Res Function(_$_ChatsState) then) =
      __$$_ChatsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chat> chats, CubitStatus status});
}

/// @nodoc
class __$$_ChatsStateCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res, _$_ChatsState>
    implements _$$_ChatsStateCopyWith<$Res> {
  __$$_ChatsStateCopyWithImpl(
      _$_ChatsState _value, $Res Function(_$_ChatsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? status = null,
  }) {
    return _then(_$_ChatsState(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_ChatsState implements _ChatsState {
  const _$_ChatsState({required final List<Chat> chats, required this.status})
      : _chats = chats;

  final List<Chat> _chats;
  @override
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  final CubitStatus status;

  @override
  String toString() {
    return 'ChatsState(chats: $chats, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatsState &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chats), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatsStateCopyWith<_$_ChatsState> get copyWith =>
      __$$_ChatsStateCopyWithImpl<_$_ChatsState>(this, _$identity);
}

abstract class _ChatsState implements ChatsState {
  const factory _ChatsState(
      {required final List<Chat> chats,
      required final CubitStatus status}) = _$_ChatsState;

  @override
  List<Chat> get chats;
  @override
  CubitStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ChatsStateCopyWith<_$_ChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

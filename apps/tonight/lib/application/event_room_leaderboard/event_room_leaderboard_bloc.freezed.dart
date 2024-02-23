// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_room_leaderboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventRoomLeaderboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) initialized,
    required TResult Function() nextPageLeaderboardFetched,
    required TResult Function() leaderboardRefreshed,
    required TResult Function() permissionsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? initialized,
    TResult? Function()? nextPageLeaderboardFetched,
    TResult? Function()? leaderboardRefreshed,
    TResult? Function()? permissionsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? initialized,
    TResult Function()? nextPageLeaderboardFetched,
    TResult Function()? leaderboardRefreshed,
    TResult Function()? permissionsRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NextPageLeaderboardFetched value)
        nextPageLeaderboardFetched,
    required TResult Function(_LeaderboardRefreshed value) leaderboardRefreshed,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NextPageLeaderboardFetched value)?
        nextPageLeaderboardFetched,
    TResult? Function(_LeaderboardRefreshed value)? leaderboardRefreshed,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NextPageLeaderboardFetched value)?
        nextPageLeaderboardFetched,
    TResult Function(_LeaderboardRefreshed value)? leaderboardRefreshed,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRoomLeaderboardEventCopyWith<$Res> {
  factory $EventRoomLeaderboardEventCopyWith(EventRoomLeaderboardEvent value,
          $Res Function(EventRoomLeaderboardEvent) then) =
      _$EventRoomLeaderboardEventCopyWithImpl<$Res, EventRoomLeaderboardEvent>;
}

/// @nodoc
class _$EventRoomLeaderboardEventCopyWithImpl<$Res,
        $Val extends EventRoomLeaderboardEvent>
    implements $EventRoomLeaderboardEventCopyWith<$Res> {
  _$EventRoomLeaderboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$EventRoomLeaderboardEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$InitializedImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'EventRoomLeaderboardEvent.initialized(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) initialized,
    required TResult Function() nextPageLeaderboardFetched,
    required TResult Function() leaderboardRefreshed,
    required TResult Function() permissionsRequested,
  }) {
    return initialized(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? initialized,
    TResult? Function()? nextPageLeaderboardFetched,
    TResult? Function()? leaderboardRefreshed,
    TResult? Function()? permissionsRequested,
  }) {
    return initialized?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? initialized,
    TResult Function()? nextPageLeaderboardFetched,
    TResult Function()? leaderboardRefreshed,
    TResult Function()? permissionsRequested,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NextPageLeaderboardFetched value)
        nextPageLeaderboardFetched,
    required TResult Function(_LeaderboardRefreshed value) leaderboardRefreshed,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NextPageLeaderboardFetched value)?
        nextPageLeaderboardFetched,
    TResult? Function(_LeaderboardRefreshed value)? leaderboardRefreshed,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NextPageLeaderboardFetched value)?
        nextPageLeaderboardFetched,
    TResult Function(_LeaderboardRefreshed value)? leaderboardRefreshed,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements EventRoomLeaderboardEvent {
  const factory _Initialized(final String eventId) = _$InitializedImpl;

  String get eventId;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageLeaderboardFetchedImplCopyWith<$Res> {
  factory _$$NextPageLeaderboardFetchedImplCopyWith(
          _$NextPageLeaderboardFetchedImpl value,
          $Res Function(_$NextPageLeaderboardFetchedImpl) then) =
      __$$NextPageLeaderboardFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageLeaderboardFetchedImplCopyWithImpl<$Res>
    extends _$EventRoomLeaderboardEventCopyWithImpl<$Res,
        _$NextPageLeaderboardFetchedImpl>
    implements _$$NextPageLeaderboardFetchedImplCopyWith<$Res> {
  __$$NextPageLeaderboardFetchedImplCopyWithImpl(
      _$NextPageLeaderboardFetchedImpl _value,
      $Res Function(_$NextPageLeaderboardFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageLeaderboardFetchedImpl implements _NextPageLeaderboardFetched {
  const _$NextPageLeaderboardFetchedImpl();

  @override
  String toString() {
    return 'EventRoomLeaderboardEvent.nextPageLeaderboardFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPageLeaderboardFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) initialized,
    required TResult Function() nextPageLeaderboardFetched,
    required TResult Function() leaderboardRefreshed,
    required TResult Function() permissionsRequested,
  }) {
    return nextPageLeaderboardFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? initialized,
    TResult? Function()? nextPageLeaderboardFetched,
    TResult? Function()? leaderboardRefreshed,
    TResult? Function()? permissionsRequested,
  }) {
    return nextPageLeaderboardFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? initialized,
    TResult Function()? nextPageLeaderboardFetched,
    TResult Function()? leaderboardRefreshed,
    TResult Function()? permissionsRequested,
    required TResult orElse(),
  }) {
    if (nextPageLeaderboardFetched != null) {
      return nextPageLeaderboardFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NextPageLeaderboardFetched value)
        nextPageLeaderboardFetched,
    required TResult Function(_LeaderboardRefreshed value) leaderboardRefreshed,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
  }) {
    return nextPageLeaderboardFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NextPageLeaderboardFetched value)?
        nextPageLeaderboardFetched,
    TResult? Function(_LeaderboardRefreshed value)? leaderboardRefreshed,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
  }) {
    return nextPageLeaderboardFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NextPageLeaderboardFetched value)?
        nextPageLeaderboardFetched,
    TResult Function(_LeaderboardRefreshed value)? leaderboardRefreshed,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    required TResult orElse(),
  }) {
    if (nextPageLeaderboardFetched != null) {
      return nextPageLeaderboardFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageLeaderboardFetched
    implements EventRoomLeaderboardEvent {
  const factory _NextPageLeaderboardFetched() =
      _$NextPageLeaderboardFetchedImpl;
}

/// @nodoc
abstract class _$$LeaderboardRefreshedImplCopyWith<$Res> {
  factory _$$LeaderboardRefreshedImplCopyWith(_$LeaderboardRefreshedImpl value,
          $Res Function(_$LeaderboardRefreshedImpl) then) =
      __$$LeaderboardRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeaderboardRefreshedImplCopyWithImpl<$Res>
    extends _$EventRoomLeaderboardEventCopyWithImpl<$Res,
        _$LeaderboardRefreshedImpl>
    implements _$$LeaderboardRefreshedImplCopyWith<$Res> {
  __$$LeaderboardRefreshedImplCopyWithImpl(_$LeaderboardRefreshedImpl _value,
      $Res Function(_$LeaderboardRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LeaderboardRefreshedImpl implements _LeaderboardRefreshed {
  const _$LeaderboardRefreshedImpl();

  @override
  String toString() {
    return 'EventRoomLeaderboardEvent.leaderboardRefreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardRefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) initialized,
    required TResult Function() nextPageLeaderboardFetched,
    required TResult Function() leaderboardRefreshed,
    required TResult Function() permissionsRequested,
  }) {
    return leaderboardRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? initialized,
    TResult? Function()? nextPageLeaderboardFetched,
    TResult? Function()? leaderboardRefreshed,
    TResult? Function()? permissionsRequested,
  }) {
    return leaderboardRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? initialized,
    TResult Function()? nextPageLeaderboardFetched,
    TResult Function()? leaderboardRefreshed,
    TResult Function()? permissionsRequested,
    required TResult orElse(),
  }) {
    if (leaderboardRefreshed != null) {
      return leaderboardRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NextPageLeaderboardFetched value)
        nextPageLeaderboardFetched,
    required TResult Function(_LeaderboardRefreshed value) leaderboardRefreshed,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
  }) {
    return leaderboardRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NextPageLeaderboardFetched value)?
        nextPageLeaderboardFetched,
    TResult? Function(_LeaderboardRefreshed value)? leaderboardRefreshed,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
  }) {
    return leaderboardRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NextPageLeaderboardFetched value)?
        nextPageLeaderboardFetched,
    TResult Function(_LeaderboardRefreshed value)? leaderboardRefreshed,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    required TResult orElse(),
  }) {
    if (leaderboardRefreshed != null) {
      return leaderboardRefreshed(this);
    }
    return orElse();
  }
}

abstract class _LeaderboardRefreshed implements EventRoomLeaderboardEvent {
  const factory _LeaderboardRefreshed() = _$LeaderboardRefreshedImpl;
}

/// @nodoc
abstract class _$$PermissionsRequestedImplCopyWith<$Res> {
  factory _$$PermissionsRequestedImplCopyWith(_$PermissionsRequestedImpl value,
          $Res Function(_$PermissionsRequestedImpl) then) =
      __$$PermissionsRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionsRequestedImplCopyWithImpl<$Res>
    extends _$EventRoomLeaderboardEventCopyWithImpl<$Res,
        _$PermissionsRequestedImpl>
    implements _$$PermissionsRequestedImplCopyWith<$Res> {
  __$$PermissionsRequestedImplCopyWithImpl(_$PermissionsRequestedImpl _value,
      $Res Function(_$PermissionsRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermissionsRequestedImpl implements _PermissionsRequested {
  const _$PermissionsRequestedImpl();

  @override
  String toString() {
    return 'EventRoomLeaderboardEvent.permissionsRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) initialized,
    required TResult Function() nextPageLeaderboardFetched,
    required TResult Function() leaderboardRefreshed,
    required TResult Function() permissionsRequested,
  }) {
    return permissionsRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? initialized,
    TResult? Function()? nextPageLeaderboardFetched,
    TResult? Function()? leaderboardRefreshed,
    TResult? Function()? permissionsRequested,
  }) {
    return permissionsRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? initialized,
    TResult Function()? nextPageLeaderboardFetched,
    TResult Function()? leaderboardRefreshed,
    TResult Function()? permissionsRequested,
    required TResult orElse(),
  }) {
    if (permissionsRequested != null) {
      return permissionsRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NextPageLeaderboardFetched value)
        nextPageLeaderboardFetched,
    required TResult Function(_LeaderboardRefreshed value) leaderboardRefreshed,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
  }) {
    return permissionsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NextPageLeaderboardFetched value)?
        nextPageLeaderboardFetched,
    TResult? Function(_LeaderboardRefreshed value)? leaderboardRefreshed,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
  }) {
    return permissionsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NextPageLeaderboardFetched value)?
        nextPageLeaderboardFetched,
    TResult Function(_LeaderboardRefreshed value)? leaderboardRefreshed,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    required TResult orElse(),
  }) {
    if (permissionsRequested != null) {
      return permissionsRequested(this);
    }
    return orElse();
  }
}

abstract class _PermissionsRequested implements EventRoomLeaderboardEvent {
  const factory _PermissionsRequested() = _$PermissionsRequestedImpl;
}

/// @nodoc
mixin _$EventRoomLeaderboardState {
  CubitStatus get initialStatus => throw _privateConstructorUsedError;
  CubitStatus get refreshLeaderboardStatus =>
      throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  CubitStatus get permissionsStatus => throw _privateConstructorUsedError;
  Option<Participant> get currentUser => throw _privateConstructorUsedError;
  List<Participant> get participants => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  Option<String> get eventId => throw _privateConstructorUsedError;
  bool get permissionsGranted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventRoomLeaderboardStateCopyWith<EventRoomLeaderboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRoomLeaderboardStateCopyWith<$Res> {
  factory $EventRoomLeaderboardStateCopyWith(EventRoomLeaderboardState value,
          $Res Function(EventRoomLeaderboardState) then) =
      _$EventRoomLeaderboardStateCopyWithImpl<$Res, EventRoomLeaderboardState>;
  @useResult
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus refreshLeaderboardStatus,
      CubitStatus nextPageStatus,
      CubitStatus permissionsStatus,
      Option<Participant> currentUser,
      List<Participant> participants,
      bool hasReachedMax,
      Option<String> eventId,
      bool permissionsGranted});
}

/// @nodoc
class _$EventRoomLeaderboardStateCopyWithImpl<$Res,
        $Val extends EventRoomLeaderboardState>
    implements $EventRoomLeaderboardStateCopyWith<$Res> {
  _$EventRoomLeaderboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialStatus = null,
    Object? refreshLeaderboardStatus = null,
    Object? nextPageStatus = null,
    Object? permissionsStatus = null,
    Object? currentUser = null,
    Object? participants = null,
    Object? hasReachedMax = null,
    Object? eventId = null,
    Object? permissionsGranted = null,
  }) {
    return _then(_value.copyWith(
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      refreshLeaderboardStatus: null == refreshLeaderboardStatus
          ? _value.refreshLeaderboardStatus
          : refreshLeaderboardStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      permissionsStatus: null == permissionsStatus
          ? _value.permissionsStatus
          : permissionsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as Option<Participant>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      permissionsGranted: null == permissionsGranted
          ? _value.permissionsGranted
          : permissionsGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventRoomLeaderboardStateImplCopyWith<$Res>
    implements $EventRoomLeaderboardStateCopyWith<$Res> {
  factory _$$EventRoomLeaderboardStateImplCopyWith(
          _$EventRoomLeaderboardStateImpl value,
          $Res Function(_$EventRoomLeaderboardStateImpl) then) =
      __$$EventRoomLeaderboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus refreshLeaderboardStatus,
      CubitStatus nextPageStatus,
      CubitStatus permissionsStatus,
      Option<Participant> currentUser,
      List<Participant> participants,
      bool hasReachedMax,
      Option<String> eventId,
      bool permissionsGranted});
}

/// @nodoc
class __$$EventRoomLeaderboardStateImplCopyWithImpl<$Res>
    extends _$EventRoomLeaderboardStateCopyWithImpl<$Res,
        _$EventRoomLeaderboardStateImpl>
    implements _$$EventRoomLeaderboardStateImplCopyWith<$Res> {
  __$$EventRoomLeaderboardStateImplCopyWithImpl(
      _$EventRoomLeaderboardStateImpl _value,
      $Res Function(_$EventRoomLeaderboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialStatus = null,
    Object? refreshLeaderboardStatus = null,
    Object? nextPageStatus = null,
    Object? permissionsStatus = null,
    Object? currentUser = null,
    Object? participants = null,
    Object? hasReachedMax = null,
    Object? eventId = null,
    Object? permissionsGranted = null,
  }) {
    return _then(_$EventRoomLeaderboardStateImpl(
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      refreshLeaderboardStatus: null == refreshLeaderboardStatus
          ? _value.refreshLeaderboardStatus
          : refreshLeaderboardStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      permissionsStatus: null == permissionsStatus
          ? _value.permissionsStatus
          : permissionsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as Option<Participant>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      permissionsGranted: null == permissionsGranted
          ? _value.permissionsGranted
          : permissionsGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EventRoomLeaderboardStateImpl implements _EventRoomLeaderboardState {
  const _$EventRoomLeaderboardStateImpl(
      {required this.initialStatus,
      required this.refreshLeaderboardStatus,
      required this.nextPageStatus,
      required this.permissionsStatus,
      required this.currentUser,
      required final List<Participant> participants,
      required this.hasReachedMax,
      required this.eventId,
      required this.permissionsGranted})
      : _participants = participants;

  @override
  final CubitStatus initialStatus;
  @override
  final CubitStatus refreshLeaderboardStatus;
  @override
  final CubitStatus nextPageStatus;
  @override
  final CubitStatus permissionsStatus;
  @override
  final Option<Participant> currentUser;
  final List<Participant> _participants;
  @override
  List<Participant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final bool hasReachedMax;
  @override
  final Option<String> eventId;
  @override
  final bool permissionsGranted;

  @override
  String toString() {
    return 'EventRoomLeaderboardState(initialStatus: $initialStatus, refreshLeaderboardStatus: $refreshLeaderboardStatus, nextPageStatus: $nextPageStatus, permissionsStatus: $permissionsStatus, currentUser: $currentUser, participants: $participants, hasReachedMax: $hasReachedMax, eventId: $eventId, permissionsGranted: $permissionsGranted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventRoomLeaderboardStateImpl &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(
                    other.refreshLeaderboardStatus, refreshLeaderboardStatus) ||
                other.refreshLeaderboardStatus == refreshLeaderboardStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            (identical(other.permissionsStatus, permissionsStatus) ||
                other.permissionsStatus == permissionsStatus) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.permissionsGranted, permissionsGranted) ||
                other.permissionsGranted == permissionsGranted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      initialStatus,
      refreshLeaderboardStatus,
      nextPageStatus,
      permissionsStatus,
      currentUser,
      const DeepCollectionEquality().hash(_participants),
      hasReachedMax,
      eventId,
      permissionsGranted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventRoomLeaderboardStateImplCopyWith<_$EventRoomLeaderboardStateImpl>
      get copyWith => __$$EventRoomLeaderboardStateImplCopyWithImpl<
          _$EventRoomLeaderboardStateImpl>(this, _$identity);
}

abstract class _EventRoomLeaderboardState implements EventRoomLeaderboardState {
  const factory _EventRoomLeaderboardState(
          {required final CubitStatus initialStatus,
          required final CubitStatus refreshLeaderboardStatus,
          required final CubitStatus nextPageStatus,
          required final CubitStatus permissionsStatus,
          required final Option<Participant> currentUser,
          required final List<Participant> participants,
          required final bool hasReachedMax,
          required final Option<String> eventId,
          required final bool permissionsGranted}) =
      _$EventRoomLeaderboardStateImpl;

  @override
  CubitStatus get initialStatus;
  @override
  CubitStatus get refreshLeaderboardStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  CubitStatus get permissionsStatus;
  @override
  Option<Participant> get currentUser;
  @override
  List<Participant> get participants;
  @override
  bool get hasReachedMax;
  @override
  Option<String> get eventId;
  @override
  bool get permissionsGranted;
  @override
  @JsonKey(ignore: true)
  _$$EventRoomLeaderboardStateImplCopyWith<_$EventRoomLeaderboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

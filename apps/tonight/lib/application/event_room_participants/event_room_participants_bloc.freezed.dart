// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_room_participants_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventRoomParticipantsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) participantsFetched,
    required TResult Function() nextPageParticipantsFetched,
    required TResult Function() participantsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? participantsFetched,
    TResult? Function()? nextPageParticipantsFetched,
    TResult? Function()? participantsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? participantsFetched,
    TResult Function()? nextPageParticipantsFetched,
    TResult Function()? participantsRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParticipantsFetched value) participantsFetched,
    required TResult Function(_NextPageParticipantsFetched value)
        nextPageParticipantsFetched,
    required TResult Function(_ParticipantsRefreshed value)
        participantsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParticipantsFetched value)? participantsFetched,
    TResult? Function(_NextPageParticipantsFetched value)?
        nextPageParticipantsFetched,
    TResult? Function(_ParticipantsRefreshed value)? participantsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParticipantsFetched value)? participantsFetched,
    TResult Function(_NextPageParticipantsFetched value)?
        nextPageParticipantsFetched,
    TResult Function(_ParticipantsRefreshed value)? participantsRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRoomParticipantsEventCopyWith<$Res> {
  factory $EventRoomParticipantsEventCopyWith(EventRoomParticipantsEvent value,
          $Res Function(EventRoomParticipantsEvent) then) =
      _$EventRoomParticipantsEventCopyWithImpl<$Res,
          EventRoomParticipantsEvent>;
}

/// @nodoc
class _$EventRoomParticipantsEventCopyWithImpl<$Res,
        $Val extends EventRoomParticipantsEvent>
    implements $EventRoomParticipantsEventCopyWith<$Res> {
  _$EventRoomParticipantsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ParticipantsFetchedCopyWith<$Res> {
  factory _$$_ParticipantsFetchedCopyWith(_$_ParticipantsFetched value,
          $Res Function(_$_ParticipantsFetched) then) =
      __$$_ParticipantsFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$_ParticipantsFetchedCopyWithImpl<$Res>
    extends _$EventRoomParticipantsEventCopyWithImpl<$Res,
        _$_ParticipantsFetched>
    implements _$$_ParticipantsFetchedCopyWith<$Res> {
  __$$_ParticipantsFetchedCopyWithImpl(_$_ParticipantsFetched _value,
      $Res Function(_$_ParticipantsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$_ParticipantsFetched(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ParticipantsFetched implements _ParticipantsFetched {
  const _$_ParticipantsFetched(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'EventRoomParticipantsEvent.participantsFetched(eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticipantsFetched &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipantsFetchedCopyWith<_$_ParticipantsFetched> get copyWith =>
      __$$_ParticipantsFetchedCopyWithImpl<_$_ParticipantsFetched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) participantsFetched,
    required TResult Function() nextPageParticipantsFetched,
    required TResult Function() participantsRefreshed,
  }) {
    return participantsFetched(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? participantsFetched,
    TResult? Function()? nextPageParticipantsFetched,
    TResult? Function()? participantsRefreshed,
  }) {
    return participantsFetched?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? participantsFetched,
    TResult Function()? nextPageParticipantsFetched,
    TResult Function()? participantsRefreshed,
    required TResult orElse(),
  }) {
    if (participantsFetched != null) {
      return participantsFetched(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParticipantsFetched value) participantsFetched,
    required TResult Function(_NextPageParticipantsFetched value)
        nextPageParticipantsFetched,
    required TResult Function(_ParticipantsRefreshed value)
        participantsRefreshed,
  }) {
    return participantsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParticipantsFetched value)? participantsFetched,
    TResult? Function(_NextPageParticipantsFetched value)?
        nextPageParticipantsFetched,
    TResult? Function(_ParticipantsRefreshed value)? participantsRefreshed,
  }) {
    return participantsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParticipantsFetched value)? participantsFetched,
    TResult Function(_NextPageParticipantsFetched value)?
        nextPageParticipantsFetched,
    TResult Function(_ParticipantsRefreshed value)? participantsRefreshed,
    required TResult orElse(),
  }) {
    if (participantsFetched != null) {
      return participantsFetched(this);
    }
    return orElse();
  }
}

abstract class _ParticipantsFetched implements EventRoomParticipantsEvent {
  const factory _ParticipantsFetched(final String eventId) =
      _$_ParticipantsFetched;

  String get eventId;
  @JsonKey(ignore: true)
  _$$_ParticipantsFetchedCopyWith<_$_ParticipantsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextPageParticipantsFetchedCopyWith<$Res> {
  factory _$$_NextPageParticipantsFetchedCopyWith(
          _$_NextPageParticipantsFetched value,
          $Res Function(_$_NextPageParticipantsFetched) then) =
      __$$_NextPageParticipantsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageParticipantsFetchedCopyWithImpl<$Res>
    extends _$EventRoomParticipantsEventCopyWithImpl<$Res,
        _$_NextPageParticipantsFetched>
    implements _$$_NextPageParticipantsFetchedCopyWith<$Res> {
  __$$_NextPageParticipantsFetchedCopyWithImpl(
      _$_NextPageParticipantsFetched _value,
      $Res Function(_$_NextPageParticipantsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPageParticipantsFetched implements _NextPageParticipantsFetched {
  const _$_NextPageParticipantsFetched();

  @override
  String toString() {
    return 'EventRoomParticipantsEvent.nextPageParticipantsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPageParticipantsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) participantsFetched,
    required TResult Function() nextPageParticipantsFetched,
    required TResult Function() participantsRefreshed,
  }) {
    return nextPageParticipantsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? participantsFetched,
    TResult? Function()? nextPageParticipantsFetched,
    TResult? Function()? participantsRefreshed,
  }) {
    return nextPageParticipantsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? participantsFetched,
    TResult Function()? nextPageParticipantsFetched,
    TResult Function()? participantsRefreshed,
    required TResult orElse(),
  }) {
    if (nextPageParticipantsFetched != null) {
      return nextPageParticipantsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParticipantsFetched value) participantsFetched,
    required TResult Function(_NextPageParticipantsFetched value)
        nextPageParticipantsFetched,
    required TResult Function(_ParticipantsRefreshed value)
        participantsRefreshed,
  }) {
    return nextPageParticipantsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParticipantsFetched value)? participantsFetched,
    TResult? Function(_NextPageParticipantsFetched value)?
        nextPageParticipantsFetched,
    TResult? Function(_ParticipantsRefreshed value)? participantsRefreshed,
  }) {
    return nextPageParticipantsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParticipantsFetched value)? participantsFetched,
    TResult Function(_NextPageParticipantsFetched value)?
        nextPageParticipantsFetched,
    TResult Function(_ParticipantsRefreshed value)? participantsRefreshed,
    required TResult orElse(),
  }) {
    if (nextPageParticipantsFetched != null) {
      return nextPageParticipantsFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageParticipantsFetched
    implements EventRoomParticipantsEvent {
  const factory _NextPageParticipantsFetched() = _$_NextPageParticipantsFetched;
}

/// @nodoc
abstract class _$$_ParticipantsRefreshedCopyWith<$Res> {
  factory _$$_ParticipantsRefreshedCopyWith(_$_ParticipantsRefreshed value,
          $Res Function(_$_ParticipantsRefreshed) then) =
      __$$_ParticipantsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ParticipantsRefreshedCopyWithImpl<$Res>
    extends _$EventRoomParticipantsEventCopyWithImpl<$Res,
        _$_ParticipantsRefreshed>
    implements _$$_ParticipantsRefreshedCopyWith<$Res> {
  __$$_ParticipantsRefreshedCopyWithImpl(_$_ParticipantsRefreshed _value,
      $Res Function(_$_ParticipantsRefreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ParticipantsRefreshed implements _ParticipantsRefreshed {
  const _$_ParticipantsRefreshed();

  @override
  String toString() {
    return 'EventRoomParticipantsEvent.participantsRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ParticipantsRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId) participantsFetched,
    required TResult Function() nextPageParticipantsFetched,
    required TResult Function() participantsRefreshed,
  }) {
    return participantsRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId)? participantsFetched,
    TResult? Function()? nextPageParticipantsFetched,
    TResult? Function()? participantsRefreshed,
  }) {
    return participantsRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId)? participantsFetched,
    TResult Function()? nextPageParticipantsFetched,
    TResult Function()? participantsRefreshed,
    required TResult orElse(),
  }) {
    if (participantsRefreshed != null) {
      return participantsRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParticipantsFetched value) participantsFetched,
    required TResult Function(_NextPageParticipantsFetched value)
        nextPageParticipantsFetched,
    required TResult Function(_ParticipantsRefreshed value)
        participantsRefreshed,
  }) {
    return participantsRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParticipantsFetched value)? participantsFetched,
    TResult? Function(_NextPageParticipantsFetched value)?
        nextPageParticipantsFetched,
    TResult? Function(_ParticipantsRefreshed value)? participantsRefreshed,
  }) {
    return participantsRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParticipantsFetched value)? participantsFetched,
    TResult Function(_NextPageParticipantsFetched value)?
        nextPageParticipantsFetched,
    TResult Function(_ParticipantsRefreshed value)? participantsRefreshed,
    required TResult orElse(),
  }) {
    if (participantsRefreshed != null) {
      return participantsRefreshed(this);
    }
    return orElse();
  }
}

abstract class _ParticipantsRefreshed implements EventRoomParticipantsEvent {
  const factory _ParticipantsRefreshed() = _$_ParticipantsRefreshed;
}

/// @nodoc
mixin _$EventRoomParticipantsState {
  List<EventRoomParticipant> get participants =>
      throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  CubitStatus get fetchParticipantsStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  Option<String> get eventId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventRoomParticipantsStateCopyWith<EventRoomParticipantsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRoomParticipantsStateCopyWith<$Res> {
  factory $EventRoomParticipantsStateCopyWith(EventRoomParticipantsState value,
          $Res Function(EventRoomParticipantsState) then) =
      _$EventRoomParticipantsStateCopyWithImpl<$Res,
          EventRoomParticipantsState>;
  @useResult
  $Res call(
      {List<EventRoomParticipant> participants,
      bool hasReachedMax,
      CubitStatus fetchParticipantsStatus,
      CubitStatus nextPageStatus,
      Option<String> eventId});
}

/// @nodoc
class _$EventRoomParticipantsStateCopyWithImpl<$Res,
        $Val extends EventRoomParticipantsState>
    implements $EventRoomParticipantsStateCopyWith<$Res> {
  _$EventRoomParticipantsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participants = null,
    Object? hasReachedMax = null,
    Object? fetchParticipantsStatus = null,
    Object? nextPageStatus = null,
    Object? eventId = null,
  }) {
    return _then(_value.copyWith(
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<EventRoomParticipant>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchParticipantsStatus: null == fetchParticipantsStatus
          ? _value.fetchParticipantsStatus
          : fetchParticipantsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventRoomParticipantsStateCopyWith<$Res>
    implements $EventRoomParticipantsStateCopyWith<$Res> {
  factory _$$_EventRoomParticipantsStateCopyWith(
          _$_EventRoomParticipantsState value,
          $Res Function(_$_EventRoomParticipantsState) then) =
      __$$_EventRoomParticipantsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EventRoomParticipant> participants,
      bool hasReachedMax,
      CubitStatus fetchParticipantsStatus,
      CubitStatus nextPageStatus,
      Option<String> eventId});
}

/// @nodoc
class __$$_EventRoomParticipantsStateCopyWithImpl<$Res>
    extends _$EventRoomParticipantsStateCopyWithImpl<$Res,
        _$_EventRoomParticipantsState>
    implements _$$_EventRoomParticipantsStateCopyWith<$Res> {
  __$$_EventRoomParticipantsStateCopyWithImpl(
      _$_EventRoomParticipantsState _value,
      $Res Function(_$_EventRoomParticipantsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participants = null,
    Object? hasReachedMax = null,
    Object? fetchParticipantsStatus = null,
    Object? nextPageStatus = null,
    Object? eventId = null,
  }) {
    return _then(_$_EventRoomParticipantsState(
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<EventRoomParticipant>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchParticipantsStatus: null == fetchParticipantsStatus
          ? _value.fetchParticipantsStatus
          : fetchParticipantsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_EventRoomParticipantsState implements _EventRoomParticipantsState {
  const _$_EventRoomParticipantsState(
      {required final List<EventRoomParticipant> participants,
      required this.hasReachedMax,
      required this.fetchParticipantsStatus,
      required this.nextPageStatus,
      required this.eventId})
      : _participants = participants;

  final List<EventRoomParticipant> _participants;
  @override
  List<EventRoomParticipant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final bool hasReachedMax;
  @override
  final CubitStatus fetchParticipantsStatus;
  @override
  final CubitStatus nextPageStatus;
  @override
  final Option<String> eventId;

  @override
  String toString() {
    return 'EventRoomParticipantsState(participants: $participants, hasReachedMax: $hasReachedMax, fetchParticipantsStatus: $fetchParticipantsStatus, nextPageStatus: $nextPageStatus, eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventRoomParticipantsState &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(
                    other.fetchParticipantsStatus, fetchParticipantsStatus) ||
                other.fetchParticipantsStatus == fetchParticipantsStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_participants),
      hasReachedMax,
      fetchParticipantsStatus,
      nextPageStatus,
      eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventRoomParticipantsStateCopyWith<_$_EventRoomParticipantsState>
      get copyWith => __$$_EventRoomParticipantsStateCopyWithImpl<
          _$_EventRoomParticipantsState>(this, _$identity);
}

abstract class _EventRoomParticipantsState
    implements EventRoomParticipantsState {
  const factory _EventRoomParticipantsState(
      {required final List<EventRoomParticipant> participants,
      required final bool hasReachedMax,
      required final CubitStatus fetchParticipantsStatus,
      required final CubitStatus nextPageStatus,
      required final Option<String> eventId}) = _$_EventRoomParticipantsState;

  @override
  List<EventRoomParticipant> get participants;
  @override
  bool get hasReachedMax;
  @override
  CubitStatus get fetchParticipantsStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  Option<String> get eventId;
  @override
  @JsonKey(ignore: true)
  _$$_EventRoomParticipantsStateCopyWith<_$_EventRoomParticipantsState>
      get copyWith => throw _privateConstructorUsedError;
}

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
abstract class _$$ParticipantsFetchedImplCopyWith<$Res> {
  factory _$$ParticipantsFetchedImplCopyWith(_$ParticipantsFetchedImpl value,
          $Res Function(_$ParticipantsFetchedImpl) then) =
      __$$ParticipantsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$ParticipantsFetchedImplCopyWithImpl<$Res>
    extends _$EventRoomParticipantsEventCopyWithImpl<$Res,
        _$ParticipantsFetchedImpl>
    implements _$$ParticipantsFetchedImplCopyWith<$Res> {
  __$$ParticipantsFetchedImplCopyWithImpl(_$ParticipantsFetchedImpl _value,
      $Res Function(_$ParticipantsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$ParticipantsFetchedImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParticipantsFetchedImpl implements _ParticipantsFetched {
  const _$ParticipantsFetchedImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'EventRoomParticipantsEvent.participantsFetched(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantsFetchedImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantsFetchedImplCopyWith<_$ParticipantsFetchedImpl> get copyWith =>
      __$$ParticipantsFetchedImplCopyWithImpl<_$ParticipantsFetchedImpl>(
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
      _$ParticipantsFetchedImpl;

  String get eventId;
  @JsonKey(ignore: true)
  _$$ParticipantsFetchedImplCopyWith<_$ParticipantsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageParticipantsFetchedImplCopyWith<$Res> {
  factory _$$NextPageParticipantsFetchedImplCopyWith(
          _$NextPageParticipantsFetchedImpl value,
          $Res Function(_$NextPageParticipantsFetchedImpl) then) =
      __$$NextPageParticipantsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageParticipantsFetchedImplCopyWithImpl<$Res>
    extends _$EventRoomParticipantsEventCopyWithImpl<$Res,
        _$NextPageParticipantsFetchedImpl>
    implements _$$NextPageParticipantsFetchedImplCopyWith<$Res> {
  __$$NextPageParticipantsFetchedImplCopyWithImpl(
      _$NextPageParticipantsFetchedImpl _value,
      $Res Function(_$NextPageParticipantsFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageParticipantsFetchedImpl
    implements _NextPageParticipantsFetched {
  const _$NextPageParticipantsFetchedImpl();

  @override
  String toString() {
    return 'EventRoomParticipantsEvent.nextPageParticipantsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPageParticipantsFetchedImpl);
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
  const factory _NextPageParticipantsFetched() =
      _$NextPageParticipantsFetchedImpl;
}

/// @nodoc
abstract class _$$ParticipantsRefreshedImplCopyWith<$Res> {
  factory _$$ParticipantsRefreshedImplCopyWith(
          _$ParticipantsRefreshedImpl value,
          $Res Function(_$ParticipantsRefreshedImpl) then) =
      __$$ParticipantsRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParticipantsRefreshedImplCopyWithImpl<$Res>
    extends _$EventRoomParticipantsEventCopyWithImpl<$Res,
        _$ParticipantsRefreshedImpl>
    implements _$$ParticipantsRefreshedImplCopyWith<$Res> {
  __$$ParticipantsRefreshedImplCopyWithImpl(_$ParticipantsRefreshedImpl _value,
      $Res Function(_$ParticipantsRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParticipantsRefreshedImpl implements _ParticipantsRefreshed {
  const _$ParticipantsRefreshedImpl();

  @override
  String toString() {
    return 'EventRoomParticipantsEvent.participantsRefreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantsRefreshedImpl);
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
  const factory _ParticipantsRefreshed() = _$ParticipantsRefreshedImpl;
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
abstract class _$$EventRoomParticipantsStateImplCopyWith<$Res>
    implements $EventRoomParticipantsStateCopyWith<$Res> {
  factory _$$EventRoomParticipantsStateImplCopyWith(
          _$EventRoomParticipantsStateImpl value,
          $Res Function(_$EventRoomParticipantsStateImpl) then) =
      __$$EventRoomParticipantsStateImplCopyWithImpl<$Res>;
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
class __$$EventRoomParticipantsStateImplCopyWithImpl<$Res>
    extends _$EventRoomParticipantsStateCopyWithImpl<$Res,
        _$EventRoomParticipantsStateImpl>
    implements _$$EventRoomParticipantsStateImplCopyWith<$Res> {
  __$$EventRoomParticipantsStateImplCopyWithImpl(
      _$EventRoomParticipantsStateImpl _value,
      $Res Function(_$EventRoomParticipantsStateImpl) _then)
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
    return _then(_$EventRoomParticipantsStateImpl(
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

class _$EventRoomParticipantsStateImpl implements _EventRoomParticipantsState {
  const _$EventRoomParticipantsStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventRoomParticipantsStateImpl &&
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
  _$$EventRoomParticipantsStateImplCopyWith<_$EventRoomParticipantsStateImpl>
      get copyWith => __$$EventRoomParticipantsStateImplCopyWithImpl<
          _$EventRoomParticipantsStateImpl>(this, _$identity);
}

abstract class _EventRoomParticipantsState
    implements EventRoomParticipantsState {
  const factory _EventRoomParticipantsState(
          {required final List<EventRoomParticipant> participants,
          required final bool hasReachedMax,
          required final CubitStatus fetchParticipantsStatus,
          required final CubitStatus nextPageStatus,
          required final Option<String> eventId}) =
      _$EventRoomParticipantsStateImpl;

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
  _$$EventRoomParticipantsStateImplCopyWith<_$EventRoomParticipantsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

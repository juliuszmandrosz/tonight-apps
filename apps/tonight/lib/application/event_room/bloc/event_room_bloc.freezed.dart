// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventRoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, Event? event) joinedToEvent,
    required TResult Function() leavedFromEvent,
    required TResult Function(EventRoomTab tab) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, Event? event)? joinedToEvent,
    TResult? Function()? leavedFromEvent,
    TResult? Function(EventRoomTab tab)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, Event? event)? joinedToEvent,
    TResult Function()? leavedFromEvent,
    TResult Function(EventRoomTab tab)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JoinedToEvent value) joinedToEvent,
    required TResult Function(_LeavedFromEvent value) leavedFromEvent,
    required TResult Function(_TabChanged value) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JoinedToEvent value)? joinedToEvent,
    TResult? Function(_LeavedFromEvent value)? leavedFromEvent,
    TResult? Function(_TabChanged value)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JoinedToEvent value)? joinedToEvent,
    TResult Function(_LeavedFromEvent value)? leavedFromEvent,
    TResult Function(_TabChanged value)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRoomEventCopyWith<$Res> {
  factory $EventRoomEventCopyWith(
          EventRoomEvent value, $Res Function(EventRoomEvent) then) =
      _$EventRoomEventCopyWithImpl<$Res, EventRoomEvent>;
}

/// @nodoc
class _$EventRoomEventCopyWithImpl<$Res, $Val extends EventRoomEvent>
    implements $EventRoomEventCopyWith<$Res> {
  _$EventRoomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_JoinedToEventCopyWith<$Res> {
  factory _$$_JoinedToEventCopyWith(
          _$_JoinedToEvent value, $Res Function(_$_JoinedToEvent) then) =
      __$$_JoinedToEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, Event? event});
}

/// @nodoc
class __$$_JoinedToEventCopyWithImpl<$Res>
    extends _$EventRoomEventCopyWithImpl<$Res, _$_JoinedToEvent>
    implements _$$_JoinedToEventCopyWith<$Res> {
  __$$_JoinedToEventCopyWithImpl(
      _$_JoinedToEvent _value, $Res Function(_$_JoinedToEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? event = freezed,
  }) {
    return _then(_$_JoinedToEvent(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event?,
    ));
  }
}

/// @nodoc

class _$_JoinedToEvent implements _JoinedToEvent {
  const _$_JoinedToEvent({required this.eventId, this.event});

  @override
  final String eventId;
  @override
  final Event? event;

  @override
  String toString() {
    return 'EventRoomEvent.joinedToEvent(eventId: $eventId, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinedToEvent &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinedToEventCopyWith<_$_JoinedToEvent> get copyWith =>
      __$$_JoinedToEventCopyWithImpl<_$_JoinedToEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, Event? event) joinedToEvent,
    required TResult Function() leavedFromEvent,
    required TResult Function(EventRoomTab tab) tabChanged,
  }) {
    return joinedToEvent(eventId, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, Event? event)? joinedToEvent,
    TResult? Function()? leavedFromEvent,
    TResult? Function(EventRoomTab tab)? tabChanged,
  }) {
    return joinedToEvent?.call(eventId, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, Event? event)? joinedToEvent,
    TResult Function()? leavedFromEvent,
    TResult Function(EventRoomTab tab)? tabChanged,
    required TResult orElse(),
  }) {
    if (joinedToEvent != null) {
      return joinedToEvent(eventId, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JoinedToEvent value) joinedToEvent,
    required TResult Function(_LeavedFromEvent value) leavedFromEvent,
    required TResult Function(_TabChanged value) tabChanged,
  }) {
    return joinedToEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JoinedToEvent value)? joinedToEvent,
    TResult? Function(_LeavedFromEvent value)? leavedFromEvent,
    TResult? Function(_TabChanged value)? tabChanged,
  }) {
    return joinedToEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JoinedToEvent value)? joinedToEvent,
    TResult Function(_LeavedFromEvent value)? leavedFromEvent,
    TResult Function(_TabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (joinedToEvent != null) {
      return joinedToEvent(this);
    }
    return orElse();
  }
}

abstract class _JoinedToEvent implements EventRoomEvent {
  const factory _JoinedToEvent(
      {required final String eventId, final Event? event}) = _$_JoinedToEvent;

  String get eventId;
  Event? get event;
  @JsonKey(ignore: true)
  _$$_JoinedToEventCopyWith<_$_JoinedToEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LeavedFromEventCopyWith<$Res> {
  factory _$$_LeavedFromEventCopyWith(
          _$_LeavedFromEvent value, $Res Function(_$_LeavedFromEvent) then) =
      __$$_LeavedFromEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LeavedFromEventCopyWithImpl<$Res>
    extends _$EventRoomEventCopyWithImpl<$Res, _$_LeavedFromEvent>
    implements _$$_LeavedFromEventCopyWith<$Res> {
  __$$_LeavedFromEventCopyWithImpl(
      _$_LeavedFromEvent _value, $Res Function(_$_LeavedFromEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LeavedFromEvent implements _LeavedFromEvent {
  const _$_LeavedFromEvent();

  @override
  String toString() {
    return 'EventRoomEvent.leavedFromEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LeavedFromEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, Event? event) joinedToEvent,
    required TResult Function() leavedFromEvent,
    required TResult Function(EventRoomTab tab) tabChanged,
  }) {
    return leavedFromEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, Event? event)? joinedToEvent,
    TResult? Function()? leavedFromEvent,
    TResult? Function(EventRoomTab tab)? tabChanged,
  }) {
    return leavedFromEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, Event? event)? joinedToEvent,
    TResult Function()? leavedFromEvent,
    TResult Function(EventRoomTab tab)? tabChanged,
    required TResult orElse(),
  }) {
    if (leavedFromEvent != null) {
      return leavedFromEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JoinedToEvent value) joinedToEvent,
    required TResult Function(_LeavedFromEvent value) leavedFromEvent,
    required TResult Function(_TabChanged value) tabChanged,
  }) {
    return leavedFromEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JoinedToEvent value)? joinedToEvent,
    TResult? Function(_LeavedFromEvent value)? leavedFromEvent,
    TResult? Function(_TabChanged value)? tabChanged,
  }) {
    return leavedFromEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JoinedToEvent value)? joinedToEvent,
    TResult Function(_LeavedFromEvent value)? leavedFromEvent,
    TResult Function(_TabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (leavedFromEvent != null) {
      return leavedFromEvent(this);
    }
    return orElse();
  }
}

abstract class _LeavedFromEvent implements EventRoomEvent {
  const factory _LeavedFromEvent() = _$_LeavedFromEvent;
}

/// @nodoc
abstract class _$$_TabChangedCopyWith<$Res> {
  factory _$$_TabChangedCopyWith(
          _$_TabChanged value, $Res Function(_$_TabChanged) then) =
      __$$_TabChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({EventRoomTab tab});
}

/// @nodoc
class __$$_TabChangedCopyWithImpl<$Res>
    extends _$EventRoomEventCopyWithImpl<$Res, _$_TabChanged>
    implements _$$_TabChangedCopyWith<$Res> {
  __$$_TabChangedCopyWithImpl(
      _$_TabChanged _value, $Res Function(_$_TabChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$_TabChanged(
      null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as EventRoomTab,
    ));
  }
}

/// @nodoc

class _$_TabChanged implements _TabChanged {
  const _$_TabChanged(this.tab);

  @override
  final EventRoomTab tab;

  @override
  String toString() {
    return 'EventRoomEvent.tabChanged(tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabChanged &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabChangedCopyWith<_$_TabChanged> get copyWith =>
      __$$_TabChangedCopyWithImpl<_$_TabChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, Event? event) joinedToEvent,
    required TResult Function() leavedFromEvent,
    required TResult Function(EventRoomTab tab) tabChanged,
  }) {
    return tabChanged(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, Event? event)? joinedToEvent,
    TResult? Function()? leavedFromEvent,
    TResult? Function(EventRoomTab tab)? tabChanged,
  }) {
    return tabChanged?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, Event? event)? joinedToEvent,
    TResult Function()? leavedFromEvent,
    TResult Function(EventRoomTab tab)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JoinedToEvent value) joinedToEvent,
    required TResult Function(_LeavedFromEvent value) leavedFromEvent,
    required TResult Function(_TabChanged value) tabChanged,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JoinedToEvent value)? joinedToEvent,
    TResult? Function(_LeavedFromEvent value)? leavedFromEvent,
    TResult? Function(_TabChanged value)? tabChanged,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JoinedToEvent value)? joinedToEvent,
    TResult Function(_LeavedFromEvent value)? leavedFromEvent,
    TResult Function(_TabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class _TabChanged implements EventRoomEvent {
  const factory _TabChanged(final EventRoomTab tab) = _$_TabChanged;

  EventRoomTab get tab;
  @JsonKey(ignore: true)
  _$$_TabChangedCopyWith<_$_TabChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventRoomState {
  CubitStatus get joinStatus => throw _privateConstructorUsedError;
  CubitStatus get leaveStatus => throw _privateConstructorUsedError;
  Option<Participant> get participant => throw _privateConstructorUsedError;
  Option<Event> get event => throw _privateConstructorUsedError;
  Option<EventRoomEvent> get previousEvent =>
      throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  EventRoomTab get selectedTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventRoomStateCopyWith<EventRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRoomStateCopyWith<$Res> {
  factory $EventRoomStateCopyWith(
          EventRoomState value, $Res Function(EventRoomState) then) =
      _$EventRoomStateCopyWithImpl<$Res, EventRoomState>;
  @useResult
  $Res call(
      {CubitStatus joinStatus,
      CubitStatus leaveStatus,
      Option<Participant> participant,
      Option<Event> event,
      Option<EventRoomEvent> previousEvent,
      Option<String> snackbarMessage,
      EventRoomTab selectedTab});
}

/// @nodoc
class _$EventRoomStateCopyWithImpl<$Res, $Val extends EventRoomState>
    implements $EventRoomStateCopyWith<$Res> {
  _$EventRoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinStatus = null,
    Object? leaveStatus = null,
    Object? participant = null,
    Object? event = null,
    Object? previousEvent = null,
    Object? snackbarMessage = null,
    Object? selectedTab = null,
  }) {
    return _then(_value.copyWith(
      joinStatus: null == joinStatus
          ? _value.joinStatus
          : joinStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      leaveStatus: null == leaveStatus
          ? _value.leaveStatus
          : leaveStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      participant: null == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as Option<Participant>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      previousEvent: null == previousEvent
          ? _value.previousEvent
          : previousEvent // ignore: cast_nullable_to_non_nullable
              as Option<EventRoomEvent>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as EventRoomTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventRoomStateCopyWith<$Res>
    implements $EventRoomStateCopyWith<$Res> {
  factory _$$_EventRoomStateCopyWith(
          _$_EventRoomState value, $Res Function(_$_EventRoomState) then) =
      __$$_EventRoomStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus joinStatus,
      CubitStatus leaveStatus,
      Option<Participant> participant,
      Option<Event> event,
      Option<EventRoomEvent> previousEvent,
      Option<String> snackbarMessage,
      EventRoomTab selectedTab});
}

/// @nodoc
class __$$_EventRoomStateCopyWithImpl<$Res>
    extends _$EventRoomStateCopyWithImpl<$Res, _$_EventRoomState>
    implements _$$_EventRoomStateCopyWith<$Res> {
  __$$_EventRoomStateCopyWithImpl(
      _$_EventRoomState _value, $Res Function(_$_EventRoomState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinStatus = null,
    Object? leaveStatus = null,
    Object? participant = null,
    Object? event = null,
    Object? previousEvent = null,
    Object? snackbarMessage = null,
    Object? selectedTab = null,
  }) {
    return _then(_$_EventRoomState(
      joinStatus: null == joinStatus
          ? _value.joinStatus
          : joinStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      leaveStatus: null == leaveStatus
          ? _value.leaveStatus
          : leaveStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      participant: null == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as Option<Participant>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      previousEvent: null == previousEvent
          ? _value.previousEvent
          : previousEvent // ignore: cast_nullable_to_non_nullable
              as Option<EventRoomEvent>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as EventRoomTab,
    ));
  }
}

/// @nodoc

class _$_EventRoomState implements _EventRoomState {
  const _$_EventRoomState(
      {required this.joinStatus,
      required this.leaveStatus,
      required this.participant,
      required this.event,
      required this.previousEvent,
      required this.snackbarMessage,
      required this.selectedTab});

  @override
  final CubitStatus joinStatus;
  @override
  final CubitStatus leaveStatus;
  @override
  final Option<Participant> participant;
  @override
  final Option<Event> event;
  @override
  final Option<EventRoomEvent> previousEvent;
  @override
  final Option<String> snackbarMessage;
  @override
  final EventRoomTab selectedTab;

  @override
  String toString() {
    return 'EventRoomState(joinStatus: $joinStatus, leaveStatus: $leaveStatus, participant: $participant, event: $event, previousEvent: $previousEvent, snackbarMessage: $snackbarMessage, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventRoomState &&
            (identical(other.joinStatus, joinStatus) ||
                other.joinStatus == joinStatus) &&
            (identical(other.leaveStatus, leaveStatus) ||
                other.leaveStatus == leaveStatus) &&
            (identical(other.participant, participant) ||
                other.participant == participant) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.previousEvent, previousEvent) ||
                other.previousEvent == previousEvent) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, joinStatus, leaveStatus,
      participant, event, previousEvent, snackbarMessage, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventRoomStateCopyWith<_$_EventRoomState> get copyWith =>
      __$$_EventRoomStateCopyWithImpl<_$_EventRoomState>(this, _$identity);
}

abstract class _EventRoomState implements EventRoomState {
  const factory _EventRoomState(
      {required final CubitStatus joinStatus,
      required final CubitStatus leaveStatus,
      required final Option<Participant> participant,
      required final Option<Event> event,
      required final Option<EventRoomEvent> previousEvent,
      required final Option<String> snackbarMessage,
      required final EventRoomTab selectedTab}) = _$_EventRoomState;

  @override
  CubitStatus get joinStatus;
  @override
  CubitStatus get leaveStatus;
  @override
  Option<Participant> get participant;
  @override
  Option<Event> get event;
  @override
  Option<EventRoomEvent> get previousEvent;
  @override
  Option<String> get snackbarMessage;
  @override
  EventRoomTab get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$_EventRoomStateCopyWith<_$_EventRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

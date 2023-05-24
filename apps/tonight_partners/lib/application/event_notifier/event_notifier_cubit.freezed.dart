// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_notifier_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventNotifierState {
  Option<Event> get lastAddedEvent =>
      throw _privateConstructorUsedError; // <old event, edited event>
  Option<Tuple2<Event, Event>> get lastEditedEvent =>
      throw _privateConstructorUsedError;
  Option<Event> get lastDeletedEvent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventNotifierStateCopyWith<EventNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventNotifierStateCopyWith<$Res> {
  factory $EventNotifierStateCopyWith(
          EventNotifierState value, $Res Function(EventNotifierState) then) =
      _$EventNotifierStateCopyWithImpl<$Res, EventNotifierState>;
  @useResult
  $Res call(
      {Option<Event> lastAddedEvent,
      Option<Tuple2<Event, Event>> lastEditedEvent,
      Option<Event> lastDeletedEvent});
}

/// @nodoc
class _$EventNotifierStateCopyWithImpl<$Res, $Val extends EventNotifierState>
    implements $EventNotifierStateCopyWith<$Res> {
  _$EventNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastAddedEvent = null,
    Object? lastEditedEvent = null,
    Object? lastDeletedEvent = null,
  }) {
    return _then(_value.copyWith(
      lastAddedEvent: null == lastAddedEvent
          ? _value.lastAddedEvent
          : lastAddedEvent // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      lastEditedEvent: null == lastEditedEvent
          ? _value.lastEditedEvent
          : lastEditedEvent // ignore: cast_nullable_to_non_nullable
              as Option<Tuple2<Event, Event>>,
      lastDeletedEvent: null == lastDeletedEvent
          ? _value.lastDeletedEvent
          : lastDeletedEvent // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventNotifierStateCopyWith<$Res>
    implements $EventNotifierStateCopyWith<$Res> {
  factory _$$_EventNotifierStateCopyWith(_$_EventNotifierState value,
          $Res Function(_$_EventNotifierState) then) =
      __$$_EventNotifierStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Event> lastAddedEvent,
      Option<Tuple2<Event, Event>> lastEditedEvent,
      Option<Event> lastDeletedEvent});
}

/// @nodoc
class __$$_EventNotifierStateCopyWithImpl<$Res>
    extends _$EventNotifierStateCopyWithImpl<$Res, _$_EventNotifierState>
    implements _$$_EventNotifierStateCopyWith<$Res> {
  __$$_EventNotifierStateCopyWithImpl(
      _$_EventNotifierState _value, $Res Function(_$_EventNotifierState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastAddedEvent = null,
    Object? lastEditedEvent = null,
    Object? lastDeletedEvent = null,
  }) {
    return _then(_$_EventNotifierState(
      lastAddedEvent: null == lastAddedEvent
          ? _value.lastAddedEvent
          : lastAddedEvent // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      lastEditedEvent: null == lastEditedEvent
          ? _value.lastEditedEvent
          : lastEditedEvent // ignore: cast_nullable_to_non_nullable
              as Option<Tuple2<Event, Event>>,
      lastDeletedEvent: null == lastDeletedEvent
          ? _value.lastDeletedEvent
          : lastDeletedEvent // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
    ));
  }
}

/// @nodoc

class _$_EventNotifierState implements _EventNotifierState {
  const _$_EventNotifierState(
      {required this.lastAddedEvent,
      required this.lastEditedEvent,
      required this.lastDeletedEvent});

  @override
  final Option<Event> lastAddedEvent;
// <old event, edited event>
  @override
  final Option<Tuple2<Event, Event>> lastEditedEvent;
  @override
  final Option<Event> lastDeletedEvent;

  @override
  String toString() {
    return 'EventNotifierState(lastAddedEvent: $lastAddedEvent, lastEditedEvent: $lastEditedEvent, lastDeletedEvent: $lastDeletedEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventNotifierState &&
            (identical(other.lastAddedEvent, lastAddedEvent) ||
                other.lastAddedEvent == lastAddedEvent) &&
            (identical(other.lastEditedEvent, lastEditedEvent) ||
                other.lastEditedEvent == lastEditedEvent) &&
            (identical(other.lastDeletedEvent, lastDeletedEvent) ||
                other.lastDeletedEvent == lastDeletedEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, lastAddedEvent, lastEditedEvent, lastDeletedEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventNotifierStateCopyWith<_$_EventNotifierState> get copyWith =>
      __$$_EventNotifierStateCopyWithImpl<_$_EventNotifierState>(
          this, _$identity);
}

abstract class _EventNotifierState implements EventNotifierState {
  const factory _EventNotifierState(
      {required final Option<Event> lastAddedEvent,
      required final Option<Tuple2<Event, Event>> lastEditedEvent,
      required final Option<Event> lastDeletedEvent}) = _$_EventNotifierState;

  @override
  Option<Event> get lastAddedEvent;
  @override // <old event, edited event>
  Option<Tuple2<Event, Event>> get lastEditedEvent;
  @override
  Option<Event> get lastDeletedEvent;
  @override
  @JsonKey(ignore: true)
  _$$_EventNotifierStateCopyWith<_$_EventNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

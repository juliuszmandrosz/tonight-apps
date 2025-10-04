// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_tickets_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventTicketsState {
  Option<EventTickets> get eventTickets => throw _privateConstructorUsedError;
  Option<Event> get event => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventTicketsStateCopyWith<EventTicketsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventTicketsStateCopyWith<$Res> {
  factory $EventTicketsStateCopyWith(
          EventTicketsState value, $Res Function(EventTicketsState) then) =
      _$EventTicketsStateCopyWithImpl<$Res, EventTicketsState>;
  @useResult
  $Res call(
      {Option<EventTickets> eventTickets,
      Option<Event> event,
      CubitStatus status});
}

/// @nodoc
class _$EventTicketsStateCopyWithImpl<$Res, $Val extends EventTicketsState>
    implements $EventTicketsStateCopyWith<$Res> {
  _$EventTicketsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventTickets = null,
    Object? event = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      eventTickets: null == eventTickets
          ? _value.eventTickets
          : eventTickets // ignore: cast_nullable_to_non_nullable
              as Option<EventTickets>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventTicketsStateImplCopyWith<$Res>
    implements $EventTicketsStateCopyWith<$Res> {
  factory _$$EventTicketsStateImplCopyWith(_$EventTicketsStateImpl value,
          $Res Function(_$EventTicketsStateImpl) then) =
      __$$EventTicketsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<EventTickets> eventTickets,
      Option<Event> event,
      CubitStatus status});
}

/// @nodoc
class __$$EventTicketsStateImplCopyWithImpl<$Res>
    extends _$EventTicketsStateCopyWithImpl<$Res, _$EventTicketsStateImpl>
    implements _$$EventTicketsStateImplCopyWith<$Res> {
  __$$EventTicketsStateImplCopyWithImpl(_$EventTicketsStateImpl _value,
      $Res Function(_$EventTicketsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventTickets = null,
    Object? event = null,
    Object? status = null,
  }) {
    return _then(_$EventTicketsStateImpl(
      eventTickets: null == eventTickets
          ? _value.eventTickets
          : eventTickets // ignore: cast_nullable_to_non_nullable
              as Option<EventTickets>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$EventTicketsStateImpl extends _EventTicketsState {
  _$EventTicketsStateImpl(
      {required this.eventTickets, required this.event, required this.status})
      : super._();

  @override
  final Option<EventTickets> eventTickets;
  @override
  final Option<Event> event;
  @override
  final CubitStatus status;

  @override
  String toString() {
    return 'EventTicketsState(eventTickets: $eventTickets, event: $event, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventTicketsStateImpl &&
            (identical(other.eventTickets, eventTickets) ||
                other.eventTickets == eventTickets) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventTickets, event, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventTicketsStateImplCopyWith<_$EventTicketsStateImpl> get copyWith =>
      __$$EventTicketsStateImplCopyWithImpl<_$EventTicketsStateImpl>(
          this, _$identity);
}

abstract class _EventTicketsState extends EventTicketsState {
  factory _EventTicketsState(
      {required final Option<EventTickets> eventTickets,
      required final Option<Event> event,
      required final CubitStatus status}) = _$EventTicketsStateImpl;
  _EventTicketsState._() : super._();

  @override
  Option<EventTickets> get eventTickets;
  @override
  Option<Event> get event;
  @override
  CubitStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$EventTicketsStateImplCopyWith<_$EventTicketsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_event_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentEventState {
  Option<Event> get currentEvent => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<SelectorEventFailure> get failure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentEventStateCopyWith<CurrentEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentEventStateCopyWith<$Res> {
  factory $CurrentEventStateCopyWith(
          CurrentEventState value, $Res Function(CurrentEventState) then) =
      _$CurrentEventStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Event> currentEvent,
      CubitStatus status,
      Option<SelectorEventFailure> failure});
}

/// @nodoc
class _$CurrentEventStateCopyWithImpl<$Res>
    implements $CurrentEventStateCopyWith<$Res> {
  _$CurrentEventStateCopyWithImpl(this._value, this._then);

  final CurrentEventState _value;
  // ignore: unused_field
  final $Res Function(CurrentEventState) _then;

  @override
  $Res call({
    Object? currentEvent = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentEvent: currentEvent == freezed
          ? _value.currentEvent
          : currentEvent // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<SelectorEventFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrentEventStateCopyWith<$Res>
    implements $CurrentEventStateCopyWith<$Res> {
  factory _$$_CurrentEventStateCopyWith(_$_CurrentEventState value,
          $Res Function(_$_CurrentEventState) then) =
      __$$_CurrentEventStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Event> currentEvent,
      CubitStatus status,
      Option<SelectorEventFailure> failure});
}

/// @nodoc
class __$$_CurrentEventStateCopyWithImpl<$Res>
    extends _$CurrentEventStateCopyWithImpl<$Res>
    implements _$$_CurrentEventStateCopyWith<$Res> {
  __$$_CurrentEventStateCopyWithImpl(
      _$_CurrentEventState _value, $Res Function(_$_CurrentEventState) _then)
      : super(_value, (v) => _then(v as _$_CurrentEventState));

  @override
  _$_CurrentEventState get _value => super._value as _$_CurrentEventState;

  @override
  $Res call({
    Object? currentEvent = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_CurrentEventState(
      currentEvent: currentEvent == freezed
          ? _value.currentEvent
          : currentEvent // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<SelectorEventFailure>,
    ));
  }
}

/// @nodoc

class _$_CurrentEventState implements _CurrentEventState {
  const _$_CurrentEventState(
      {required this.currentEvent,
      required this.status,
      required this.failure});

  @override
  final Option<Event> currentEvent;
  @override
  final CubitStatus status;
  @override
  final Option<SelectorEventFailure> failure;

  @override
  String toString() {
    return 'CurrentEventState(currentEvent: $currentEvent, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentEventState &&
            const DeepCollectionEquality()
                .equals(other.currentEvent, currentEvent) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentEvent),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentEventStateCopyWith<_$_CurrentEventState> get copyWith =>
      __$$_CurrentEventStateCopyWithImpl<_$_CurrentEventState>(
          this, _$identity);
}

abstract class _CurrentEventState implements CurrentEventState {
  const factory _CurrentEventState(
          {required final Option<Event> currentEvent,
          required final CubitStatus status,
          required final Option<SelectorEventFailure> failure}) =
      _$_CurrentEventState;

  @override
  Option<Event> get currentEvent;
  @override
  CubitStatus get status;
  @override
  Option<SelectorEventFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentEventStateCopyWith<_$_CurrentEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

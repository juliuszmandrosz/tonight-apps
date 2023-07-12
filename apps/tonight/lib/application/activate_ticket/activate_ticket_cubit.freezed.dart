// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activate_ticket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivateTicketState {
  CubitStatus get getTicketStatus => throw _privateConstructorUsedError;
  CubitStatus get activateTicketStatus => throw _privateConstructorUsedError;
  CubitStatus get receiveTicketStatus => throw _privateConstructorUsedError;
  Option<Ticket> get ticket => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  Option<UserTicketFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivateTicketStateCopyWith<ActivateTicketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivateTicketStateCopyWith<$Res> {
  factory $ActivateTicketStateCopyWith(
          ActivateTicketState value, $Res Function(ActivateTicketState) then) =
      _$ActivateTicketStateCopyWithImpl<$Res, ActivateTicketState>;
  @useResult
  $Res call(
      {CubitStatus getTicketStatus,
      CubitStatus activateTicketStatus,
      CubitStatus receiveTicketStatus,
      Option<Ticket> ticket,
      Option<String> snackbarMessage,
      Option<UserTicketFailure> failure});
}

/// @nodoc
class _$ActivateTicketStateCopyWithImpl<$Res, $Val extends ActivateTicketState>
    implements $ActivateTicketStateCopyWith<$Res> {
  _$ActivateTicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTicketStatus = null,
    Object? activateTicketStatus = null,
    Object? receiveTicketStatus = null,
    Object? ticket = null,
    Object? snackbarMessage = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      getTicketStatus: null == getTicketStatus
          ? _value.getTicketStatus
          : getTicketStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      activateTicketStatus: null == activateTicketStatus
          ? _value.activateTicketStatus
          : activateTicketStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      receiveTicketStatus: null == receiveTicketStatus
          ? _value.receiveTicketStatus
          : receiveTicketStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Option<Ticket>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<UserTicketFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActivateTicketStateCopyWith<$Res>
    implements $ActivateTicketStateCopyWith<$Res> {
  factory _$$_ActivateTicketStateCopyWith(_$_ActivateTicketState value,
          $Res Function(_$_ActivateTicketState) then) =
      __$$_ActivateTicketStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getTicketStatus,
      CubitStatus activateTicketStatus,
      CubitStatus receiveTicketStatus,
      Option<Ticket> ticket,
      Option<String> snackbarMessage,
      Option<UserTicketFailure> failure});
}

/// @nodoc
class __$$_ActivateTicketStateCopyWithImpl<$Res>
    extends _$ActivateTicketStateCopyWithImpl<$Res, _$_ActivateTicketState>
    implements _$$_ActivateTicketStateCopyWith<$Res> {
  __$$_ActivateTicketStateCopyWithImpl(_$_ActivateTicketState _value,
      $Res Function(_$_ActivateTicketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTicketStatus = null,
    Object? activateTicketStatus = null,
    Object? receiveTicketStatus = null,
    Object? ticket = null,
    Object? snackbarMessage = null,
    Object? failure = null,
  }) {
    return _then(_$_ActivateTicketState(
      getTicketStatus: null == getTicketStatus
          ? _value.getTicketStatus
          : getTicketStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      activateTicketStatus: null == activateTicketStatus
          ? _value.activateTicketStatus
          : activateTicketStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      receiveTicketStatus: null == receiveTicketStatus
          ? _value.receiveTicketStatus
          : receiveTicketStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Option<Ticket>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<UserTicketFailure>,
    ));
  }
}

/// @nodoc

class _$_ActivateTicketState implements _ActivateTicketState {
  const _$_ActivateTicketState(
      {required this.getTicketStatus,
      required this.activateTicketStatus,
      required this.receiveTicketStatus,
      required this.ticket,
      required this.snackbarMessage,
      required this.failure});

  @override
  final CubitStatus getTicketStatus;
  @override
  final CubitStatus activateTicketStatus;
  @override
  final CubitStatus receiveTicketStatus;
  @override
  final Option<Ticket> ticket;
  @override
  final Option<String> snackbarMessage;
  @override
  final Option<UserTicketFailure> failure;

  @override
  String toString() {
    return 'ActivateTicketState(getTicketStatus: $getTicketStatus, activateTicketStatus: $activateTicketStatus, receiveTicketStatus: $receiveTicketStatus, ticket: $ticket, snackbarMessage: $snackbarMessage, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivateTicketState &&
            (identical(other.getTicketStatus, getTicketStatus) ||
                other.getTicketStatus == getTicketStatus) &&
            (identical(other.activateTicketStatus, activateTicketStatus) ||
                other.activateTicketStatus == activateTicketStatus) &&
            (identical(other.receiveTicketStatus, receiveTicketStatus) ||
                other.receiveTicketStatus == receiveTicketStatus) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getTicketStatus,
      activateTicketStatus,
      receiveTicketStatus,
      ticket,
      snackbarMessage,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActivateTicketStateCopyWith<_$_ActivateTicketState> get copyWith =>
      __$$_ActivateTicketStateCopyWithImpl<_$_ActivateTicketState>(
          this, _$identity);
}

abstract class _ActivateTicketState implements ActivateTicketState {
  const factory _ActivateTicketState(
          {required final CubitStatus getTicketStatus,
          required final CubitStatus activateTicketStatus,
          required final CubitStatus receiveTicketStatus,
          required final Option<Ticket> ticket,
          required final Option<String> snackbarMessage,
          required final Option<UserTicketFailure> failure}) =
      _$_ActivateTicketState;

  @override
  CubitStatus get getTicketStatus;
  @override
  CubitStatus get activateTicketStatus;
  @override
  CubitStatus get receiveTicketStatus;
  @override
  Option<Ticket> get ticket;
  @override
  Option<String> get snackbarMessage;
  @override
  Option<UserTicketFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ActivateTicketStateCopyWith<_$_ActivateTicketState> get copyWith =>
      throw _privateConstructorUsedError;
}

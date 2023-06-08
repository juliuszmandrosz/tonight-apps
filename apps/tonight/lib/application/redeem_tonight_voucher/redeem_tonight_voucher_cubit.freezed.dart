// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redeem_tonight_voucher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RedeemTonightVoucherState {
  CubitStatus get redeemVoucherStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  Option<TonightVoucherFailure> get failure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RedeemTonightVoucherStateCopyWith<RedeemTonightVoucherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedeemTonightVoucherStateCopyWith<$Res> {
  factory $RedeemTonightVoucherStateCopyWith(RedeemTonightVoucherState value,
          $Res Function(RedeemTonightVoucherState) then) =
      _$RedeemTonightVoucherStateCopyWithImpl<$Res, RedeemTonightVoucherState>;
  @useResult
  $Res call(
      {CubitStatus redeemVoucherStatus,
      Option<String> snackbarMessage,
      Option<TonightVoucherFailure> failure});
}

/// @nodoc
class _$RedeemTonightVoucherStateCopyWithImpl<$Res,
        $Val extends RedeemTonightVoucherState>
    implements $RedeemTonightVoucherStateCopyWith<$Res> {
  _$RedeemTonightVoucherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redeemVoucherStatus = null,
    Object? snackbarMessage = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      redeemVoucherStatus: null == redeemVoucherStatus
          ? _value.redeemVoucherStatus
          : redeemVoucherStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<TonightVoucherFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RedeemTonightVoucherStateCopyWith<$Res>
    implements $RedeemTonightVoucherStateCopyWith<$Res> {
  factory _$$_RedeemTonightVoucherStateCopyWith(
          _$_RedeemTonightVoucherState value,
          $Res Function(_$_RedeemTonightVoucherState) then) =
      __$$_RedeemTonightVoucherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus redeemVoucherStatus,
      Option<String> snackbarMessage,
      Option<TonightVoucherFailure> failure});
}

/// @nodoc
class __$$_RedeemTonightVoucherStateCopyWithImpl<$Res>
    extends _$RedeemTonightVoucherStateCopyWithImpl<$Res,
        _$_RedeemTonightVoucherState>
    implements _$$_RedeemTonightVoucherStateCopyWith<$Res> {
  __$$_RedeemTonightVoucherStateCopyWithImpl(
      _$_RedeemTonightVoucherState _value,
      $Res Function(_$_RedeemTonightVoucherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redeemVoucherStatus = null,
    Object? snackbarMessage = null,
    Object? failure = null,
  }) {
    return _then(_$_RedeemTonightVoucherState(
      redeemVoucherStatus: null == redeemVoucherStatus
          ? _value.redeemVoucherStatus
          : redeemVoucherStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<TonightVoucherFailure>,
    ));
  }
}

/// @nodoc

class _$_RedeemTonightVoucherState implements _RedeemTonightVoucherState {
  const _$_RedeemTonightVoucherState(
      {required this.redeemVoucherStatus,
      required this.snackbarMessage,
      required this.failure});

  @override
  final CubitStatus redeemVoucherStatus;
  @override
  final Option<String> snackbarMessage;
  @override
  final Option<TonightVoucherFailure> failure;

  @override
  String toString() {
    return 'RedeemTonightVoucherState(redeemVoucherStatus: $redeemVoucherStatus, snackbarMessage: $snackbarMessage, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RedeemTonightVoucherState &&
            (identical(other.redeemVoucherStatus, redeemVoucherStatus) ||
                other.redeemVoucherStatus == redeemVoucherStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, redeemVoucherStatus, snackbarMessage, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RedeemTonightVoucherStateCopyWith<_$_RedeemTonightVoucherState>
      get copyWith => __$$_RedeemTonightVoucherStateCopyWithImpl<
          _$_RedeemTonightVoucherState>(this, _$identity);
}

abstract class _RedeemTonightVoucherState implements RedeemTonightVoucherState {
  const factory _RedeemTonightVoucherState(
          {required final CubitStatus redeemVoucherStatus,
          required final Option<String> snackbarMessage,
          required final Option<TonightVoucherFailure> failure}) =
      _$_RedeemTonightVoucherState;

  @override
  CubitStatus get redeemVoucherStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  Option<TonightVoucherFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$_RedeemTonightVoucherStateCopyWith<_$_RedeemTonightVoucherState>
      get copyWith => throw _privateConstructorUsedError;
}

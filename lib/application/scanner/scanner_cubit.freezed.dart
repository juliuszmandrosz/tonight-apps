// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scanner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScannerState {
  Option<Ticket> get lastScannedTicket => throw _privateConstructorUsedError;
  List<Reward> get userRewards => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScannerStateCopyWith<ScannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerStateCopyWith<$Res> {
  factory $ScannerStateCopyWith(
          ScannerState value, $Res Function(ScannerState) then) =
      _$ScannerStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Ticket> lastScannedTicket,
      List<Reward> userRewards,
      CubitStatus status,
      Option<String> errorMessage});
}

/// @nodoc
class _$ScannerStateCopyWithImpl<$Res> implements $ScannerStateCopyWith<$Res> {
  _$ScannerStateCopyWithImpl(this._value, this._then);

  final ScannerState _value;
  // ignore: unused_field
  final $Res Function(ScannerState) _then;

  @override
  $Res call({
    Object? lastScannedTicket = freezed,
    Object? userRewards = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      lastScannedTicket: lastScannedTicket == freezed
          ? _value.lastScannedTicket
          : lastScannedTicket // ignore: cast_nullable_to_non_nullable
              as Option<Ticket>,
      userRewards: userRewards == freezed
          ? _value.userRewards
          : userRewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_ScannerStateCopyWith<$Res>
    implements $ScannerStateCopyWith<$Res> {
  factory _$$_ScannerStateCopyWith(
          _$_ScannerState value, $Res Function(_$_ScannerState) then) =
      __$$_ScannerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Ticket> lastScannedTicket,
      List<Reward> userRewards,
      CubitStatus status,
      Option<String> errorMessage});
}

/// @nodoc
class __$$_ScannerStateCopyWithImpl<$Res>
    extends _$ScannerStateCopyWithImpl<$Res>
    implements _$$_ScannerStateCopyWith<$Res> {
  __$$_ScannerStateCopyWithImpl(
      _$_ScannerState _value, $Res Function(_$_ScannerState) _then)
      : super(_value, (v) => _then(v as _$_ScannerState));

  @override
  _$_ScannerState get _value => super._value as _$_ScannerState;

  @override
  $Res call({
    Object? lastScannedTicket = freezed,
    Object? userRewards = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ScannerState(
      lastScannedTicket: lastScannedTicket == freezed
          ? _value.lastScannedTicket
          : lastScannedTicket // ignore: cast_nullable_to_non_nullable
              as Option<Ticket>,
      userRewards: userRewards == freezed
          ? _value._userRewards
          : userRewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_ScannerState implements _ScannerState {
  const _$_ScannerState(
      {required this.lastScannedTicket,
      required final List<Reward> userRewards,
      required this.status,
      required this.errorMessage})
      : _userRewards = userRewards;

  @override
  final Option<Ticket> lastScannedTicket;
  final List<Reward> _userRewards;
  @override
  List<Reward> get userRewards {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userRewards);
  }

  @override
  final CubitStatus status;
  @override
  final Option<String> errorMessage;

  @override
  String toString() {
    return 'ScannerState(lastScannedTicket: $lastScannedTicket, userRewards: $userRewards, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScannerState &&
            const DeepCollectionEquality()
                .equals(other.lastScannedTicket, lastScannedTicket) &&
            const DeepCollectionEquality()
                .equals(other._userRewards, _userRewards) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lastScannedTicket),
      const DeepCollectionEquality().hash(_userRewards),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ScannerStateCopyWith<_$_ScannerState> get copyWith =>
      __$$_ScannerStateCopyWithImpl<_$_ScannerState>(this, _$identity);
}

abstract class _ScannerState implements ScannerState {
  const factory _ScannerState(
      {required final Option<Ticket> lastScannedTicket,
      required final List<Reward> userRewards,
      required final CubitStatus status,
      required final Option<String> errorMessage}) = _$_ScannerState;

  @override
  Option<Ticket> get lastScannedTicket;
  @override
  List<Reward> get userRewards;
  @override
  CubitStatus get status;
  @override
  Option<String> get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ScannerStateCopyWith<_$_ScannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

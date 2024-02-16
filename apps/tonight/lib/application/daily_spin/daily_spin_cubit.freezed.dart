// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_spin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DailySpinState {
  CubitStatus get getRewardsStatus => throw _privateConstructorUsedError;
  CubitStatus get spinStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  Option<int> get reward => throw _privateConstructorUsedError;
  DailySpinRewards get availableRewards => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailySpinStateCopyWith<DailySpinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailySpinStateCopyWith<$Res> {
  factory $DailySpinStateCopyWith(
          DailySpinState value, $Res Function(DailySpinState) then) =
      _$DailySpinStateCopyWithImpl<$Res, DailySpinState>;
  @useResult
  $Res call(
      {CubitStatus getRewardsStatus,
      CubitStatus spinStatus,
      Option<String> snackbarMessage,
      Option<int> reward,
      DailySpinRewards availableRewards});
}

/// @nodoc
class _$DailySpinStateCopyWithImpl<$Res, $Val extends DailySpinState>
    implements $DailySpinStateCopyWith<$Res> {
  _$DailySpinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getRewardsStatus = null,
    Object? spinStatus = null,
    Object? snackbarMessage = null,
    Object? reward = null,
    Object? availableRewards = null,
  }) {
    return _then(_value.copyWith(
      getRewardsStatus: null == getRewardsStatus
          ? _value.getRewardsStatus
          : getRewardsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      spinStatus: null == spinStatus
          ? _value.spinStatus
          : spinStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      availableRewards: null == availableRewards
          ? _value.availableRewards
          : availableRewards // ignore: cast_nullable_to_non_nullable
              as DailySpinRewards,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailySpinStateImplCopyWith<$Res>
    implements $DailySpinStateCopyWith<$Res> {
  factory _$$DailySpinStateImplCopyWith(_$DailySpinStateImpl value,
          $Res Function(_$DailySpinStateImpl) then) =
      __$$DailySpinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getRewardsStatus,
      CubitStatus spinStatus,
      Option<String> snackbarMessage,
      Option<int> reward,
      DailySpinRewards availableRewards});
}

/// @nodoc
class __$$DailySpinStateImplCopyWithImpl<$Res>
    extends _$DailySpinStateCopyWithImpl<$Res, _$DailySpinStateImpl>
    implements _$$DailySpinStateImplCopyWith<$Res> {
  __$$DailySpinStateImplCopyWithImpl(
      _$DailySpinStateImpl _value, $Res Function(_$DailySpinStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getRewardsStatus = null,
    Object? spinStatus = null,
    Object? snackbarMessage = null,
    Object? reward = null,
    Object? availableRewards = null,
  }) {
    return _then(_$DailySpinStateImpl(
      getRewardsStatus: null == getRewardsStatus
          ? _value.getRewardsStatus
          : getRewardsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      spinStatus: null == spinStatus
          ? _value.spinStatus
          : spinStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      availableRewards: null == availableRewards
          ? _value.availableRewards
          : availableRewards // ignore: cast_nullable_to_non_nullable
              as DailySpinRewards,
    ));
  }
}

/// @nodoc

class _$DailySpinStateImpl implements _DailySpinState {
  const _$DailySpinStateImpl(
      {required this.getRewardsStatus,
      required this.spinStatus,
      required this.snackbarMessage,
      required this.reward,
      required this.availableRewards});

  @override
  final CubitStatus getRewardsStatus;
  @override
  final CubitStatus spinStatus;
  @override
  final Option<String> snackbarMessage;
  @override
  final Option<int> reward;
  @override
  final DailySpinRewards availableRewards;

  @override
  String toString() {
    return 'DailySpinState(getRewardsStatus: $getRewardsStatus, spinStatus: $spinStatus, snackbarMessage: $snackbarMessage, reward: $reward, availableRewards: $availableRewards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailySpinStateImpl &&
            (identical(other.getRewardsStatus, getRewardsStatus) ||
                other.getRewardsStatus == getRewardsStatus) &&
            (identical(other.spinStatus, spinStatus) ||
                other.spinStatus == spinStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.availableRewards, availableRewards) ||
                other.availableRewards == availableRewards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getRewardsStatus, spinStatus,
      snackbarMessage, reward, availableRewards);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailySpinStateImplCopyWith<_$DailySpinStateImpl> get copyWith =>
      __$$DailySpinStateImplCopyWithImpl<_$DailySpinStateImpl>(
          this, _$identity);
}

abstract class _DailySpinState implements DailySpinState {
  const factory _DailySpinState(
      {required final CubitStatus getRewardsStatus,
      required final CubitStatus spinStatus,
      required final Option<String> snackbarMessage,
      required final Option<int> reward,
      required final DailySpinRewards availableRewards}) = _$DailySpinStateImpl;

  @override
  CubitStatus get getRewardsStatus;
  @override
  CubitStatus get spinStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  Option<int> get reward;
  @override
  DailySpinRewards get availableRewards;
  @override
  @JsonKey(ignore: true)
  _$$DailySpinStateImplCopyWith<_$DailySpinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

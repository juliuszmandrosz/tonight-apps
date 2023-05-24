// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RewardListState {
  CubitStatus get initialStatus => throw _privateConstructorUsedError;
  CubitStatus get deletingStatus => throw _privateConstructorUsedError;
  List<Reward> get rewards => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardListStateCopyWith<RewardListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardListStateCopyWith<$Res> {
  factory $RewardListStateCopyWith(
          RewardListState value, $Res Function(RewardListState) then) =
      _$RewardListStateCopyWithImpl<$Res, RewardListState>;
  @useResult
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus deletingStatus,
      List<Reward> rewards,
      Option<String> errorMessage});
}

/// @nodoc
class _$RewardListStateCopyWithImpl<$Res, $Val extends RewardListState>
    implements $RewardListStateCopyWith<$Res> {
  _$RewardListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialStatus = null,
    Object? deletingStatus = null,
    Object? rewards = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deletingStatus: null == deletingStatus
          ? _value.deletingStatus
          : deletingStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RewardListStateCopyWith<$Res>
    implements $RewardListStateCopyWith<$Res> {
  factory _$$_RewardListStateCopyWith(
          _$_RewardListState value, $Res Function(_$_RewardListState) then) =
      __$$_RewardListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus deletingStatus,
      List<Reward> rewards,
      Option<String> errorMessage});
}

/// @nodoc
class __$$_RewardListStateCopyWithImpl<$Res>
    extends _$RewardListStateCopyWithImpl<$Res, _$_RewardListState>
    implements _$$_RewardListStateCopyWith<$Res> {
  __$$_RewardListStateCopyWithImpl(
      _$_RewardListState _value, $Res Function(_$_RewardListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialStatus = null,
    Object? deletingStatus = null,
    Object? rewards = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_RewardListState(
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deletingStatus: null == deletingStatus
          ? _value.deletingStatus
          : deletingStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_RewardListState extends _RewardListState {
  _$_RewardListState(
      {required this.initialStatus,
      required this.deletingStatus,
      required final List<Reward> rewards,
      required this.errorMessage})
      : _rewards = rewards,
        super._();

  @override
  final CubitStatus initialStatus;
  @override
  final CubitStatus deletingStatus;
  final List<Reward> _rewards;
  @override
  List<Reward> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  final Option<String> errorMessage;

  @override
  String toString() {
    return 'RewardListState(initialStatus: $initialStatus, deletingStatus: $deletingStatus, rewards: $rewards, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardListState &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(other.deletingStatus, deletingStatus) ||
                other.deletingStatus == deletingStatus) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialStatus, deletingStatus,
      const DeepCollectionEquality().hash(_rewards), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardListStateCopyWith<_$_RewardListState> get copyWith =>
      __$$_RewardListStateCopyWithImpl<_$_RewardListState>(this, _$identity);
}

abstract class _RewardListState extends RewardListState {
  factory _RewardListState(
      {required final CubitStatus initialStatus,
      required final CubitStatus deletingStatus,
      required final List<Reward> rewards,
      required final Option<String> errorMessage}) = _$_RewardListState;
  _RewardListState._() : super._();

  @override
  CubitStatus get initialStatus;
  @override
  CubitStatus get deletingStatus;
  @override
  List<Reward> get rewards;
  @override
  Option<String> get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_RewardListStateCopyWith<_$_RewardListState> get copyWith =>
      throw _privateConstructorUsedError;
}

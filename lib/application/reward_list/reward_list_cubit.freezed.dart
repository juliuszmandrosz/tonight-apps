// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$RewardListStateCopyWithImpl<$Res>;
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus deletingStatus,
      List<Reward> rewards,
      Option<String> errorMessage});
}

/// @nodoc
class _$RewardListStateCopyWithImpl<$Res>
    implements $RewardListStateCopyWith<$Res> {
  _$RewardListStateCopyWithImpl(this._value, this._then);

  final RewardListState _value;
  // ignore: unused_field
  final $Res Function(RewardListState) _then;

  @override
  $Res call({
    Object? initialStatus = freezed,
    Object? deletingStatus = freezed,
    Object? rewards = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      initialStatus: initialStatus == freezed
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deletingStatus: deletingStatus == freezed
          ? _value.deletingStatus
          : deletingStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      rewards: rewards == freezed
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_RewardListStateCopyWith<$Res>
    implements $RewardListStateCopyWith<$Res> {
  factory _$$_RewardListStateCopyWith(
          _$_RewardListState value, $Res Function(_$_RewardListState) then) =
      __$$_RewardListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus deletingStatus,
      List<Reward> rewards,
      Option<String> errorMessage});
}

/// @nodoc
class __$$_RewardListStateCopyWithImpl<$Res>
    extends _$RewardListStateCopyWithImpl<$Res>
    implements _$$_RewardListStateCopyWith<$Res> {
  __$$_RewardListStateCopyWithImpl(
      _$_RewardListState _value, $Res Function(_$_RewardListState) _then)
      : super(_value, (v) => _then(v as _$_RewardListState));

  @override
  _$_RewardListState get _value => super._value as _$_RewardListState;

  @override
  $Res call({
    Object? initialStatus = freezed,
    Object? deletingStatus = freezed,
    Object? rewards = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RewardListState(
      initialStatus: initialStatus == freezed
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deletingStatus: deletingStatus == freezed
          ? _value.deletingStatus
          : deletingStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      rewards: rewards == freezed
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      errorMessage: errorMessage == freezed
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
            const DeepCollectionEquality()
                .equals(other.initialStatus, initialStatus) &&
            const DeepCollectionEquality()
                .equals(other.deletingStatus, deletingStatus) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialStatus),
      const DeepCollectionEquality().hash(deletingStatus),
      const DeepCollectionEquality().hash(_rewards),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
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

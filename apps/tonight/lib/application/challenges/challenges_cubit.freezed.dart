// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenges_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChallengesState {
  List<Challenge> get currentChallenges => throw _privateConstructorUsedError;
  List<Challenge> get previousChallenges => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  CubitStatus get joinChallengeStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChallengesStateCopyWith<ChallengesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengesStateCopyWith<$Res> {
  factory $ChallengesStateCopyWith(
          ChallengesState value, $Res Function(ChallengesState) then) =
      _$ChallengesStateCopyWithImpl<$Res, ChallengesState>;
  @useResult
  $Res call(
      {List<Challenge> currentChallenges,
      List<Challenge> previousChallenges,
      CubitStatus status,
      CubitStatus joinChallengeStatus});
}

/// @nodoc
class _$ChallengesStateCopyWithImpl<$Res, $Val extends ChallengesState>
    implements $ChallengesStateCopyWith<$Res> {
  _$ChallengesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentChallenges = null,
    Object? previousChallenges = null,
    Object? status = null,
    Object? joinChallengeStatus = null,
  }) {
    return _then(_value.copyWith(
      currentChallenges: null == currentChallenges
          ? _value.currentChallenges
          : currentChallenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      previousChallenges: null == previousChallenges
          ? _value.previousChallenges
          : previousChallenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      joinChallengeStatus: null == joinChallengeStatus
          ? _value.joinChallengeStatus
          : joinChallengeStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChallengesStateCopyWith<$Res>
    implements $ChallengesStateCopyWith<$Res> {
  factory _$$_ChallengesStateCopyWith(
          _$_ChallengesState value, $Res Function(_$_ChallengesState) then) =
      __$$_ChallengesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Challenge> currentChallenges,
      List<Challenge> previousChallenges,
      CubitStatus status,
      CubitStatus joinChallengeStatus});
}

/// @nodoc
class __$$_ChallengesStateCopyWithImpl<$Res>
    extends _$ChallengesStateCopyWithImpl<$Res, _$_ChallengesState>
    implements _$$_ChallengesStateCopyWith<$Res> {
  __$$_ChallengesStateCopyWithImpl(
      _$_ChallengesState _value, $Res Function(_$_ChallengesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentChallenges = null,
    Object? previousChallenges = null,
    Object? status = null,
    Object? joinChallengeStatus = null,
  }) {
    return _then(_$_ChallengesState(
      currentChallenges: null == currentChallenges
          ? _value._currentChallenges
          : currentChallenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      previousChallenges: null == previousChallenges
          ? _value._previousChallenges
          : previousChallenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      joinChallengeStatus: null == joinChallengeStatus
          ? _value.joinChallengeStatus
          : joinChallengeStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_ChallengesState implements _ChallengesState {
  const _$_ChallengesState(
      {required final List<Challenge> currentChallenges,
      required final List<Challenge> previousChallenges,
      required this.status,
      required this.joinChallengeStatus})
      : _currentChallenges = currentChallenges,
        _previousChallenges = previousChallenges;

  final List<Challenge> _currentChallenges;
  @override
  List<Challenge> get currentChallenges {
    if (_currentChallenges is EqualUnmodifiableListView)
      return _currentChallenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentChallenges);
  }

  final List<Challenge> _previousChallenges;
  @override
  List<Challenge> get previousChallenges {
    if (_previousChallenges is EqualUnmodifiableListView)
      return _previousChallenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousChallenges);
  }

  @override
  final CubitStatus status;
  @override
  final CubitStatus joinChallengeStatus;

  @override
  String toString() {
    return 'ChallengesState(currentChallenges: $currentChallenges, previousChallenges: $previousChallenges, status: $status, joinChallengeStatus: $joinChallengeStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChallengesState &&
            const DeepCollectionEquality()
                .equals(other._currentChallenges, _currentChallenges) &&
            const DeepCollectionEquality()
                .equals(other._previousChallenges, _previousChallenges) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.joinChallengeStatus, joinChallengeStatus) ||
                other.joinChallengeStatus == joinChallengeStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentChallenges),
      const DeepCollectionEquality().hash(_previousChallenges),
      status,
      joinChallengeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChallengesStateCopyWith<_$_ChallengesState> get copyWith =>
      __$$_ChallengesStateCopyWithImpl<_$_ChallengesState>(this, _$identity);
}

abstract class _ChallengesState implements ChallengesState {
  const factory _ChallengesState(
      {required final List<Challenge> currentChallenges,
      required final List<Challenge> previousChallenges,
      required final CubitStatus status,
      required final CubitStatus joinChallengeStatus}) = _$_ChallengesState;

  @override
  List<Challenge> get currentChallenges;
  @override
  List<Challenge> get previousChallenges;
  @override
  CubitStatus get status;
  @override
  CubitStatus get joinChallengeStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ChallengesStateCopyWith<_$_ChallengesState> get copyWith =>
      throw _privateConstructorUsedError;
}

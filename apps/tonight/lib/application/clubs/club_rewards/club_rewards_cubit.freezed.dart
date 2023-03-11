// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_rewards_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubRewardsState {
  String get clubId => throw _privateConstructorUsedError;
  Option<ClubRewardsWithAttendance> get clubRewardsWithAttendance =>
      throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubRewardsStateCopyWith<ClubRewardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubRewardsStateCopyWith<$Res> {
  factory $ClubRewardsStateCopyWith(
          ClubRewardsState value, $Res Function(ClubRewardsState) then) =
      _$ClubRewardsStateCopyWithImpl<$Res, ClubRewardsState>;
  @useResult
  $Res call(
      {String clubId,
      Option<ClubRewardsWithAttendance> clubRewardsWithAttendance,
      CubitStatus status});
}

/// @nodoc
class _$ClubRewardsStateCopyWithImpl<$Res, $Val extends ClubRewardsState>
    implements $ClubRewardsStateCopyWith<$Res> {
  _$ClubRewardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? clubRewardsWithAttendance = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      clubRewardsWithAttendance: null == clubRewardsWithAttendance
          ? _value.clubRewardsWithAttendance
          : clubRewardsWithAttendance // ignore: cast_nullable_to_non_nullable
              as Option<ClubRewardsWithAttendance>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubRewardsStateCopyWith<$Res>
    implements $ClubRewardsStateCopyWith<$Res> {
  factory _$$_ClubRewardsStateCopyWith(
          _$_ClubRewardsState value, $Res Function(_$_ClubRewardsState) then) =
      __$$_ClubRewardsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String clubId,
      Option<ClubRewardsWithAttendance> clubRewardsWithAttendance,
      CubitStatus status});
}

/// @nodoc
class __$$_ClubRewardsStateCopyWithImpl<$Res>
    extends _$ClubRewardsStateCopyWithImpl<$Res, _$_ClubRewardsState>
    implements _$$_ClubRewardsStateCopyWith<$Res> {
  __$$_ClubRewardsStateCopyWithImpl(
      _$_ClubRewardsState _value, $Res Function(_$_ClubRewardsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? clubRewardsWithAttendance = null,
    Object? status = null,
  }) {
    return _then(_$_ClubRewardsState(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      clubRewardsWithAttendance: null == clubRewardsWithAttendance
          ? _value.clubRewardsWithAttendance
          : clubRewardsWithAttendance // ignore: cast_nullable_to_non_nullable
              as Option<ClubRewardsWithAttendance>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_ClubRewardsState implements _ClubRewardsState {
  const _$_ClubRewardsState(
      {required this.clubId,
      required this.clubRewardsWithAttendance,
      required this.status});

  @override
  final String clubId;
  @override
  final Option<ClubRewardsWithAttendance> clubRewardsWithAttendance;
  @override
  final CubitStatus status;

  @override
  String toString() {
    return 'ClubRewardsState(clubId: $clubId, clubRewardsWithAttendance: $clubRewardsWithAttendance, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubRewardsState &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.clubRewardsWithAttendance,
                    clubRewardsWithAttendance) ||
                other.clubRewardsWithAttendance == clubRewardsWithAttendance) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clubId, clubRewardsWithAttendance, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubRewardsStateCopyWith<_$_ClubRewardsState> get copyWith =>
      __$$_ClubRewardsStateCopyWithImpl<_$_ClubRewardsState>(this, _$identity);
}

abstract class _ClubRewardsState implements ClubRewardsState {
  const factory _ClubRewardsState(
      {required final String clubId,
      required final Option<ClubRewardsWithAttendance>
          clubRewardsWithAttendance,
      required final CubitStatus status}) = _$_ClubRewardsState;

  @override
  String get clubId;
  @override
  Option<ClubRewardsWithAttendance> get clubRewardsWithAttendance;
  @override
  CubitStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ClubRewardsStateCopyWith<_$_ClubRewardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

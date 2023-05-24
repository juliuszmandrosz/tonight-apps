// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OverviewState {
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<ClubSales> get clubSales => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OverviewStateCopyWith<OverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewStateCopyWith<$Res> {
  factory $OverviewStateCopyWith(
          OverviewState value, $Res Function(OverviewState) then) =
      _$OverviewStateCopyWithImpl<$Res, OverviewState>;
  @useResult
  $Res call({CubitStatus status, Option<ClubSales> clubSales});
}

/// @nodoc
class _$OverviewStateCopyWithImpl<$Res, $Val extends OverviewState>
    implements $OverviewStateCopyWith<$Res> {
  _$OverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? clubSales = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      clubSales: null == clubSales
          ? _value.clubSales
          : clubSales // ignore: cast_nullable_to_non_nullable
              as Option<ClubSales>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OverviewStateCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$_OverviewStateCopyWith(
          _$_OverviewState value, $Res Function(_$_OverviewState) then) =
      __$$_OverviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CubitStatus status, Option<ClubSales> clubSales});
}

/// @nodoc
class __$$_OverviewStateCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$_OverviewState>
    implements _$$_OverviewStateCopyWith<$Res> {
  __$$_OverviewStateCopyWithImpl(
      _$_OverviewState _value, $Res Function(_$_OverviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? clubSales = null,
  }) {
    return _then(_$_OverviewState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      clubSales: null == clubSales
          ? _value.clubSales
          : clubSales // ignore: cast_nullable_to_non_nullable
              as Option<ClubSales>,
    ));
  }
}

/// @nodoc

class _$_OverviewState implements _OverviewState {
  const _$_OverviewState({required this.status, required this.clubSales});

  @override
  final CubitStatus status;
  @override
  final Option<ClubSales> clubSales;

  @override
  String toString() {
    return 'OverviewState(status: $status, clubSales: $clubSales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OverviewState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.clubSales, clubSales) ||
                other.clubSales == clubSales));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, clubSales);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OverviewStateCopyWith<_$_OverviewState> get copyWith =>
      __$$_OverviewStateCopyWithImpl<_$_OverviewState>(this, _$identity);
}

abstract class _OverviewState implements OverviewState {
  const factory _OverviewState(
      {required final CubitStatus status,
      required final Option<ClubSales> clubSales}) = _$_OverviewState;

  @override
  CubitStatus get status;
  @override
  Option<ClubSales> get clubSales;
  @override
  @JsonKey(ignore: true)
  _$$_OverviewStateCopyWith<_$_OverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

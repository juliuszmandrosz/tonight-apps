// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubInfoState {
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<Club> get club => throw _privateConstructorUsedError;
  Option<CurrencyParams> get currencyParams =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubInfoStateCopyWith<ClubInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubInfoStateCopyWith<$Res> {
  factory $ClubInfoStateCopyWith(
          ClubInfoState value, $Res Function(ClubInfoState) then) =
      _$ClubInfoStateCopyWithImpl<$Res>;
  $Res call(
      {CubitStatus status,
      Option<Club> club,
      Option<CurrencyParams> currencyParams});
}

/// @nodoc
class _$ClubInfoStateCopyWithImpl<$Res>
    implements $ClubInfoStateCopyWith<$Res> {
  _$ClubInfoStateCopyWithImpl(this._value, this._then);

  final ClubInfoState _value;
  // ignore: unused_field
  final $Res Function(ClubInfoState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? club = freezed,
    Object? currencyParams = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      club: club == freezed
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as Option<Club>,
      currencyParams: currencyParams == freezed
          ? _value.currencyParams
          : currencyParams // ignore: cast_nullable_to_non_nullable
              as Option<CurrencyParams>,
    ));
  }
}

/// @nodoc
abstract class _$$_ClubInfoStateCopyWith<$Res>
    implements $ClubInfoStateCopyWith<$Res> {
  factory _$$_ClubInfoStateCopyWith(
          _$_ClubInfoState value, $Res Function(_$_ClubInfoState) then) =
      __$$_ClubInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CubitStatus status,
      Option<Club> club,
      Option<CurrencyParams> currencyParams});
}

/// @nodoc
class __$$_ClubInfoStateCopyWithImpl<$Res>
    extends _$ClubInfoStateCopyWithImpl<$Res>
    implements _$$_ClubInfoStateCopyWith<$Res> {
  __$$_ClubInfoStateCopyWithImpl(
      _$_ClubInfoState _value, $Res Function(_$_ClubInfoState) _then)
      : super(_value, (v) => _then(v as _$_ClubInfoState));

  @override
  _$_ClubInfoState get _value => super._value as _$_ClubInfoState;

  @override
  $Res call({
    Object? status = freezed,
    Object? club = freezed,
    Object? currencyParams = freezed,
  }) {
    return _then(_$_ClubInfoState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      club: club == freezed
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as Option<Club>,
      currencyParams: currencyParams == freezed
          ? _value.currencyParams
          : currencyParams // ignore: cast_nullable_to_non_nullable
              as Option<CurrencyParams>,
    ));
  }
}

/// @nodoc

class _$_ClubInfoState implements _ClubInfoState {
  const _$_ClubInfoState(
      {required this.status, required this.club, required this.currencyParams});

  @override
  final CubitStatus status;
  @override
  final Option<Club> club;
  @override
  final Option<CurrencyParams> currencyParams;

  @override
  String toString() {
    return 'ClubInfoState(status: $status, club: $club, currencyParams: $currencyParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubInfoState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.club, club) &&
            const DeepCollectionEquality()
                .equals(other.currencyParams, currencyParams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(club),
      const DeepCollectionEquality().hash(currencyParams));

  @JsonKey(ignore: true)
  @override
  _$$_ClubInfoStateCopyWith<_$_ClubInfoState> get copyWith =>
      __$$_ClubInfoStateCopyWithImpl<_$_ClubInfoState>(this, _$identity);
}

abstract class _ClubInfoState implements ClubInfoState {
  const factory _ClubInfoState(
      {required final CubitStatus status,
      required final Option<Club> club,
      required final Option<CurrencyParams> currencyParams}) = _$_ClubInfoState;

  @override
  CubitStatus get status;
  @override
  Option<Club> get club;
  @override
  Option<CurrencyParams> get currencyParams;
  @override
  @JsonKey(ignore: true)
  _$$_ClubInfoStateCopyWith<_$_ClubInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

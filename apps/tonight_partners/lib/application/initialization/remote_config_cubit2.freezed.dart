// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_config_cubit2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteConfigState2 {
  CubitStatus get cubitStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteConfigState2CopyWith<RemoteConfigState2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigState2CopyWith<$Res> {
  factory $RemoteConfigState2CopyWith(
          RemoteConfigState2 value, $Res Function(RemoteConfigState2) then) =
      _$RemoteConfigState2CopyWithImpl<$Res>;
  $Res call({CubitStatus cubitStatus});
}

/// @nodoc
class _$RemoteConfigState2CopyWithImpl<$Res>
    implements $RemoteConfigState2CopyWith<$Res> {
  _$RemoteConfigState2CopyWithImpl(this._value, this._then);

  final RemoteConfigState2 _value;
  // ignore: unused_field
  final $Res Function(RemoteConfigState2) _then;

  @override
  $Res call({
    Object? cubitStatus = freezed,
  }) {
    return _then(_value.copyWith(
      cubitStatus: cubitStatus == freezed
          ? _value.cubitStatus
          : cubitStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_RemoteConfigState2CopyWith<$Res>
    implements $RemoteConfigState2CopyWith<$Res> {
  factory _$$_RemoteConfigState2CopyWith(_$_RemoteConfigState2 value,
          $Res Function(_$_RemoteConfigState2) then) =
      __$$_RemoteConfigState2CopyWithImpl<$Res>;
  @override
  $Res call({CubitStatus cubitStatus});
}

/// @nodoc
class __$$_RemoteConfigState2CopyWithImpl<$Res>
    extends _$RemoteConfigState2CopyWithImpl<$Res>
    implements _$$_RemoteConfigState2CopyWith<$Res> {
  __$$_RemoteConfigState2CopyWithImpl(
      _$_RemoteConfigState2 _value, $Res Function(_$_RemoteConfigState2) _then)
      : super(_value, (v) => _then(v as _$_RemoteConfigState2));

  @override
  _$_RemoteConfigState2 get _value => super._value as _$_RemoteConfigState2;

  @override
  $Res call({
    Object? cubitStatus = freezed,
  }) {
    return _then(_$_RemoteConfigState2(
      cubitStatus: cubitStatus == freezed
          ? _value.cubitStatus
          : cubitStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_RemoteConfigState2 extends _RemoteConfigState2 {
  _$_RemoteConfigState2({required this.cubitStatus}) : super._();

  @override
  final CubitStatus cubitStatus;

  @override
  String toString() {
    return 'RemoteConfigState2(cubitStatus: $cubitStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteConfigState2 &&
            const DeepCollectionEquality()
                .equals(other.cubitStatus, cubitStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cubitStatus));

  @JsonKey(ignore: true)
  @override
  _$$_RemoteConfigState2CopyWith<_$_RemoteConfigState2> get copyWith =>
      __$$_RemoteConfigState2CopyWithImpl<_$_RemoteConfigState2>(
          this, _$identity);
}

abstract class _RemoteConfigState2 extends RemoteConfigState2 {
  factory _RemoteConfigState2({required final CubitStatus cubitStatus}) =
      _$_RemoteConfigState2;
  _RemoteConfigState2._() : super._();

  @override
  CubitStatus get cubitStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteConfigState2CopyWith<_$_RemoteConfigState2> get copyWith =>
      throw _privateConstructorUsedError;
}

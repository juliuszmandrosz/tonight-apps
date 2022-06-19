// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_config_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteConfigState {
  CubitStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteConfigStateCopyWith<RemoteConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigStateCopyWith<$Res> {
  factory $RemoteConfigStateCopyWith(
          RemoteConfigState value, $Res Function(RemoteConfigState) then) =
      _$RemoteConfigStateCopyWithImpl<$Res>;
  $Res call({CubitStatus status});
}

/// @nodoc
class _$RemoteConfigStateCopyWithImpl<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  _$RemoteConfigStateCopyWithImpl(this._value, this._then);

  final RemoteConfigState _value;
  // ignore: unused_field
  final $Res Function(RemoteConfigState) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_RemoteConfigStateCopyWith<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  factory _$$_RemoteConfigStateCopyWith(_$_RemoteConfigState value,
          $Res Function(_$_RemoteConfigState) then) =
      __$$_RemoteConfigStateCopyWithImpl<$Res>;
  @override
  $Res call({CubitStatus status});
}

/// @nodoc
class __$$_RemoteConfigStateCopyWithImpl<$Res>
    extends _$RemoteConfigStateCopyWithImpl<$Res>
    implements _$$_RemoteConfigStateCopyWith<$Res> {
  __$$_RemoteConfigStateCopyWithImpl(
      _$_RemoteConfigState _value, $Res Function(_$_RemoteConfigState) _then)
      : super(_value, (v) => _then(v as _$_RemoteConfigState));

  @override
  _$_RemoteConfigState get _value => super._value as _$_RemoteConfigState;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$_RemoteConfigState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_RemoteConfigState extends _RemoteConfigState {
  _$_RemoteConfigState({required this.status}) : super._();

  @override
  final CubitStatus status;

  @override
  String toString() {
    return 'RemoteConfigState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteConfigState &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_RemoteConfigStateCopyWith<_$_RemoteConfigState> get copyWith =>
      __$$_RemoteConfigStateCopyWithImpl<_$_RemoteConfigState>(
          this, _$identity);
}

abstract class _RemoteConfigState extends RemoteConfigState {
  factory _RemoteConfigState({required final CubitStatus status}) =
      _$_RemoteConfigState;
  _RemoteConfigState._() : super._();

  @override
  CubitStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteConfigStateCopyWith<_$_RemoteConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

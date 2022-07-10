// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_check_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkCheckState {
  bool get isConnected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkCheckStateCopyWith<NetworkCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkCheckStateCopyWith<$Res> {
  factory $NetworkCheckStateCopyWith(
          NetworkCheckState value, $Res Function(NetworkCheckState) then) =
      _$NetworkCheckStateCopyWithImpl<$Res>;
  $Res call({bool isConnected});
}

/// @nodoc
class _$NetworkCheckStateCopyWithImpl<$Res>
    implements $NetworkCheckStateCopyWith<$Res> {
  _$NetworkCheckStateCopyWithImpl(this._value, this._then);

  final NetworkCheckState _value;
  // ignore: unused_field
  final $Res Function(NetworkCheckState) _then;

  @override
  $Res call({
    Object? isConnected = freezed,
  }) {
    return _then(_value.copyWith(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_NetworkCheckStateCopyWith<$Res>
    implements $NetworkCheckStateCopyWith<$Res> {
  factory _$$_NetworkCheckStateCopyWith(_$_NetworkCheckState value,
          $Res Function(_$_NetworkCheckState) then) =
      __$$_NetworkCheckStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isConnected});
}

/// @nodoc
class __$$_NetworkCheckStateCopyWithImpl<$Res>
    extends _$NetworkCheckStateCopyWithImpl<$Res>
    implements _$$_NetworkCheckStateCopyWith<$Res> {
  __$$_NetworkCheckStateCopyWithImpl(
      _$_NetworkCheckState _value, $Res Function(_$_NetworkCheckState) _then)
      : super(_value, (v) => _then(v as _$_NetworkCheckState));

  @override
  _$_NetworkCheckState get _value => super._value as _$_NetworkCheckState;

  @override
  $Res call({
    Object? isConnected = freezed,
  }) {
    return _then(_$_NetworkCheckState(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NetworkCheckState extends _NetworkCheckState {
  _$_NetworkCheckState({required this.isConnected}) : super._();

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'NetworkCheckState(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkCheckState &&
            const DeepCollectionEquality()
                .equals(other.isConnected, isConnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isConnected));

  @JsonKey(ignore: true)
  @override
  _$$_NetworkCheckStateCopyWith<_$_NetworkCheckState> get copyWith =>
      __$$_NetworkCheckStateCopyWithImpl<_$_NetworkCheckState>(
          this, _$identity);
}

abstract class _NetworkCheckState extends NetworkCheckState {
  factory _NetworkCheckState({required final bool isConnected}) =
      _$_NetworkCheckState;
  _NetworkCheckState._() : super._();

  @override
  bool get isConnected;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkCheckStateCopyWith<_$_NetworkCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

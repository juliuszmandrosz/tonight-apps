// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileFailureTearOff {
  const _$ProfileFailureTearOff();

  _ProfileFailure call({required String message}) {
    return _ProfileFailure(
      message: message,
    );
  }
}

/// @nodoc
const $ProfileFailure = _$ProfileFailureTearOff();

/// @nodoc
mixin _$ProfileFailure {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFailureCopyWith<ProfileFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFailureCopyWith<$Res> {
  factory $ProfileFailureCopyWith(
          ProfileFailure value, $Res Function(ProfileFailure) then) =
      _$ProfileFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ProfileFailureCopyWithImpl<$Res>
    implements $ProfileFailureCopyWith<$Res> {
  _$ProfileFailureCopyWithImpl(this._value, this._then);

  final ProfileFailure _value;
  // ignore: unused_field
  final $Res Function(ProfileFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileFailureCopyWith<$Res>
    implements $ProfileFailureCopyWith<$Res> {
  factory _$ProfileFailureCopyWith(
          _ProfileFailure value, $Res Function(_ProfileFailure) then) =
      __$ProfileFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ProfileFailureCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res>
    implements _$ProfileFailureCopyWith<$Res> {
  __$ProfileFailureCopyWithImpl(
      _ProfileFailure _value, $Res Function(_ProfileFailure) _then)
      : super(_value, (v) => _then(v as _ProfileFailure));

  @override
  _ProfileFailure get _value => super._value as _ProfileFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ProfileFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileFailure implements _ProfileFailure {
  _$_ProfileFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ProfileFailureCopyWith<_ProfileFailure> get copyWith =>
      __$ProfileFailureCopyWithImpl<_ProfileFailure>(this, _$identity);
}

abstract class _ProfileFailure implements ProfileFailure {
  factory _ProfileFailure({required String message}) = _$_ProfileFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ProfileFailureCopyWith<_ProfileFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

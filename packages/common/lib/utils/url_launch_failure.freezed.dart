// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_launch_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UrlLaunchFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() launchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? launchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? launchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LaunchError value) launchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LaunchError value)? launchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LaunchError value)? launchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlLaunchFailureCopyWith<$Res> {
  factory $UrlLaunchFailureCopyWith(
          UrlLaunchFailure value, $Res Function(UrlLaunchFailure) then) =
      _$UrlLaunchFailureCopyWithImpl<$Res, UrlLaunchFailure>;
}

/// @nodoc
class _$UrlLaunchFailureCopyWithImpl<$Res, $Val extends UrlLaunchFailure>
    implements $UrlLaunchFailureCopyWith<$Res> {
  _$UrlLaunchFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LaunchErrorCopyWith<$Res> {
  factory _$$_LaunchErrorCopyWith(
          _$_LaunchError value, $Res Function(_$_LaunchError) then) =
      __$$_LaunchErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LaunchErrorCopyWithImpl<$Res>
    extends _$UrlLaunchFailureCopyWithImpl<$Res, _$_LaunchError>
    implements _$$_LaunchErrorCopyWith<$Res> {
  __$$_LaunchErrorCopyWithImpl(
      _$_LaunchError _value, $Res Function(_$_LaunchError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LaunchError extends _LaunchError {
  const _$_LaunchError() : super._();

  @override
  String toString() {
    return 'UrlLaunchFailure.launchError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LaunchError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() launchError,
  }) {
    return launchError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? launchError,
  }) {
    return launchError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? launchError,
    required TResult orElse(),
  }) {
    if (launchError != null) {
      return launchError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LaunchError value) launchError,
  }) {
    return launchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LaunchError value)? launchError,
  }) {
    return launchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LaunchError value)? launchError,
    required TResult orElse(),
  }) {
    if (launchError != null) {
      return launchError(this);
    }
    return orElse();
  }
}

abstract class _LaunchError extends UrlLaunchFailure {
  const factory _LaunchError() = _$_LaunchError;
  const _LaunchError._() : super._();
}

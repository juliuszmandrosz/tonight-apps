// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppInfoFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppInfoUnexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppInfoUnexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppInfoUnexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoFailureCopyWith<$Res> {
  factory $AppInfoFailureCopyWith(
          AppInfoFailure value, $Res Function(AppInfoFailure) then) =
      _$AppInfoFailureCopyWithImpl<$Res, AppInfoFailure>;
}

/// @nodoc
class _$AppInfoFailureCopyWithImpl<$Res, $Val extends AppInfoFailure>
    implements $AppInfoFailureCopyWith<$Res> {
  _$AppInfoFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppInfoUnexpectedImplCopyWith<$Res> {
  factory _$$AppInfoUnexpectedImplCopyWith(_$AppInfoUnexpectedImpl value,
          $Res Function(_$AppInfoUnexpectedImpl) then) =
      __$$AppInfoUnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppInfoUnexpectedImplCopyWithImpl<$Res>
    extends _$AppInfoFailureCopyWithImpl<$Res, _$AppInfoUnexpectedImpl>
    implements _$$AppInfoUnexpectedImplCopyWith<$Res> {
  __$$AppInfoUnexpectedImplCopyWithImpl(_$AppInfoUnexpectedImpl _value,
      $Res Function(_$AppInfoUnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppInfoUnexpectedImpl extends _AppInfoUnexpected {
  _$AppInfoUnexpectedImpl() : super._();

  @override
  String toString() {
    return 'AppInfoFailure.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppInfoUnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppInfoUnexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppInfoUnexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppInfoUnexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _AppInfoUnexpected extends AppInfoFailure {
  factory _AppInfoUnexpected() = _$AppInfoUnexpectedImpl;
  _AppInfoUnexpected._() : super._();
}

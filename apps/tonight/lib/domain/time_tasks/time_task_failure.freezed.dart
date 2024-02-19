// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_task_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeTaskFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() taskNotExists,
    required TResult Function() timeTaskExpired,
    required TResult Function() timeTaskLimitReached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? taskNotExists,
    TResult? Function()? timeTaskExpired,
    TResult? Function()? timeTaskLimitReached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? taskNotExists,
    TResult Function()? timeTaskExpired,
    TResult Function()? timeTaskLimitReached,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_TaskNotExists value) taskNotExists,
    required TResult Function(_TimeTaskExpired value) timeTaskExpired,
    required TResult Function(_TimeTaskLimitReached value) timeTaskLimitReached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_TaskNotExists value)? taskNotExists,
    TResult? Function(_TimeTaskExpired value)? timeTaskExpired,
    TResult? Function(_TimeTaskLimitReached value)? timeTaskLimitReached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_TaskNotExists value)? taskNotExists,
    TResult Function(_TimeTaskExpired value)? timeTaskExpired,
    TResult Function(_TimeTaskLimitReached value)? timeTaskLimitReached,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTaskFailureCopyWith<$Res> {
  factory $TimeTaskFailureCopyWith(
          TimeTaskFailure value, $Res Function(TimeTaskFailure) then) =
      _$TimeTaskFailureCopyWithImpl<$Res, TimeTaskFailure>;
}

/// @nodoc
class _$TimeTaskFailureCopyWithImpl<$Res, $Val extends TimeTaskFailure>
    implements $TimeTaskFailureCopyWith<$Res> {
  _$TimeTaskFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$TimeTaskFailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedImpl implements _Unexpected {
  const _$UnexpectedImpl();

  @override
  String toString() {
    return 'TimeTaskFailure.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() taskNotExists,
    required TResult Function() timeTaskExpired,
    required TResult Function() timeTaskLimitReached,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? taskNotExists,
    TResult? Function()? timeTaskExpired,
    TResult? Function()? timeTaskLimitReached,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? taskNotExists,
    TResult Function()? timeTaskExpired,
    TResult Function()? timeTaskLimitReached,
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
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_TaskNotExists value) taskNotExists,
    required TResult Function(_TimeTaskExpired value) timeTaskExpired,
    required TResult Function(_TimeTaskLimitReached value) timeTaskLimitReached,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_TaskNotExists value)? taskNotExists,
    TResult? Function(_TimeTaskExpired value)? timeTaskExpired,
    TResult? Function(_TimeTaskLimitReached value)? timeTaskLimitReached,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_TaskNotExists value)? taskNotExists,
    TResult Function(_TimeTaskExpired value)? timeTaskExpired,
    TResult Function(_TimeTaskLimitReached value)? timeTaskLimitReached,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements TimeTaskFailure {
  const factory _Unexpected() = _$UnexpectedImpl;
}

/// @nodoc
abstract class _$$TaskNotExistsImplCopyWith<$Res> {
  factory _$$TaskNotExistsImplCopyWith(
          _$TaskNotExistsImpl value, $Res Function(_$TaskNotExistsImpl) then) =
      __$$TaskNotExistsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskNotExistsImplCopyWithImpl<$Res>
    extends _$TimeTaskFailureCopyWithImpl<$Res, _$TaskNotExistsImpl>
    implements _$$TaskNotExistsImplCopyWith<$Res> {
  __$$TaskNotExistsImplCopyWithImpl(
      _$TaskNotExistsImpl _value, $Res Function(_$TaskNotExistsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskNotExistsImpl implements _TaskNotExists {
  const _$TaskNotExistsImpl();

  @override
  String toString() {
    return 'TimeTaskFailure.taskNotExists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskNotExistsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() taskNotExists,
    required TResult Function() timeTaskExpired,
    required TResult Function() timeTaskLimitReached,
  }) {
    return taskNotExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? taskNotExists,
    TResult? Function()? timeTaskExpired,
    TResult? Function()? timeTaskLimitReached,
  }) {
    return taskNotExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? taskNotExists,
    TResult Function()? timeTaskExpired,
    TResult Function()? timeTaskLimitReached,
    required TResult orElse(),
  }) {
    if (taskNotExists != null) {
      return taskNotExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_TaskNotExists value) taskNotExists,
    required TResult Function(_TimeTaskExpired value) timeTaskExpired,
    required TResult Function(_TimeTaskLimitReached value) timeTaskLimitReached,
  }) {
    return taskNotExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_TaskNotExists value)? taskNotExists,
    TResult? Function(_TimeTaskExpired value)? timeTaskExpired,
    TResult? Function(_TimeTaskLimitReached value)? timeTaskLimitReached,
  }) {
    return taskNotExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_TaskNotExists value)? taskNotExists,
    TResult Function(_TimeTaskExpired value)? timeTaskExpired,
    TResult Function(_TimeTaskLimitReached value)? timeTaskLimitReached,
    required TResult orElse(),
  }) {
    if (taskNotExists != null) {
      return taskNotExists(this);
    }
    return orElse();
  }
}

abstract class _TaskNotExists implements TimeTaskFailure {
  const factory _TaskNotExists() = _$TaskNotExistsImpl;
}

/// @nodoc
abstract class _$$TimeTaskExpiredImplCopyWith<$Res> {
  factory _$$TimeTaskExpiredImplCopyWith(_$TimeTaskExpiredImpl value,
          $Res Function(_$TimeTaskExpiredImpl) then) =
      __$$TimeTaskExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeTaskExpiredImplCopyWithImpl<$Res>
    extends _$TimeTaskFailureCopyWithImpl<$Res, _$TimeTaskExpiredImpl>
    implements _$$TimeTaskExpiredImplCopyWith<$Res> {
  __$$TimeTaskExpiredImplCopyWithImpl(
      _$TimeTaskExpiredImpl _value, $Res Function(_$TimeTaskExpiredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeTaskExpiredImpl implements _TimeTaskExpired {
  const _$TimeTaskExpiredImpl();

  @override
  String toString() {
    return 'TimeTaskFailure.timeTaskExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeTaskExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() taskNotExists,
    required TResult Function() timeTaskExpired,
    required TResult Function() timeTaskLimitReached,
  }) {
    return timeTaskExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? taskNotExists,
    TResult? Function()? timeTaskExpired,
    TResult? Function()? timeTaskLimitReached,
  }) {
    return timeTaskExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? taskNotExists,
    TResult Function()? timeTaskExpired,
    TResult Function()? timeTaskLimitReached,
    required TResult orElse(),
  }) {
    if (timeTaskExpired != null) {
      return timeTaskExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_TaskNotExists value) taskNotExists,
    required TResult Function(_TimeTaskExpired value) timeTaskExpired,
    required TResult Function(_TimeTaskLimitReached value) timeTaskLimitReached,
  }) {
    return timeTaskExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_TaskNotExists value)? taskNotExists,
    TResult? Function(_TimeTaskExpired value)? timeTaskExpired,
    TResult? Function(_TimeTaskLimitReached value)? timeTaskLimitReached,
  }) {
    return timeTaskExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_TaskNotExists value)? taskNotExists,
    TResult Function(_TimeTaskExpired value)? timeTaskExpired,
    TResult Function(_TimeTaskLimitReached value)? timeTaskLimitReached,
    required TResult orElse(),
  }) {
    if (timeTaskExpired != null) {
      return timeTaskExpired(this);
    }
    return orElse();
  }
}

abstract class _TimeTaskExpired implements TimeTaskFailure {
  const factory _TimeTaskExpired() = _$TimeTaskExpiredImpl;
}

/// @nodoc
abstract class _$$TimeTaskLimitReachedImplCopyWith<$Res> {
  factory _$$TimeTaskLimitReachedImplCopyWith(_$TimeTaskLimitReachedImpl value,
          $Res Function(_$TimeTaskLimitReachedImpl) then) =
      __$$TimeTaskLimitReachedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeTaskLimitReachedImplCopyWithImpl<$Res>
    extends _$TimeTaskFailureCopyWithImpl<$Res, _$TimeTaskLimitReachedImpl>
    implements _$$TimeTaskLimitReachedImplCopyWith<$Res> {
  __$$TimeTaskLimitReachedImplCopyWithImpl(_$TimeTaskLimitReachedImpl _value,
      $Res Function(_$TimeTaskLimitReachedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeTaskLimitReachedImpl implements _TimeTaskLimitReached {
  const _$TimeTaskLimitReachedImpl();

  @override
  String toString() {
    return 'TimeTaskFailure.timeTaskLimitReached()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeTaskLimitReachedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() taskNotExists,
    required TResult Function() timeTaskExpired,
    required TResult Function() timeTaskLimitReached,
  }) {
    return timeTaskLimitReached();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? taskNotExists,
    TResult? Function()? timeTaskExpired,
    TResult? Function()? timeTaskLimitReached,
  }) {
    return timeTaskLimitReached?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? taskNotExists,
    TResult Function()? timeTaskExpired,
    TResult Function()? timeTaskLimitReached,
    required TResult orElse(),
  }) {
    if (timeTaskLimitReached != null) {
      return timeTaskLimitReached();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_TaskNotExists value) taskNotExists,
    required TResult Function(_TimeTaskExpired value) timeTaskExpired,
    required TResult Function(_TimeTaskLimitReached value) timeTaskLimitReached,
  }) {
    return timeTaskLimitReached(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_TaskNotExists value)? taskNotExists,
    TResult? Function(_TimeTaskExpired value)? timeTaskExpired,
    TResult? Function(_TimeTaskLimitReached value)? timeTaskLimitReached,
  }) {
    return timeTaskLimitReached?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_TaskNotExists value)? taskNotExists,
    TResult Function(_TimeTaskExpired value)? timeTaskExpired,
    TResult Function(_TimeTaskLimitReached value)? timeTaskLimitReached,
    required TResult orElse(),
  }) {
    if (timeTaskLimitReached != null) {
      return timeTaskLimitReached(this);
    }
    return orElse();
  }
}

abstract class _TimeTaskLimitReached implements TimeTaskFailure {
  const factory _TimeTaskLimitReached() = _$TimeTaskLimitReachedImpl;
}

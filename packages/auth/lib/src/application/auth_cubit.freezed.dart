// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() deleteAccountInProgress,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() deleteAccountFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? deleteAccountInProgress,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? deleteAccountFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? deleteAccountInProgress,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? deleteAccountFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_DeleteAccountInProgress value)
        deleteAccountInProgress,
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
    required TResult Function(_DeleteAccountFailure value) deleteAccountFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult? Function(_DeleteAccountFailure value)? deleteAccountFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(_DeleteAccountFailure value)? deleteAccountFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() deleteAccountInProgress,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() deleteAccountFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? deleteAccountInProgress,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? deleteAccountFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? deleteAccountInProgress,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_DeleteAccountInProgress value)
        deleteAccountInProgress,
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
    required TResult Function(_DeleteAccountFailure value) deleteAccountFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult? Function(_DeleteAccountFailure value)? deleteAccountFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(_DeleteAccountFailure value)? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() deleteAccountInProgress,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() deleteAccountFailure,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? deleteAccountInProgress,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? deleteAccountFailure,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? deleteAccountInProgress,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_DeleteAccountInProgress value)
        deleteAccountInProgress,
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
    required TResult Function(_DeleteAccountFailure value) deleteAccountFailure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult? Function(_DeleteAccountFailure value)? deleteAccountFailure,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(_DeleteAccountFailure value)? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$$_UnauthenticatedCopyWith<$Res> {
  factory _$$_UnauthenticatedCopyWith(
          _$_Unauthenticated value, $Res Function(_$_Unauthenticated) then) =
      __$$_UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Unauthenticated>
    implements _$$_UnauthenticatedCopyWith<$Res> {
  __$$_UnauthenticatedCopyWithImpl(
      _$_Unauthenticated _value, $Res Function(_$_Unauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() deleteAccountInProgress,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() deleteAccountFailure,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? deleteAccountInProgress,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? deleteAccountFailure,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? deleteAccountInProgress,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_DeleteAccountInProgress value)
        deleteAccountInProgress,
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
    required TResult Function(_DeleteAccountFailure value) deleteAccountFailure,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult? Function(_DeleteAccountFailure value)? deleteAccountFailure,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(_DeleteAccountFailure value)? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$$_DeleteAccountInProgressCopyWith<$Res> {
  factory _$$_DeleteAccountInProgressCopyWith(_$_DeleteAccountInProgress value,
          $Res Function(_$_DeleteAccountInProgress) then) =
      __$$_DeleteAccountInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteAccountInProgressCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_DeleteAccountInProgress>
    implements _$$_DeleteAccountInProgressCopyWith<$Res> {
  __$$_DeleteAccountInProgressCopyWithImpl(_$_DeleteAccountInProgress _value,
      $Res Function(_$_DeleteAccountInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteAccountInProgress implements _DeleteAccountInProgress {
  const _$_DeleteAccountInProgress();

  @override
  String toString() {
    return 'AuthState.deleteAccountInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAccountInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() deleteAccountInProgress,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() deleteAccountFailure,
  }) {
    return deleteAccountInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? deleteAccountInProgress,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? deleteAccountFailure,
  }) {
    return deleteAccountInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? deleteAccountInProgress,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (deleteAccountInProgress != null) {
      return deleteAccountInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_DeleteAccountInProgress value)
        deleteAccountInProgress,
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
    required TResult Function(_DeleteAccountFailure value) deleteAccountFailure,
  }) {
    return deleteAccountInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult? Function(_DeleteAccountFailure value)? deleteAccountFailure,
  }) {
    return deleteAccountInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(_DeleteAccountFailure value)? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (deleteAccountInProgress != null) {
      return deleteAccountInProgress(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountInProgress implements AuthState {
  const factory _DeleteAccountInProgress() = _$_DeleteAccountInProgress;
}

/// @nodoc
abstract class _$$_DeleteAccountSuccessCopyWith<$Res> {
  factory _$$_DeleteAccountSuccessCopyWith(_$_DeleteAccountSuccess value,
          $Res Function(_$_DeleteAccountSuccess) then) =
      __$$_DeleteAccountSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteAccountSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_DeleteAccountSuccess>
    implements _$$_DeleteAccountSuccessCopyWith<$Res> {
  __$$_DeleteAccountSuccessCopyWithImpl(_$_DeleteAccountSuccess _value,
      $Res Function(_$_DeleteAccountSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteAccountSuccess implements _DeleteAccountSuccess {
  const _$_DeleteAccountSuccess();

  @override
  String toString() {
    return 'AuthState.deleteAccountSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteAccountSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() deleteAccountInProgress,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() deleteAccountFailure,
  }) {
    return deleteAccountSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? deleteAccountInProgress,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? deleteAccountFailure,
  }) {
    return deleteAccountSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? deleteAccountInProgress,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (deleteAccountSuccess != null) {
      return deleteAccountSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_DeleteAccountInProgress value)
        deleteAccountInProgress,
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
    required TResult Function(_DeleteAccountFailure value) deleteAccountFailure,
  }) {
    return deleteAccountSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult? Function(_DeleteAccountFailure value)? deleteAccountFailure,
  }) {
    return deleteAccountSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(_DeleteAccountFailure value)? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (deleteAccountSuccess != null) {
      return deleteAccountSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountSuccess implements AuthState {
  const factory _DeleteAccountSuccess() = _$_DeleteAccountSuccess;
}

/// @nodoc
abstract class _$$_DeleteAccountFailureCopyWith<$Res> {
  factory _$$_DeleteAccountFailureCopyWith(_$_DeleteAccountFailure value,
          $Res Function(_$_DeleteAccountFailure) then) =
      __$$_DeleteAccountFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteAccountFailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_DeleteAccountFailure>
    implements _$$_DeleteAccountFailureCopyWith<$Res> {
  __$$_DeleteAccountFailureCopyWithImpl(_$_DeleteAccountFailure _value,
      $Res Function(_$_DeleteAccountFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteAccountFailure implements _DeleteAccountFailure {
  const _$_DeleteAccountFailure();

  @override
  String toString() {
    return 'AuthState.deleteAccountFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteAccountFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() deleteAccountInProgress,
    required TResult Function() deleteAccountSuccess,
    required TResult Function() deleteAccountFailure,
  }) {
    return deleteAccountFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? deleteAccountInProgress,
    TResult? Function()? deleteAccountSuccess,
    TResult? Function()? deleteAccountFailure,
  }) {
    return deleteAccountFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? deleteAccountInProgress,
    TResult Function()? deleteAccountSuccess,
    TResult Function()? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (deleteAccountFailure != null) {
      return deleteAccountFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_DeleteAccountInProgress value)
        deleteAccountInProgress,
    required TResult Function(_DeleteAccountSuccess value) deleteAccountSuccess,
    required TResult Function(_DeleteAccountFailure value) deleteAccountFailure,
  }) {
    return deleteAccountFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult? Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult? Function(_DeleteAccountFailure value)? deleteAccountFailure,
  }) {
    return deleteAccountFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_DeleteAccountInProgress value)? deleteAccountInProgress,
    TResult Function(_DeleteAccountSuccess value)? deleteAccountSuccess,
    TResult Function(_DeleteAccountFailure value)? deleteAccountFailure,
    required TResult orElse(),
  }) {
    if (deleteAccountFailure != null) {
      return deleteAccountFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountFailure implements AuthState {
  const factory _DeleteAccountFailure() = _$_DeleteAccountFailure;
}

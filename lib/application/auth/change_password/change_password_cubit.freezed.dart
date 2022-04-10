// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

  _ChangePasswordState call(
      {required OldPasswordInput oldPassword,
      required PasswordInput newPassword,
      required ConfirmPasswordInput newConfirmedPassword,
      required FormzStatus status,
      required Option<String> errorMessage}) {
    return _ChangePasswordState(
      oldPassword: oldPassword,
      newPassword: newPassword,
      newConfirmedPassword: newConfirmedPassword,
      status: status,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $ChangePasswordState = _$ChangePasswordStateTearOff();

/// @nodoc
mixin _$ChangePasswordState {
  OldPasswordInput get oldPassword => throw _privateConstructorUsedError;
  PasswordInput get newPassword => throw _privateConstructorUsedError;
  ConfirmPasswordInput get newConfirmedPassword =>
      throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {OldPasswordInput oldPassword,
      PasswordInput newPassword,
      ConfirmPasswordInput newConfirmedPassword,
      FormzStatus status,
      Option<String> errorMessage});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? newConfirmedPassword = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as OldPasswordInput,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      newConfirmedPassword: newConfirmedPassword == freezed
          ? _value.newConfirmedPassword
          : newConfirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordInput,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) then) =
      __$ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {OldPasswordInput oldPassword,
      PasswordInput newPassword,
      ConfirmPasswordInput newConfirmedPassword,
      FormzStatus status,
      Option<String> errorMessage});
}

/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(
      _ChangePasswordState _value, $Res Function(_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordState));

  @override
  _ChangePasswordState get _value => super._value as _ChangePasswordState;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? newConfirmedPassword = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_ChangePasswordState(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as OldPasswordInput,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      newConfirmedPassword: newConfirmedPassword == freezed
          ? _value.newConfirmedPassword
          : newConfirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordInput,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {required this.oldPassword,
      required this.newPassword,
      required this.newConfirmedPassword,
      required this.status,
      required this.errorMessage});

  @override
  final OldPasswordInput oldPassword;
  @override
  final PasswordInput newPassword;
  @override
  final ConfirmPasswordInput newConfirmedPassword;
  @override
  final FormzStatus status;
  @override
  final Option<String> errorMessage;

  @override
  String toString() {
    return 'ChangePasswordState(oldPassword: $oldPassword, newPassword: $newPassword, newConfirmedPassword: $newConfirmedPassword, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePasswordState &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality()
                .equals(other.newConfirmedPassword, newConfirmedPassword) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(newConfirmedPassword),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {required OldPasswordInput oldPassword,
      required PasswordInput newPassword,
      required ConfirmPasswordInput newConfirmedPassword,
      required FormzStatus status,
      required Option<String> errorMessage}) = _$_ChangePasswordState;

  @override
  OldPasswordInput get oldPassword;
  @override
  PasswordInput get newPassword;
  @override
  ConfirmPasswordInput get newConfirmedPassword;
  @override
  FormzStatus get status;
  @override
  Option<String> get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

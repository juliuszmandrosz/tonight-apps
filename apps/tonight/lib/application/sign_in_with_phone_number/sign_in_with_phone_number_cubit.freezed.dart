// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_with_phone_number_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInWithPhoneNumberState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  Option<String> get failureMessage => throw _privateConstructorUsedError;
  Option<String> get verificationId => throw _privateConstructorUsedError;
  Option<int> get resendToken => throw _privateConstructorUsedError;
  CubitStatus get sendSmsStatus => throw _privateConstructorUsedError;
  CubitStatus get verifySmsStatus => throw _privateConstructorUsedError;
  Option<AppUser> get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInWithPhoneNumberStateCopyWith<SignInWithPhoneNumberState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithPhoneNumberStateCopyWith<$Res> {
  factory $SignInWithPhoneNumberStateCopyWith(SignInWithPhoneNumberState value,
          $Res Function(SignInWithPhoneNumberState) then) =
      _$SignInWithPhoneNumberStateCopyWithImpl<$Res,
          SignInWithPhoneNumberState>;
  @useResult
  $Res call(
      {String phoneNumber,
      String smsCode,
      Option<String> failureMessage,
      Option<String> verificationId,
      Option<int> resendToken,
      CubitStatus sendSmsStatus,
      CubitStatus verifySmsStatus,
      Option<AppUser> user});
}

/// @nodoc
class _$SignInWithPhoneNumberStateCopyWithImpl<$Res,
        $Val extends SignInWithPhoneNumberState>
    implements $SignInWithPhoneNumberStateCopyWith<$Res> {
  _$SignInWithPhoneNumberStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? failureMessage = null,
    Object? verificationId = null,
    Object? resendToken = null,
    Object? sendSmsStatus = null,
    Object? verifySmsStatus = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      resendToken: null == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      sendSmsStatus: null == sendSmsStatus
          ? _value.sendSmsStatus
          : sendSmsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      verifySmsStatus: null == verifySmsStatus
          ? _value.verifySmsStatus
          : verifySmsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<AppUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInWithPhoneNumberStateImplCopyWith<$Res>
    implements $SignInWithPhoneNumberStateCopyWith<$Res> {
  factory _$$SignInWithPhoneNumberStateImplCopyWith(
          _$SignInWithPhoneNumberStateImpl value,
          $Res Function(_$SignInWithPhoneNumberStateImpl) then) =
      __$$SignInWithPhoneNumberStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String smsCode,
      Option<String> failureMessage,
      Option<String> verificationId,
      Option<int> resendToken,
      CubitStatus sendSmsStatus,
      CubitStatus verifySmsStatus,
      Option<AppUser> user});
}

/// @nodoc
class __$$SignInWithPhoneNumberStateImplCopyWithImpl<$Res>
    extends _$SignInWithPhoneNumberStateCopyWithImpl<$Res,
        _$SignInWithPhoneNumberStateImpl>
    implements _$$SignInWithPhoneNumberStateImplCopyWith<$Res> {
  __$$SignInWithPhoneNumberStateImplCopyWithImpl(
      _$SignInWithPhoneNumberStateImpl _value,
      $Res Function(_$SignInWithPhoneNumberStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? failureMessage = null,
    Object? verificationId = null,
    Object? resendToken = null,
    Object? sendSmsStatus = null,
    Object? verifySmsStatus = null,
    Object? user = null,
  }) {
    return _then(_$SignInWithPhoneNumberStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      resendToken: null == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      sendSmsStatus: null == sendSmsStatus
          ? _value.sendSmsStatus
          : sendSmsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      verifySmsStatus: null == verifySmsStatus
          ? _value.verifySmsStatus
          : verifySmsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<AppUser>,
    ));
  }
}

/// @nodoc

class _$SignInWithPhoneNumberStateImpl implements _SignInWithPhoneNumberState {
  const _$SignInWithPhoneNumberStateImpl(
      {required this.phoneNumber,
      required this.smsCode,
      required this.failureMessage,
      required this.verificationId,
      required this.resendToken,
      required this.sendSmsStatus,
      required this.verifySmsStatus,
      required this.user});

  @override
  final String phoneNumber;
  @override
  final String smsCode;
  @override
  final Option<String> failureMessage;
  @override
  final Option<String> verificationId;
  @override
  final Option<int> resendToken;
  @override
  final CubitStatus sendSmsStatus;
  @override
  final CubitStatus verifySmsStatus;
  @override
  final Option<AppUser> user;

  @override
  String toString() {
    return 'SignInWithPhoneNumberState(phoneNumber: $phoneNumber, smsCode: $smsCode, failureMessage: $failureMessage, verificationId: $verificationId, resendToken: $resendToken, sendSmsStatus: $sendSmsStatus, verifySmsStatus: $verifySmsStatus, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithPhoneNumberStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.resendToken, resendToken) ||
                other.resendToken == resendToken) &&
            (identical(other.sendSmsStatus, sendSmsStatus) ||
                other.sendSmsStatus == sendSmsStatus) &&
            (identical(other.verifySmsStatus, verifySmsStatus) ||
                other.verifySmsStatus == verifySmsStatus) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      phoneNumber,
      smsCode,
      failureMessage,
      verificationId,
      resendToken,
      sendSmsStatus,
      verifySmsStatus,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithPhoneNumberStateImplCopyWith<_$SignInWithPhoneNumberStateImpl>
      get copyWith => __$$SignInWithPhoneNumberStateImplCopyWithImpl<
          _$SignInWithPhoneNumberStateImpl>(this, _$identity);
}

abstract class _SignInWithPhoneNumberState
    implements SignInWithPhoneNumberState {
  const factory _SignInWithPhoneNumberState(
      {required final String phoneNumber,
      required final String smsCode,
      required final Option<String> failureMessage,
      required final Option<String> verificationId,
      required final Option<int> resendToken,
      required final CubitStatus sendSmsStatus,
      required final CubitStatus verifySmsStatus,
      required final Option<AppUser> user}) = _$SignInWithPhoneNumberStateImpl;

  @override
  String get phoneNumber;
  @override
  String get smsCode;
  @override
  Option<String> get failureMessage;
  @override
  Option<String> get verificationId;
  @override
  Option<int> get resendToken;
  @override
  CubitStatus get sendSmsStatus;
  @override
  CubitStatus get verifySmsStatus;
  @override
  Option<AppUser> get user;
  @override
  @JsonKey(ignore: true)
  _$$SignInWithPhoneNumberStateImplCopyWith<_$SignInWithPhoneNumberStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

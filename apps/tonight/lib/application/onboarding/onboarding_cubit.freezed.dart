// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingState {
  Username get username => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call(
      {Username username, FormzStatus status, Option<String> errorMessage});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_OnboardingStateCopyWith(
          _$_OnboardingState value, $Res Function(_$_OnboardingState) then) =
      __$$_OnboardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Username username, FormzStatus status, Option<String> errorMessage});
}

/// @nodoc
class __$$_OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$_OnboardingState>
    implements _$$_OnboardingStateCopyWith<$Res> {
  __$$_OnboardingStateCopyWithImpl(
      _$_OnboardingState _value, $Res Function(_$_OnboardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_OnboardingState(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_OnboardingState implements _OnboardingState {
  const _$_OnboardingState(
      {required this.username,
      required this.status,
      required this.errorMessage});

  @override
  final Username username;
  @override
  final FormzStatus status;
  @override
  final Option<String> errorMessage;

  @override
  String toString() {
    return 'OnboardingState(username: $username, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingState &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      __$$_OnboardingStateCopyWithImpl<_$_OnboardingState>(this, _$identity);
}

abstract class _OnboardingState implements OnboardingState {
  const factory _OnboardingState(
      {required final Username username,
      required final FormzStatus status,
      required final Option<String> errorMessage}) = _$_OnboardingState;

  @override
  Username get username;
  @override
  FormzStatus get status;
  @override
  Option<String> get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

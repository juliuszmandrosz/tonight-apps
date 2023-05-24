// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_selector_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InviteSelectorState {
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  Option<String> get accessCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InviteSelectorStateCopyWith<InviteSelectorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteSelectorStateCopyWith<$Res> {
  factory $InviteSelectorStateCopyWith(
          InviteSelectorState value, $Res Function(InviteSelectorState) then) =
      _$InviteSelectorStateCopyWithImpl<$Res, InviteSelectorState>;
  @useResult
  $Res call(
      {CubitStatus status,
      Option<String> errorMessage,
      Option<String> accessCode});
}

/// @nodoc
class _$InviteSelectorStateCopyWithImpl<$Res, $Val extends InviteSelectorState>
    implements $InviteSelectorStateCopyWith<$Res> {
  _$InviteSelectorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? accessCode = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InviteSelectorStateCopyWith<$Res>
    implements $InviteSelectorStateCopyWith<$Res> {
  factory _$$_InviteSelectorStateCopyWith(_$_InviteSelectorState value,
          $Res Function(_$_InviteSelectorState) then) =
      __$$_InviteSelectorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus status,
      Option<String> errorMessage,
      Option<String> accessCode});
}

/// @nodoc
class __$$_InviteSelectorStateCopyWithImpl<$Res>
    extends _$InviteSelectorStateCopyWithImpl<$Res, _$_InviteSelectorState>
    implements _$$_InviteSelectorStateCopyWith<$Res> {
  __$$_InviteSelectorStateCopyWithImpl(_$_InviteSelectorState _value,
      $Res Function(_$_InviteSelectorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? accessCode = null,
  }) {
    return _then(_$_InviteSelectorState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_InviteSelectorState implements _InviteSelectorState {
  const _$_InviteSelectorState(
      {required this.status,
      required this.errorMessage,
      required this.accessCode});

  @override
  final CubitStatus status;
  @override
  final Option<String> errorMessage;
  @override
  final Option<String> accessCode;

  @override
  String toString() {
    return 'InviteSelectorState(status: $status, errorMessage: $errorMessage, accessCode: $accessCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InviteSelectorState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, errorMessage, accessCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InviteSelectorStateCopyWith<_$_InviteSelectorState> get copyWith =>
      __$$_InviteSelectorStateCopyWithImpl<_$_InviteSelectorState>(
          this, _$identity);
}

abstract class _InviteSelectorState implements InviteSelectorState {
  const factory _InviteSelectorState(
      {required final CubitStatus status,
      required final Option<String> errorMessage,
      required final Option<String> accessCode}) = _$_InviteSelectorState;

  @override
  CubitStatus get status;
  @override
  Option<String> get errorMessage;
  @override
  Option<String> get accessCode;
  @override
  @JsonKey(ignore: true)
  _$$_InviteSelectorStateCopyWith<_$_InviteSelectorState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$InviteSelectorStateCopyWithImpl<$Res>;
  $Res call(
      {CubitStatus status,
      Option<String> errorMessage,
      Option<String> accessCode});
}

/// @nodoc
class _$InviteSelectorStateCopyWithImpl<$Res>
    implements $InviteSelectorStateCopyWith<$Res> {
  _$InviteSelectorStateCopyWithImpl(this._value, this._then);

  final InviteSelectorState _value;
  // ignore: unused_field
  final $Res Function(InviteSelectorState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? accessCode = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      accessCode: accessCode == freezed
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_InviteSelectorStateCopyWith<$Res>
    implements $InviteSelectorStateCopyWith<$Res> {
  factory _$$_InviteSelectorStateCopyWith(_$_InviteSelectorState value,
          $Res Function(_$_InviteSelectorState) then) =
      __$$_InviteSelectorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CubitStatus status,
      Option<String> errorMessage,
      Option<String> accessCode});
}

/// @nodoc
class __$$_InviteSelectorStateCopyWithImpl<$Res>
    extends _$InviteSelectorStateCopyWithImpl<$Res>
    implements _$$_InviteSelectorStateCopyWith<$Res> {
  __$$_InviteSelectorStateCopyWithImpl(_$_InviteSelectorState _value,
      $Res Function(_$_InviteSelectorState) _then)
      : super(_value, (v) => _then(v as _$_InviteSelectorState));

  @override
  _$_InviteSelectorState get _value => super._value as _$_InviteSelectorState;

  @override
  $Res call({
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? accessCode = freezed,
  }) {
    return _then(_$_InviteSelectorState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      accessCode: accessCode == freezed
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
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.accessCode, accessCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(accessCode));

  @JsonKey(ignore: true)
  @override
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

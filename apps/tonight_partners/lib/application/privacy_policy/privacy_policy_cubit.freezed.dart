// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'privacy_policy_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrivacyPolicyState {
  Option<String> get documentUrl => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrivacyPolicyStateCopyWith<PrivacyPolicyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyPolicyStateCopyWith<$Res> {
  factory $PrivacyPolicyStateCopyWith(
          PrivacyPolicyState value, $Res Function(PrivacyPolicyState) then) =
      _$PrivacyPolicyStateCopyWithImpl<$Res>;
  $Res call(
      {Option<String> documentUrl,
      CubitStatus status,
      Option<String> snackbarMessage});
}

/// @nodoc
class _$PrivacyPolicyStateCopyWithImpl<$Res>
    implements $PrivacyPolicyStateCopyWith<$Res> {
  _$PrivacyPolicyStateCopyWithImpl(this._value, this._then);

  final PrivacyPolicyState _value;
  // ignore: unused_field
  final $Res Function(PrivacyPolicyState) _then;

  @override
  $Res call({
    Object? documentUrl = freezed,
    Object? status = freezed,
    Object? snackbarMessage = freezed,
  }) {
    return _then(_value.copyWith(
      documentUrl: documentUrl == freezed
          ? _value.documentUrl
          : documentUrl // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: snackbarMessage == freezed
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_PrivacyPolicyStateCopyWith<$Res>
    implements $PrivacyPolicyStateCopyWith<$Res> {
  factory _$$_PrivacyPolicyStateCopyWith(_$_PrivacyPolicyState value,
          $Res Function(_$_PrivacyPolicyState) then) =
      __$$_PrivacyPolicyStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<String> documentUrl,
      CubitStatus status,
      Option<String> snackbarMessage});
}

/// @nodoc
class __$$_PrivacyPolicyStateCopyWithImpl<$Res>
    extends _$PrivacyPolicyStateCopyWithImpl<$Res>
    implements _$$_PrivacyPolicyStateCopyWith<$Res> {
  __$$_PrivacyPolicyStateCopyWithImpl(
      _$_PrivacyPolicyState _value, $Res Function(_$_PrivacyPolicyState) _then)
      : super(_value, (v) => _then(v as _$_PrivacyPolicyState));

  @override
  _$_PrivacyPolicyState get _value => super._value as _$_PrivacyPolicyState;

  @override
  $Res call({
    Object? documentUrl = freezed,
    Object? status = freezed,
    Object? snackbarMessage = freezed,
  }) {
    return _then(_$_PrivacyPolicyState(
      documentUrl: documentUrl == freezed
          ? _value.documentUrl
          : documentUrl // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: snackbarMessage == freezed
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_PrivacyPolicyState extends _PrivacyPolicyState {
  _$_PrivacyPolicyState(
      {required this.documentUrl,
      required this.status,
      required this.snackbarMessage})
      : super._();

  @override
  final Option<String> documentUrl;
  @override
  final CubitStatus status;
  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'PrivacyPolicyState(documentUrl: $documentUrl, status: $status, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivacyPolicyState &&
            const DeepCollectionEquality()
                .equals(other.documentUrl, documentUrl) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.snackbarMessage, snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(documentUrl),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(snackbarMessage));

  @JsonKey(ignore: true)
  @override
  _$$_PrivacyPolicyStateCopyWith<_$_PrivacyPolicyState> get copyWith =>
      __$$_PrivacyPolicyStateCopyWithImpl<_$_PrivacyPolicyState>(
          this, _$identity);
}

abstract class _PrivacyPolicyState extends PrivacyPolicyState {
  factory _PrivacyPolicyState(
      {required final Option<String> documentUrl,
      required final CubitStatus status,
      required final Option<String> snackbarMessage}) = _$_PrivacyPolicyState;
  _PrivacyPolicyState._() : super._();

  @override
  Option<String> get documentUrl;
  @override
  CubitStatus get status;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PrivacyPolicyStateCopyWith<_$_PrivacyPolicyState> get copyWith =>
      throw _privateConstructorUsedError;
}

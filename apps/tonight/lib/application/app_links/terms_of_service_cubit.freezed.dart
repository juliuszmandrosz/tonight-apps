// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_of_service_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TermsOfServiceState {
  Option<String> get url => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsOfServiceStateCopyWith<TermsOfServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsOfServiceStateCopyWith<$Res> {
  factory $TermsOfServiceStateCopyWith(
          TermsOfServiceState value, $Res Function(TermsOfServiceState) then) =
      _$TermsOfServiceStateCopyWithImpl<$Res, TermsOfServiceState>;
  @useResult
  $Res call(
      {Option<String> url, CubitStatus status, Option<String> snackbarMessage});
}

/// @nodoc
class _$TermsOfServiceStateCopyWithImpl<$Res, $Val extends TermsOfServiceState>
    implements $TermsOfServiceStateCopyWith<$Res> {
  _$TermsOfServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? status = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermsOfServiceStateImplCopyWith<$Res>
    implements $TermsOfServiceStateCopyWith<$Res> {
  factory _$$TermsOfServiceStateImplCopyWith(_$TermsOfServiceStateImpl value,
          $Res Function(_$TermsOfServiceStateImpl) then) =
      __$$TermsOfServiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<String> url, CubitStatus status, Option<String> snackbarMessage});
}

/// @nodoc
class __$$TermsOfServiceStateImplCopyWithImpl<$Res>
    extends _$TermsOfServiceStateCopyWithImpl<$Res, _$TermsOfServiceStateImpl>
    implements _$$TermsOfServiceStateImplCopyWith<$Res> {
  __$$TermsOfServiceStateImplCopyWithImpl(_$TermsOfServiceStateImpl _value,
      $Res Function(_$TermsOfServiceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? status = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$TermsOfServiceStateImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$TermsOfServiceStateImpl extends _TermsOfServiceState {
  _$TermsOfServiceStateImpl(
      {required this.url, required this.status, required this.snackbarMessage})
      : super._();

  @override
  final Option<String> url;
  @override
  final CubitStatus status;
  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'TermsOfServiceState(url: $url, status: $status, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsOfServiceStateImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, status, snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsOfServiceStateImplCopyWith<_$TermsOfServiceStateImpl> get copyWith =>
      __$$TermsOfServiceStateImplCopyWithImpl<_$TermsOfServiceStateImpl>(
          this, _$identity);
}

abstract class _TermsOfServiceState extends TermsOfServiceState {
  factory _TermsOfServiceState(
          {required final Option<String> url,
          required final CubitStatus status,
          required final Option<String> snackbarMessage}) =
      _$TermsOfServiceStateImpl;
  _TermsOfServiceState._() : super._();

  @override
  Option<String> get url;
  @override
  CubitStatus get status;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$TermsOfServiceStateImplCopyWith<_$TermsOfServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

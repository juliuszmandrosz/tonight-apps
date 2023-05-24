// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_qr_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanQrState {
  Option<TimeTask> get lastScannedTask => throw _privateConstructorUsedError;
  Option<String> get lastScannedPhotoUrl => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanQrStateCopyWith<ScanQrState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanQrStateCopyWith<$Res> {
  factory $ScanQrStateCopyWith(
          ScanQrState value, $Res Function(ScanQrState) then) =
      _$ScanQrStateCopyWithImpl<$Res, ScanQrState>;
  @useResult
  $Res call(
      {Option<TimeTask> lastScannedTask,
      Option<String> lastScannedPhotoUrl,
      CubitStatus status,
      Option<String> errorMessage});
}

/// @nodoc
class _$ScanQrStateCopyWithImpl<$Res, $Val extends ScanQrState>
    implements $ScanQrStateCopyWith<$Res> {
  _$ScanQrStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastScannedTask = null,
    Object? lastScannedPhotoUrl = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      lastScannedTask: null == lastScannedTask
          ? _value.lastScannedTask
          : lastScannedTask // ignore: cast_nullable_to_non_nullable
              as Option<TimeTask>,
      lastScannedPhotoUrl: null == lastScannedPhotoUrl
          ? _value.lastScannedPhotoUrl
          : lastScannedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScanQrStateCopyWith<$Res>
    implements $ScanQrStateCopyWith<$Res> {
  factory _$$_ScanQrStateCopyWith(
          _$_ScanQrState value, $Res Function(_$_ScanQrState) then) =
      __$$_ScanQrStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<TimeTask> lastScannedTask,
      Option<String> lastScannedPhotoUrl,
      CubitStatus status,
      Option<String> errorMessage});
}

/// @nodoc
class __$$_ScanQrStateCopyWithImpl<$Res>
    extends _$ScanQrStateCopyWithImpl<$Res, _$_ScanQrState>
    implements _$$_ScanQrStateCopyWith<$Res> {
  __$$_ScanQrStateCopyWithImpl(
      _$_ScanQrState _value, $Res Function(_$_ScanQrState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastScannedTask = null,
    Object? lastScannedPhotoUrl = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_ScanQrState(
      lastScannedTask: null == lastScannedTask
          ? _value.lastScannedTask
          : lastScannedTask // ignore: cast_nullable_to_non_nullable
              as Option<TimeTask>,
      lastScannedPhotoUrl: null == lastScannedPhotoUrl
          ? _value.lastScannedPhotoUrl
          : lastScannedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_ScanQrState implements _ScanQrState {
  const _$_ScanQrState(
      {required this.lastScannedTask,
      required this.lastScannedPhotoUrl,
      required this.status,
      required this.errorMessage});

  @override
  final Option<TimeTask> lastScannedTask;
  @override
  final Option<String> lastScannedPhotoUrl;
  @override
  final CubitStatus status;
  @override
  final Option<String> errorMessage;

  @override
  String toString() {
    return 'ScanQrState(lastScannedTask: $lastScannedTask, lastScannedPhotoUrl: $lastScannedPhotoUrl, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScanQrState &&
            (identical(other.lastScannedTask, lastScannedTask) ||
                other.lastScannedTask == lastScannedTask) &&
            (identical(other.lastScannedPhotoUrl, lastScannedPhotoUrl) ||
                other.lastScannedPhotoUrl == lastScannedPhotoUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, lastScannedTask, lastScannedPhotoUrl, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScanQrStateCopyWith<_$_ScanQrState> get copyWith =>
      __$$_ScanQrStateCopyWithImpl<_$_ScanQrState>(this, _$identity);
}

abstract class _ScanQrState implements ScanQrState {
  const factory _ScanQrState(
      {required final Option<TimeTask> lastScannedTask,
      required final Option<String> lastScannedPhotoUrl,
      required final CubitStatus status,
      required final Option<String> errorMessage}) = _$_ScanQrState;

  @override
  Option<TimeTask> get lastScannedTask;
  @override
  Option<String> get lastScannedPhotoUrl;
  @override
  CubitStatus get status;
  @override
  Option<String> get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ScanQrStateCopyWith<_$_ScanQrState> get copyWith =>
      throw _privateConstructorUsedError;
}

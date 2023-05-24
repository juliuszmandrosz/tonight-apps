// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_time_task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendTimeTaskState {
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  String get descriptionPl => throw _privateConstructorUsedError;
  String get descriptionEn => throw _privateConstructorUsedError;
  int get durationInMinutes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendTimeTaskStateCopyWith<SendTimeTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTimeTaskStateCopyWith<$Res> {
  factory $SendTimeTaskStateCopyWith(
          SendTimeTaskState value, $Res Function(SendTimeTaskState) then) =
      _$SendTimeTaskStateCopyWithImpl<$Res, SendTimeTaskState>;
  @useResult
  $Res call(
      {CubitStatus status,
      Option<String> snackbarMessage,
      String descriptionPl,
      String descriptionEn,
      int durationInMinutes});
}

/// @nodoc
class _$SendTimeTaskStateCopyWithImpl<$Res, $Val extends SendTimeTaskState>
    implements $SendTimeTaskStateCopyWith<$Res> {
  _$SendTimeTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? snackbarMessage = null,
    Object? descriptionPl = null,
    Object? descriptionEn = null,
    Object? durationInMinutes = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      descriptionPl: null == descriptionPl
          ? _value.descriptionPl
          : descriptionPl // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendTimeTaskStateCopyWith<$Res>
    implements $SendTimeTaskStateCopyWith<$Res> {
  factory _$$_SendTimeTaskStateCopyWith(_$_SendTimeTaskState value,
          $Res Function(_$_SendTimeTaskState) then) =
      __$$_SendTimeTaskStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus status,
      Option<String> snackbarMessage,
      String descriptionPl,
      String descriptionEn,
      int durationInMinutes});
}

/// @nodoc
class __$$_SendTimeTaskStateCopyWithImpl<$Res>
    extends _$SendTimeTaskStateCopyWithImpl<$Res, _$_SendTimeTaskState>
    implements _$$_SendTimeTaskStateCopyWith<$Res> {
  __$$_SendTimeTaskStateCopyWithImpl(
      _$_SendTimeTaskState _value, $Res Function(_$_SendTimeTaskState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? snackbarMessage = null,
    Object? descriptionPl = null,
    Object? descriptionEn = null,
    Object? durationInMinutes = null,
  }) {
    return _then(_$_SendTimeTaskState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      descriptionPl: null == descriptionPl
          ? _value.descriptionPl
          : descriptionPl // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SendTimeTaskState implements _SendTimeTaskState {
  const _$_SendTimeTaskState(
      {required this.status,
      required this.snackbarMessage,
      required this.descriptionPl,
      required this.descriptionEn,
      required this.durationInMinutes});

  @override
  final CubitStatus status;
  @override
  final Option<String> snackbarMessage;
  @override
  final String descriptionPl;
  @override
  final String descriptionEn;
  @override
  final int durationInMinutes;

  @override
  String toString() {
    return 'SendTimeTaskState(status: $status, snackbarMessage: $snackbarMessage, descriptionPl: $descriptionPl, descriptionEn: $descriptionEn, durationInMinutes: $durationInMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendTimeTaskState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.descriptionPl, descriptionPl) ||
                other.descriptionPl == descriptionPl) &&
            (identical(other.descriptionEn, descriptionEn) ||
                other.descriptionEn == descriptionEn) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, snackbarMessage,
      descriptionPl, descriptionEn, durationInMinutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendTimeTaskStateCopyWith<_$_SendTimeTaskState> get copyWith =>
      __$$_SendTimeTaskStateCopyWithImpl<_$_SendTimeTaskState>(
          this, _$identity);
}

abstract class _SendTimeTaskState implements SendTimeTaskState {
  const factory _SendTimeTaskState(
      {required final CubitStatus status,
      required final Option<String> snackbarMessage,
      required final String descriptionPl,
      required final String descriptionEn,
      required final int durationInMinutes}) = _$_SendTimeTaskState;

  @override
  CubitStatus get status;
  @override
  Option<String> get snackbarMessage;
  @override
  String get descriptionPl;
  @override
  String get descriptionEn;
  @override
  int get durationInMinutes;
  @override
  @JsonKey(ignore: true)
  _$$_SendTimeTaskStateCopyWith<_$_SendTimeTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_wall_photo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddWallPhotoState {
  Option<XFile> get photo => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddWallPhotoStateCopyWith<AddWallPhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddWallPhotoStateCopyWith<$Res> {
  factory $AddWallPhotoStateCopyWith(
          AddWallPhotoState value, $Res Function(AddWallPhotoState) then) =
      _$AddWallPhotoStateCopyWithImpl<$Res, AddWallPhotoState>;
  @useResult
  $Res call(
      {Option<XFile> photo,
      CubitStatus status,
      Option<String> snackbarMessage});
}

/// @nodoc
class _$AddWallPhotoStateCopyWithImpl<$Res, $Val extends AddWallPhotoState>
    implements $AddWallPhotoStateCopyWith<$Res> {
  _$AddWallPhotoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? status = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Option<XFile>,
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
abstract class _$$_AddWallPhotoStateCopyWith<$Res>
    implements $AddWallPhotoStateCopyWith<$Res> {
  factory _$$_AddWallPhotoStateCopyWith(_$_AddWallPhotoState value,
          $Res Function(_$_AddWallPhotoState) then) =
      __$$_AddWallPhotoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<XFile> photo,
      CubitStatus status,
      Option<String> snackbarMessage});
}

/// @nodoc
class __$$_AddWallPhotoStateCopyWithImpl<$Res>
    extends _$AddWallPhotoStateCopyWithImpl<$Res, _$_AddWallPhotoState>
    implements _$$_AddWallPhotoStateCopyWith<$Res> {
  __$$_AddWallPhotoStateCopyWithImpl(
      _$_AddWallPhotoState _value, $Res Function(_$_AddWallPhotoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? status = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$_AddWallPhotoState(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Option<XFile>,
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

class _$_AddWallPhotoState implements _AddWallPhotoState {
  const _$_AddWallPhotoState(
      {required this.photo,
      required this.status,
      required this.snackbarMessage});

  @override
  final Option<XFile> photo;
  @override
  final CubitStatus status;
  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'AddWallPhotoState(photo: $photo, status: $status, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddWallPhotoState &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo, status, snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddWallPhotoStateCopyWith<_$_AddWallPhotoState> get copyWith =>
      __$$_AddWallPhotoStateCopyWithImpl<_$_AddWallPhotoState>(
          this, _$identity);
}

abstract class _AddWallPhotoState implements AddWallPhotoState {
  const factory _AddWallPhotoState(
      {required final Option<XFile> photo,
      required final CubitStatus status,
      required final Option<String> snackbarMessage}) = _$_AddWallPhotoState;

  @override
  Option<XFile> get photo;
  @override
  CubitStatus get status;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AddWallPhotoStateCopyWith<_$_AddWallPhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

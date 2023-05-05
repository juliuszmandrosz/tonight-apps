// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_wall_photo_preview_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserWallPhotoPreviewState {
  CubitStatus get deletePhotoStatus => throw _privateConstructorUsedError;
  CubitStatus get sharePhotoStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserWallPhotoPreviewStateCopyWith<UserWallPhotoPreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWallPhotoPreviewStateCopyWith<$Res> {
  factory $UserWallPhotoPreviewStateCopyWith(UserWallPhotoPreviewState value,
          $Res Function(UserWallPhotoPreviewState) then) =
      _$UserWallPhotoPreviewStateCopyWithImpl<$Res, UserWallPhotoPreviewState>;
  @useResult
  $Res call({CubitStatus deletePhotoStatus, CubitStatus sharePhotoStatus});
}

/// @nodoc
class _$UserWallPhotoPreviewStateCopyWithImpl<$Res,
        $Val extends UserWallPhotoPreviewState>
    implements $UserWallPhotoPreviewStateCopyWith<$Res> {
  _$UserWallPhotoPreviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletePhotoStatus = null,
    Object? sharePhotoStatus = null,
  }) {
    return _then(_value.copyWith(
      deletePhotoStatus: null == deletePhotoStatus
          ? _value.deletePhotoStatus
          : deletePhotoStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      sharePhotoStatus: null == sharePhotoStatus
          ? _value.sharePhotoStatus
          : sharePhotoStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserWallPhotoPreviewStateCopyWith<$Res>
    implements $UserWallPhotoPreviewStateCopyWith<$Res> {
  factory _$$_UserWallPhotoPreviewStateCopyWith(
          _$_UserWallPhotoPreviewState value,
          $Res Function(_$_UserWallPhotoPreviewState) then) =
      __$$_UserWallPhotoPreviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CubitStatus deletePhotoStatus, CubitStatus sharePhotoStatus});
}

/// @nodoc
class __$$_UserWallPhotoPreviewStateCopyWithImpl<$Res>
    extends _$UserWallPhotoPreviewStateCopyWithImpl<$Res,
        _$_UserWallPhotoPreviewState>
    implements _$$_UserWallPhotoPreviewStateCopyWith<$Res> {
  __$$_UserWallPhotoPreviewStateCopyWithImpl(
      _$_UserWallPhotoPreviewState _value,
      $Res Function(_$_UserWallPhotoPreviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletePhotoStatus = null,
    Object? sharePhotoStatus = null,
  }) {
    return _then(_$_UserWallPhotoPreviewState(
      deletePhotoStatus: null == deletePhotoStatus
          ? _value.deletePhotoStatus
          : deletePhotoStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      sharePhotoStatus: null == sharePhotoStatus
          ? _value.sharePhotoStatus
          : sharePhotoStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_UserWallPhotoPreviewState implements _UserWallPhotoPreviewState {
  const _$_UserWallPhotoPreviewState(
      {required this.deletePhotoStatus, required this.sharePhotoStatus});

  @override
  final CubitStatus deletePhotoStatus;
  @override
  final CubitStatus sharePhotoStatus;

  @override
  String toString() {
    return 'UserWallPhotoPreviewState(deletePhotoStatus: $deletePhotoStatus, sharePhotoStatus: $sharePhotoStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWallPhotoPreviewState &&
            (identical(other.deletePhotoStatus, deletePhotoStatus) ||
                other.deletePhotoStatus == deletePhotoStatus) &&
            (identical(other.sharePhotoStatus, sharePhotoStatus) ||
                other.sharePhotoStatus == sharePhotoStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, deletePhotoStatus, sharePhotoStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserWallPhotoPreviewStateCopyWith<_$_UserWallPhotoPreviewState>
      get copyWith => __$$_UserWallPhotoPreviewStateCopyWithImpl<
          _$_UserWallPhotoPreviewState>(this, _$identity);
}

abstract class _UserWallPhotoPreviewState implements UserWallPhotoPreviewState {
  const factory _UserWallPhotoPreviewState(
          {required final CubitStatus deletePhotoStatus,
          required final CubitStatus sharePhotoStatus}) =
      _$_UserWallPhotoPreviewState;

  @override
  CubitStatus get deletePhotoStatus;
  @override
  CubitStatus get sharePhotoStatus;
  @override
  @JsonKey(ignore: true)
  _$$_UserWallPhotoPreviewStateCopyWith<_$_UserWallPhotoPreviewState>
      get copyWith => throw _privateConstructorUsedError;
}

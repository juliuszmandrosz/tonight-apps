// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_preview_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotoPreviewState {
  CubitStatus get addStoryStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoPreviewStateCopyWith<PhotoPreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoPreviewStateCopyWith<$Res> {
  factory $PhotoPreviewStateCopyWith(
          PhotoPreviewState value, $Res Function(PhotoPreviewState) then) =
      _$PhotoPreviewStateCopyWithImpl<$Res, PhotoPreviewState>;
  @useResult
  $Res call({CubitStatus addStoryStatus, Option<String> snackbarMessage});
}

/// @nodoc
class _$PhotoPreviewStateCopyWithImpl<$Res, $Val extends PhotoPreviewState>
    implements $PhotoPreviewStateCopyWith<$Res> {
  _$PhotoPreviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addStoryStatus = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_value.copyWith(
      addStoryStatus: null == addStoryStatus
          ? _value.addStoryStatus
          : addStoryStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoPreviewStateImplCopyWith<$Res>
    implements $PhotoPreviewStateCopyWith<$Res> {
  factory _$$PhotoPreviewStateImplCopyWith(_$PhotoPreviewStateImpl value,
          $Res Function(_$PhotoPreviewStateImpl) then) =
      __$$PhotoPreviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CubitStatus addStoryStatus, Option<String> snackbarMessage});
}

/// @nodoc
class __$$PhotoPreviewStateImplCopyWithImpl<$Res>
    extends _$PhotoPreviewStateCopyWithImpl<$Res, _$PhotoPreviewStateImpl>
    implements _$$PhotoPreviewStateImplCopyWith<$Res> {
  __$$PhotoPreviewStateImplCopyWithImpl(_$PhotoPreviewStateImpl _value,
      $Res Function(_$PhotoPreviewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addStoryStatus = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$PhotoPreviewStateImpl(
      addStoryStatus: null == addStoryStatus
          ? _value.addStoryStatus
          : addStoryStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$PhotoPreviewStateImpl implements _PhotoPreviewState {
  const _$PhotoPreviewStateImpl(
      {required this.addStoryStatus, required this.snackbarMessage});

  @override
  final CubitStatus addStoryStatus;
  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'PhotoPreviewState(addStoryStatus: $addStoryStatus, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoPreviewStateImpl &&
            (identical(other.addStoryStatus, addStoryStatus) ||
                other.addStoryStatus == addStoryStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addStoryStatus, snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoPreviewStateImplCopyWith<_$PhotoPreviewStateImpl> get copyWith =>
      __$$PhotoPreviewStateImplCopyWithImpl<_$PhotoPreviewStateImpl>(
          this, _$identity);
}

abstract class _PhotoPreviewState implements PhotoPreviewState {
  const factory _PhotoPreviewState(
      {required final CubitStatus addStoryStatus,
      required final Option<String> snackbarMessage}) = _$PhotoPreviewStateImpl;

  @override
  CubitStatus get addStoryStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$PhotoPreviewStateImplCopyWith<_$PhotoPreviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

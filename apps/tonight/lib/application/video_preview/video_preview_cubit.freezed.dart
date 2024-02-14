// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_preview_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoPreviewState {
  CubitStatus get addStoryStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoPreviewStateCopyWith<VideoPreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPreviewStateCopyWith<$Res> {
  factory $VideoPreviewStateCopyWith(
          VideoPreviewState value, $Res Function(VideoPreviewState) then) =
      _$VideoPreviewStateCopyWithImpl<$Res, VideoPreviewState>;
  @useResult
  $Res call({CubitStatus addStoryStatus, Option<String> snackbarMessage});
}

/// @nodoc
class _$VideoPreviewStateCopyWithImpl<$Res, $Val extends VideoPreviewState>
    implements $VideoPreviewStateCopyWith<$Res> {
  _$VideoPreviewStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_VideoPreviewStateCopyWith<$Res>
    implements $VideoPreviewStateCopyWith<$Res> {
  factory _$$_VideoPreviewStateCopyWith(_$_VideoPreviewState value,
          $Res Function(_$_VideoPreviewState) then) =
      __$$_VideoPreviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CubitStatus addStoryStatus, Option<String> snackbarMessage});
}

/// @nodoc
class __$$_VideoPreviewStateCopyWithImpl<$Res>
    extends _$VideoPreviewStateCopyWithImpl<$Res, _$_VideoPreviewState>
    implements _$$_VideoPreviewStateCopyWith<$Res> {
  __$$_VideoPreviewStateCopyWithImpl(
      _$_VideoPreviewState _value, $Res Function(_$_VideoPreviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addStoryStatus = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$_VideoPreviewState(
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

class _$_VideoPreviewState implements _VideoPreviewState {
  const _$_VideoPreviewState(
      {required this.addStoryStatus, required this.snackbarMessage});

  @override
  final CubitStatus addStoryStatus;
  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'VideoPreviewState(addStoryStatus: $addStoryStatus, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoPreviewState &&
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
  _$$_VideoPreviewStateCopyWith<_$_VideoPreviewState> get copyWith =>
      __$$_VideoPreviewStateCopyWithImpl<_$_VideoPreviewState>(
          this, _$identity);
}

abstract class _VideoPreviewState implements VideoPreviewState {
  const factory _VideoPreviewState(
      {required final CubitStatus addStoryStatus,
      required final Option<String> snackbarMessage}) = _$_VideoPreviewState;

  @override
  CubitStatus get addStoryStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$_VideoPreviewStateCopyWith<_$_VideoPreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

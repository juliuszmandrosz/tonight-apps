// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wall_photos_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WallPhotosState {
  CubitStatus get getPhotosStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  List<WallPhoto> get photos => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WallPhotosStateCopyWith<WallPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallPhotosStateCopyWith<$Res> {
  factory $WallPhotosStateCopyWith(
          WallPhotosState value, $Res Function(WallPhotosState) then) =
      _$WallPhotosStateCopyWithImpl<$Res, WallPhotosState>;
  @useResult
  $Res call(
      {CubitStatus getPhotosStatus,
      CubitStatus nextPageStatus,
      Option<String> errorMessage,
      List<WallPhoto> photos,
      bool hasReachedMax});
}

/// @nodoc
class _$WallPhotosStateCopyWithImpl<$Res, $Val extends WallPhotosState>
    implements $WallPhotosStateCopyWith<$Res> {
  _$WallPhotosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPhotosStatus = null,
    Object? nextPageStatus = null,
    Object? errorMessage = null,
    Object? photos = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_value.copyWith(
      getPhotosStatus: null == getPhotosStatus
          ? _value.getPhotosStatus
          : getPhotosStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<WallPhoto>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WallPhotosStateCopyWith<$Res>
    implements $WallPhotosStateCopyWith<$Res> {
  factory _$$_WallPhotosStateCopyWith(
          _$_WallPhotosState value, $Res Function(_$_WallPhotosState) then) =
      __$$_WallPhotosStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getPhotosStatus,
      CubitStatus nextPageStatus,
      Option<String> errorMessage,
      List<WallPhoto> photos,
      bool hasReachedMax});
}

/// @nodoc
class __$$_WallPhotosStateCopyWithImpl<$Res>
    extends _$WallPhotosStateCopyWithImpl<$Res, _$_WallPhotosState>
    implements _$$_WallPhotosStateCopyWith<$Res> {
  __$$_WallPhotosStateCopyWithImpl(
      _$_WallPhotosState _value, $Res Function(_$_WallPhotosState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPhotosStatus = null,
    Object? nextPageStatus = null,
    Object? errorMessage = null,
    Object? photos = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_WallPhotosState(
      getPhotosStatus: null == getPhotosStatus
          ? _value.getPhotosStatus
          : getPhotosStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<WallPhoto>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WallPhotosState implements _WallPhotosState {
  const _$_WallPhotosState(
      {required this.getPhotosStatus,
      required this.nextPageStatus,
      required this.errorMessage,
      required final List<WallPhoto> photos,
      required this.hasReachedMax})
      : _photos = photos;

  @override
  final CubitStatus getPhotosStatus;
  @override
  final CubitStatus nextPageStatus;
  @override
  final Option<String> errorMessage;
  final List<WallPhoto> _photos;
  @override
  List<WallPhoto> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'WallPhotosState(getPhotosStatus: $getPhotosStatus, nextPageStatus: $nextPageStatus, errorMessage: $errorMessage, photos: $photos, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WallPhotosState &&
            (identical(other.getPhotosStatus, getPhotosStatus) ||
                other.getPhotosStatus == getPhotosStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getPhotosStatus,
      nextPageStatus,
      errorMessage,
      const DeepCollectionEquality().hash(_photos),
      hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WallPhotosStateCopyWith<_$_WallPhotosState> get copyWith =>
      __$$_WallPhotosStateCopyWithImpl<_$_WallPhotosState>(this, _$identity);
}

abstract class _WallPhotosState implements WallPhotosState {
  const factory _WallPhotosState(
      {required final CubitStatus getPhotosStatus,
      required final CubitStatus nextPageStatus,
      required final Option<String> errorMessage,
      required final List<WallPhoto> photos,
      required final bool hasReachedMax}) = _$_WallPhotosState;

  @override
  CubitStatus get getPhotosStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  Option<String> get errorMessage;
  @override
  List<WallPhoto> get photos;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$_WallPhotosStateCopyWith<_$_WallPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

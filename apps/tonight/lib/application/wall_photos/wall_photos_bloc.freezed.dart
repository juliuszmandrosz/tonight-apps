// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wall_photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WallPhotosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) wallPhotosFetched,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function() wallPhotosRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WallPhotosFetched value) wallPhotosFetched,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_WallPhotosRefreshed value) wallPhotosRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallPhotosEventCopyWith<$Res> {
  factory $WallPhotosEventCopyWith(
          WallPhotosEvent value, $Res Function(WallPhotosEvent) then) =
      _$WallPhotosEventCopyWithImpl<$Res, WallPhotosEvent>;
}

/// @nodoc
class _$WallPhotosEventCopyWithImpl<$Res, $Val extends WallPhotosEvent>
    implements $WallPhotosEventCopyWith<$Res> {
  _$WallPhotosEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WallPhotosFetchedCopyWith<$Res> {
  factory _$$_WallPhotosFetchedCopyWith(_$_WallPhotosFetched value,
          $Res Function(_$_WallPhotosFetched) then) =
      __$$_WallPhotosFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<LatLng> userLocation});
}

/// @nodoc
class __$$_WallPhotosFetchedCopyWithImpl<$Res>
    extends _$WallPhotosEventCopyWithImpl<$Res, _$_WallPhotosFetched>
    implements _$$_WallPhotosFetchedCopyWith<$Res> {
  __$$_WallPhotosFetchedCopyWithImpl(
      _$_WallPhotosFetched _value, $Res Function(_$_WallPhotosFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
  }) {
    return _then(_$_WallPhotosFetched(
      null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
    ));
  }
}

/// @nodoc

class _$_WallPhotosFetched implements _WallPhotosFetched {
  const _$_WallPhotosFetched(this.userLocation);

  @override
  final Option<LatLng> userLocation;

  @override
  String toString() {
    return 'WallPhotosEvent.wallPhotosFetched(userLocation: $userLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WallPhotosFetched &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WallPhotosFetchedCopyWith<_$_WallPhotosFetched> get copyWith =>
      __$$_WallPhotosFetchedCopyWithImpl<_$_WallPhotosFetched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) wallPhotosFetched,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function() wallPhotosRefreshed,
  }) {
    return wallPhotosFetched(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
  }) {
    return wallPhotosFetched?.call(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    required TResult orElse(),
  }) {
    if (wallPhotosFetched != null) {
      return wallPhotosFetched(userLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WallPhotosFetched value) wallPhotosFetched,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_WallPhotosRefreshed value) wallPhotosRefreshed,
  }) {
    return wallPhotosFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
  }) {
    return wallPhotosFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    required TResult orElse(),
  }) {
    if (wallPhotosFetched != null) {
      return wallPhotosFetched(this);
    }
    return orElse();
  }
}

abstract class _WallPhotosFetched implements WallPhotosEvent {
  const factory _WallPhotosFetched(final Option<LatLng> userLocation) =
      _$_WallPhotosFetched;

  Option<LatLng> get userLocation;
  @JsonKey(ignore: true)
  _$$_WallPhotosFetchedCopyWith<_$_WallPhotosFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextPagePhotosFetchedCopyWith<$Res> {
  factory _$$_NextPagePhotosFetchedCopyWith(_$_NextPagePhotosFetched value,
          $Res Function(_$_NextPagePhotosFetched) then) =
      __$$_NextPagePhotosFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPagePhotosFetchedCopyWithImpl<$Res>
    extends _$WallPhotosEventCopyWithImpl<$Res, _$_NextPagePhotosFetched>
    implements _$$_NextPagePhotosFetchedCopyWith<$Res> {
  __$$_NextPagePhotosFetchedCopyWithImpl(_$_NextPagePhotosFetched _value,
      $Res Function(_$_NextPagePhotosFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPagePhotosFetched implements _NextPagePhotosFetched {
  const _$_NextPagePhotosFetched();

  @override
  String toString() {
    return 'WallPhotosEvent.nextPagePhotosFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NextPagePhotosFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) wallPhotosFetched,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function() wallPhotosRefreshed,
  }) {
    return nextPagePhotosFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
  }) {
    return nextPagePhotosFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    required TResult orElse(),
  }) {
    if (nextPagePhotosFetched != null) {
      return nextPagePhotosFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WallPhotosFetched value) wallPhotosFetched,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_WallPhotosRefreshed value) wallPhotosRefreshed,
  }) {
    return nextPagePhotosFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
  }) {
    return nextPagePhotosFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    required TResult orElse(),
  }) {
    if (nextPagePhotosFetched != null) {
      return nextPagePhotosFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPagePhotosFetched implements WallPhotosEvent {
  const factory _NextPagePhotosFetched() = _$_NextPagePhotosFetched;
}

/// @nodoc
abstract class _$$_WallPhotosRefreshedCopyWith<$Res> {
  factory _$$_WallPhotosRefreshedCopyWith(_$_WallPhotosRefreshed value,
          $Res Function(_$_WallPhotosRefreshed) then) =
      __$$_WallPhotosRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WallPhotosRefreshedCopyWithImpl<$Res>
    extends _$WallPhotosEventCopyWithImpl<$Res, _$_WallPhotosRefreshed>
    implements _$$_WallPhotosRefreshedCopyWith<$Res> {
  __$$_WallPhotosRefreshedCopyWithImpl(_$_WallPhotosRefreshed _value,
      $Res Function(_$_WallPhotosRefreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WallPhotosRefreshed implements _WallPhotosRefreshed {
  const _$_WallPhotosRefreshed();

  @override
  String toString() {
    return 'WallPhotosEvent.wallPhotosRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WallPhotosRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) wallPhotosFetched,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function() wallPhotosRefreshed,
  }) {
    return wallPhotosRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
  }) {
    return wallPhotosRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    required TResult orElse(),
  }) {
    if (wallPhotosRefreshed != null) {
      return wallPhotosRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WallPhotosFetched value) wallPhotosFetched,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_WallPhotosRefreshed value) wallPhotosRefreshed,
  }) {
    return wallPhotosRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
  }) {
    return wallPhotosRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    required TResult orElse(),
  }) {
    if (wallPhotosRefreshed != null) {
      return wallPhotosRefreshed(this);
    }
    return orElse();
  }
}

abstract class _WallPhotosRefreshed implements WallPhotosEvent {
  const factory _WallPhotosRefreshed() = _$_WallPhotosRefreshed;
}

/// @nodoc
mixin _$WallPhotosState {
  CubitStatus get getPhotosStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  List<WallPhoto> get photos => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String get filterPhrase => throw _privateConstructorUsedError;
  Option<LatLng> get userLocation => throw _privateConstructorUsedError;

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
      bool hasReachedMax,
      String filterPhrase,
      Option<LatLng> userLocation});
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
    Object? filterPhrase = null,
    Object? userLocation = null,
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
      filterPhrase: null == filterPhrase
          ? _value.filterPhrase
          : filterPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
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
      bool hasReachedMax,
      String filterPhrase,
      Option<LatLng> userLocation});
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
    Object? filterPhrase = null,
    Object? userLocation = null,
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
      filterPhrase: null == filterPhrase
          ? _value.filterPhrase
          : filterPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
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
      required this.hasReachedMax,
      required this.filterPhrase,
      required this.userLocation})
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
  final String filterPhrase;
  @override
  final Option<LatLng> userLocation;

  @override
  String toString() {
    return 'WallPhotosState(getPhotosStatus: $getPhotosStatus, nextPageStatus: $nextPageStatus, errorMessage: $errorMessage, photos: $photos, hasReachedMax: $hasReachedMax, filterPhrase: $filterPhrase, userLocation: $userLocation)';
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
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.filterPhrase, filterPhrase) ||
                other.filterPhrase == filterPhrase) &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getPhotosStatus,
      nextPageStatus,
      errorMessage,
      const DeepCollectionEquality().hash(_photos),
      hasReachedMax,
      filterPhrase,
      userLocation);

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
      required final bool hasReachedMax,
      required final String filterPhrase,
      required final Option<LatLng> userLocation}) = _$_WallPhotosState;

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
  String get filterPhrase;
  @override
  Option<LatLng> get userLocation;
  @override
  @JsonKey(ignore: true)
  _$$_WallPhotosStateCopyWith<_$_WallPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

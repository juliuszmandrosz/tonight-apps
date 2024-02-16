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
    required TResult Function(WallPhoto photo) wallPhotoReported,
    required TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuWallPhotoFilter filter) menuFilterRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
    TResult? Function(WallPhoto photo)? wallPhotoReported,
    TResult? Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    TResult Function(WallPhoto photo)? wallPhotoReported,
    TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WallPhotosFetched value) wallPhotosFetched,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_WallPhotosRefreshed value) wallPhotosRefreshed,
    required TResult Function(_WallPhotoReported value) wallPhotoReported,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult? Function(_WallPhotoReported value)? wallPhotoReported,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult Function(_WallPhotoReported value)? wallPhotoReported,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
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
abstract class _$$WallPhotosFetchedImplCopyWith<$Res> {
  factory _$$WallPhotosFetchedImplCopyWith(_$WallPhotosFetchedImpl value,
          $Res Function(_$WallPhotosFetchedImpl) then) =
      __$$WallPhotosFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<LatLng> userLocation});
}

/// @nodoc
class __$$WallPhotosFetchedImplCopyWithImpl<$Res>
    extends _$WallPhotosEventCopyWithImpl<$Res, _$WallPhotosFetchedImpl>
    implements _$$WallPhotosFetchedImplCopyWith<$Res> {
  __$$WallPhotosFetchedImplCopyWithImpl(_$WallPhotosFetchedImpl _value,
      $Res Function(_$WallPhotosFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
  }) {
    return _then(_$WallPhotosFetchedImpl(
      null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
    ));
  }
}

/// @nodoc

class _$WallPhotosFetchedImpl implements _WallPhotosFetched {
  const _$WallPhotosFetchedImpl(this.userLocation);

  @override
  final Option<LatLng> userLocation;

  @override
  String toString() {
    return 'WallPhotosEvent.wallPhotosFetched(userLocation: $userLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WallPhotosFetchedImpl &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WallPhotosFetchedImplCopyWith<_$WallPhotosFetchedImpl> get copyWith =>
      __$$WallPhotosFetchedImplCopyWithImpl<_$WallPhotosFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) wallPhotosFetched,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function() wallPhotosRefreshed,
    required TResult Function(WallPhoto photo) wallPhotoReported,
    required TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuWallPhotoFilter filter) menuFilterRemoved,
  }) {
    return wallPhotosFetched(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
    TResult? Function(WallPhoto photo)? wallPhotoReported,
    TResult? Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
  }) {
    return wallPhotosFetched?.call(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    TResult Function(WallPhoto photo)? wallPhotoReported,
    TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
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
    required TResult Function(_WallPhotoReported value) wallPhotoReported,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
  }) {
    return wallPhotosFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult? Function(_WallPhotoReported value)? wallPhotoReported,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
  }) {
    return wallPhotosFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult Function(_WallPhotoReported value)? wallPhotoReported,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
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
      _$WallPhotosFetchedImpl;

  Option<LatLng> get userLocation;
  @JsonKey(ignore: true)
  _$$WallPhotosFetchedImplCopyWith<_$WallPhotosFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPagePhotosFetchedImplCopyWith<$Res> {
  factory _$$NextPagePhotosFetchedImplCopyWith(
          _$NextPagePhotosFetchedImpl value,
          $Res Function(_$NextPagePhotosFetchedImpl) then) =
      __$$NextPagePhotosFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPagePhotosFetchedImplCopyWithImpl<$Res>
    extends _$WallPhotosEventCopyWithImpl<$Res, _$NextPagePhotosFetchedImpl>
    implements _$$NextPagePhotosFetchedImplCopyWith<$Res> {
  __$$NextPagePhotosFetchedImplCopyWithImpl(_$NextPagePhotosFetchedImpl _value,
      $Res Function(_$NextPagePhotosFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPagePhotosFetchedImpl implements _NextPagePhotosFetched {
  const _$NextPagePhotosFetchedImpl();

  @override
  String toString() {
    return 'WallPhotosEvent.nextPagePhotosFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPagePhotosFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) wallPhotosFetched,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function() wallPhotosRefreshed,
    required TResult Function(WallPhoto photo) wallPhotoReported,
    required TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuWallPhotoFilter filter) menuFilterRemoved,
  }) {
    return nextPagePhotosFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
    TResult? Function(WallPhoto photo)? wallPhotoReported,
    TResult? Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
  }) {
    return nextPagePhotosFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    TResult Function(WallPhoto photo)? wallPhotoReported,
    TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
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
    required TResult Function(_WallPhotoReported value) wallPhotoReported,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
  }) {
    return nextPagePhotosFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult? Function(_WallPhotoReported value)? wallPhotoReported,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
  }) {
    return nextPagePhotosFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult Function(_WallPhotoReported value)? wallPhotoReported,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    required TResult orElse(),
  }) {
    if (nextPagePhotosFetched != null) {
      return nextPagePhotosFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPagePhotosFetched implements WallPhotosEvent {
  const factory _NextPagePhotosFetched() = _$NextPagePhotosFetchedImpl;
}

/// @nodoc
abstract class _$$WallPhotosRefreshedImplCopyWith<$Res> {
  factory _$$WallPhotosRefreshedImplCopyWith(_$WallPhotosRefreshedImpl value,
          $Res Function(_$WallPhotosRefreshedImpl) then) =
      __$$WallPhotosRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WallPhotosRefreshedImplCopyWithImpl<$Res>
    extends _$WallPhotosEventCopyWithImpl<$Res, _$WallPhotosRefreshedImpl>
    implements _$$WallPhotosRefreshedImplCopyWith<$Res> {
  __$$WallPhotosRefreshedImplCopyWithImpl(_$WallPhotosRefreshedImpl _value,
      $Res Function(_$WallPhotosRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WallPhotosRefreshedImpl implements _WallPhotosRefreshed {
  const _$WallPhotosRefreshedImpl();

  @override
  String toString() {
    return 'WallPhotosEvent.wallPhotosRefreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WallPhotosRefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) wallPhotosFetched,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function() wallPhotosRefreshed,
    required TResult Function(WallPhoto photo) wallPhotoReported,
    required TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuWallPhotoFilter filter) menuFilterRemoved,
  }) {
    return wallPhotosRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
    TResult? Function(WallPhoto photo)? wallPhotoReported,
    TResult? Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
  }) {
    return wallPhotosRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    TResult Function(WallPhoto photo)? wallPhotoReported,
    TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
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
    required TResult Function(_WallPhotoReported value) wallPhotoReported,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
  }) {
    return wallPhotosRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult? Function(_WallPhotoReported value)? wallPhotoReported,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
  }) {
    return wallPhotosRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult Function(_WallPhotoReported value)? wallPhotoReported,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    required TResult orElse(),
  }) {
    if (wallPhotosRefreshed != null) {
      return wallPhotosRefreshed(this);
    }
    return orElse();
  }
}

abstract class _WallPhotosRefreshed implements WallPhotosEvent {
  const factory _WallPhotosRefreshed() = _$WallPhotosRefreshedImpl;
}

/// @nodoc
abstract class _$$WallPhotoReportedImplCopyWith<$Res> {
  factory _$$WallPhotoReportedImplCopyWith(_$WallPhotoReportedImpl value,
          $Res Function(_$WallPhotoReportedImpl) then) =
      __$$WallPhotoReportedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WallPhoto photo});
}

/// @nodoc
class __$$WallPhotoReportedImplCopyWithImpl<$Res>
    extends _$WallPhotosEventCopyWithImpl<$Res, _$WallPhotoReportedImpl>
    implements _$$WallPhotoReportedImplCopyWith<$Res> {
  __$$WallPhotoReportedImplCopyWithImpl(_$WallPhotoReportedImpl _value,
      $Res Function(_$WallPhotoReportedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$WallPhotoReportedImpl(
      null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as WallPhoto,
    ));
  }
}

/// @nodoc

class _$WallPhotoReportedImpl implements _WallPhotoReported {
  const _$WallPhotoReportedImpl(this.photo);

  @override
  final WallPhoto photo;

  @override
  String toString() {
    return 'WallPhotosEvent.wallPhotoReported(photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WallPhotoReportedImpl &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WallPhotoReportedImplCopyWith<_$WallPhotoReportedImpl> get copyWith =>
      __$$WallPhotoReportedImplCopyWithImpl<_$WallPhotoReportedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) wallPhotosFetched,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function() wallPhotosRefreshed,
    required TResult Function(WallPhoto photo) wallPhotoReported,
    required TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuWallPhotoFilter filter) menuFilterRemoved,
  }) {
    return wallPhotoReported(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
    TResult? Function(WallPhoto photo)? wallPhotoReported,
    TResult? Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
  }) {
    return wallPhotoReported?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    TResult Function(WallPhoto photo)? wallPhotoReported,
    TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
    required TResult orElse(),
  }) {
    if (wallPhotoReported != null) {
      return wallPhotoReported(photo);
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
    required TResult Function(_WallPhotoReported value) wallPhotoReported,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
  }) {
    return wallPhotoReported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult? Function(_WallPhotoReported value)? wallPhotoReported,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
  }) {
    return wallPhotoReported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult Function(_WallPhotoReported value)? wallPhotoReported,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    required TResult orElse(),
  }) {
    if (wallPhotoReported != null) {
      return wallPhotoReported(this);
    }
    return orElse();
  }
}

abstract class _WallPhotoReported implements WallPhotosEvent {
  const factory _WallPhotoReported(final WallPhoto photo) =
      _$WallPhotoReportedImpl;

  WallPhoto get photo;
  @JsonKey(ignore: true)
  _$$WallPhotoReportedImplCopyWith<_$WallPhotoReportedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MenuFiltersAppliedImplCopyWith<$Res> {
  factory _$$MenuFiltersAppliedImplCopyWith(_$MenuFiltersAppliedImpl value,
          $Res Function(_$MenuFiltersAppliedImpl) then) =
      __$$MenuFiltersAppliedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {WallPhotoFilters filters,
      Map<MenuWallPhotoFilter, IFilter> appliedFilters});

  $WallPhotoFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$MenuFiltersAppliedImplCopyWithImpl<$Res>
    extends _$WallPhotosEventCopyWithImpl<$Res, _$MenuFiltersAppliedImpl>
    implements _$$MenuFiltersAppliedImplCopyWith<$Res> {
  __$$MenuFiltersAppliedImplCopyWithImpl(_$MenuFiltersAppliedImpl _value,
      $Res Function(_$MenuFiltersAppliedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? appliedFilters = null,
  }) {
    return _then(_$MenuFiltersAppliedImpl(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as WallPhotoFilters,
      appliedFilters: null == appliedFilters
          ? _value._appliedFilters
          : appliedFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuWallPhotoFilter, IFilter>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WallPhotoFiltersCopyWith<$Res> get filters {
    return $WallPhotoFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$MenuFiltersAppliedImpl implements _MenuFiltersApplied {
  const _$MenuFiltersAppliedImpl(
      {required this.filters,
      required final Map<MenuWallPhotoFilter, IFilter> appliedFilters})
      : _appliedFilters = appliedFilters;

  @override
  final WallPhotoFilters filters;
  final Map<MenuWallPhotoFilter, IFilter> _appliedFilters;
  @override
  Map<MenuWallPhotoFilter, IFilter> get appliedFilters {
    if (_appliedFilters is EqualUnmodifiableMapView) return _appliedFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appliedFilters);
  }

  @override
  String toString() {
    return 'WallPhotosEvent.menuFiltersApplied(filters: $filters, appliedFilters: $appliedFilters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuFiltersAppliedImpl &&
            (identical(other.filters, filters) || other.filters == filters) &&
            const DeepCollectionEquality()
                .equals(other._appliedFilters, _appliedFilters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters,
      const DeepCollectionEquality().hash(_appliedFilters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuFiltersAppliedImplCopyWith<_$MenuFiltersAppliedImpl> get copyWith =>
      __$$MenuFiltersAppliedImplCopyWithImpl<_$MenuFiltersAppliedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) wallPhotosFetched,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function() wallPhotosRefreshed,
    required TResult Function(WallPhoto photo) wallPhotoReported,
    required TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuWallPhotoFilter filter) menuFilterRemoved,
  }) {
    return menuFiltersApplied(filters, appliedFilters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
    TResult? Function(WallPhoto photo)? wallPhotoReported,
    TResult? Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
  }) {
    return menuFiltersApplied?.call(filters, appliedFilters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    TResult Function(WallPhoto photo)? wallPhotoReported,
    TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
    required TResult orElse(),
  }) {
    if (menuFiltersApplied != null) {
      return menuFiltersApplied(filters, appliedFilters);
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
    required TResult Function(_WallPhotoReported value) wallPhotoReported,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
  }) {
    return menuFiltersApplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult? Function(_WallPhotoReported value)? wallPhotoReported,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
  }) {
    return menuFiltersApplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult Function(_WallPhotoReported value)? wallPhotoReported,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    required TResult orElse(),
  }) {
    if (menuFiltersApplied != null) {
      return menuFiltersApplied(this);
    }
    return orElse();
  }
}

abstract class _MenuFiltersApplied implements WallPhotosEvent {
  const factory _MenuFiltersApplied(
          {required final WallPhotoFilters filters,
          required final Map<MenuWallPhotoFilter, IFilter> appliedFilters}) =
      _$MenuFiltersAppliedImpl;

  WallPhotoFilters get filters;
  Map<MenuWallPhotoFilter, IFilter> get appliedFilters;
  @JsonKey(ignore: true)
  _$$MenuFiltersAppliedImplCopyWith<_$MenuFiltersAppliedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MenuFilterRemovedImplCopyWith<$Res> {
  factory _$$MenuFilterRemovedImplCopyWith(_$MenuFilterRemovedImpl value,
          $Res Function(_$MenuFilterRemovedImpl) then) =
      __$$MenuFilterRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MenuWallPhotoFilter filter});
}

/// @nodoc
class __$$MenuFilterRemovedImplCopyWithImpl<$Res>
    extends _$WallPhotosEventCopyWithImpl<$Res, _$MenuFilterRemovedImpl>
    implements _$$MenuFilterRemovedImplCopyWith<$Res> {
  __$$MenuFilterRemovedImplCopyWithImpl(_$MenuFilterRemovedImpl _value,
      $Res Function(_$MenuFilterRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$MenuFilterRemovedImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as MenuWallPhotoFilter,
    ));
  }
}

/// @nodoc

class _$MenuFilterRemovedImpl implements _MenuFilterRemoved {
  const _$MenuFilterRemovedImpl(this.filter);

  @override
  final MenuWallPhotoFilter filter;

  @override
  String toString() {
    return 'WallPhotosEvent.menuFilterRemoved(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuFilterRemovedImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuFilterRemovedImplCopyWith<_$MenuFilterRemovedImpl> get copyWith =>
      __$$MenuFilterRemovedImplCopyWithImpl<_$MenuFilterRemovedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) wallPhotosFetched,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function() wallPhotosRefreshed,
    required TResult Function(WallPhoto photo) wallPhotoReported,
    required TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuWallPhotoFilter filter) menuFilterRemoved,
  }) {
    return menuFilterRemoved(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function()? wallPhotosRefreshed,
    TResult? Function(WallPhoto photo)? wallPhotoReported,
    TResult? Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
  }) {
    return menuFilterRemoved?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? wallPhotosFetched,
    TResult Function()? nextPagePhotosFetched,
    TResult Function()? wallPhotosRefreshed,
    TResult Function(WallPhoto photo)? wallPhotoReported,
    TResult Function(WallPhotoFilters filters,
            Map<MenuWallPhotoFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuWallPhotoFilter filter)? menuFilterRemoved,
    required TResult orElse(),
  }) {
    if (menuFilterRemoved != null) {
      return menuFilterRemoved(filter);
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
    required TResult Function(_WallPhotoReported value) wallPhotoReported,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
  }) {
    return menuFilterRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult? Function(_WallPhotoReported value)? wallPhotoReported,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
  }) {
    return menuFilterRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WallPhotosFetched value)? wallPhotosFetched,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_WallPhotosRefreshed value)? wallPhotosRefreshed,
    TResult Function(_WallPhotoReported value)? wallPhotoReported,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    required TResult orElse(),
  }) {
    if (menuFilterRemoved != null) {
      return menuFilterRemoved(this);
    }
    return orElse();
  }
}

abstract class _MenuFilterRemoved implements WallPhotosEvent {
  const factory _MenuFilterRemoved(final MenuWallPhotoFilter filter) =
      _$MenuFilterRemovedImpl;

  MenuWallPhotoFilter get filter;
  @JsonKey(ignore: true)
  _$$MenuFilterRemovedImplCopyWith<_$MenuFilterRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WallPhotosState {
  CubitStatus get getPhotosStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  List<WallPhoto> get photos => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String get filterPhrase => throw _privateConstructorUsedError;
  Option<WallPhotoFailure> get failure => throw _privateConstructorUsedError;
  List<String> get reportingWallPhotoIds => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  WallPhotoFilters get wallPhotoFilters => throw _privateConstructorUsedError;
  Map<MenuWallPhotoFilter, IFilter> get appliedMenuFilters =>
      throw _privateConstructorUsedError;

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
      List<WallPhoto> photos,
      bool hasReachedMax,
      String filterPhrase,
      Option<WallPhotoFailure> failure,
      List<String> reportingWallPhotoIds,
      Option<String> snackbarMessage,
      WallPhotoFilters wallPhotoFilters,
      Map<MenuWallPhotoFilter, IFilter> appliedMenuFilters});

  $WallPhotoFiltersCopyWith<$Res> get wallPhotoFilters;
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
    Object? photos = null,
    Object? hasReachedMax = null,
    Object? filterPhrase = null,
    Object? failure = null,
    Object? reportingWallPhotoIds = null,
    Object? snackbarMessage = null,
    Object? wallPhotoFilters = null,
    Object? appliedMenuFilters = null,
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
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<WallPhotoFailure>,
      reportingWallPhotoIds: null == reportingWallPhotoIds
          ? _value.reportingWallPhotoIds
          : reportingWallPhotoIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      wallPhotoFilters: null == wallPhotoFilters
          ? _value.wallPhotoFilters
          : wallPhotoFilters // ignore: cast_nullable_to_non_nullable
              as WallPhotoFilters,
      appliedMenuFilters: null == appliedMenuFilters
          ? _value.appliedMenuFilters
          : appliedMenuFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuWallPhotoFilter, IFilter>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WallPhotoFiltersCopyWith<$Res> get wallPhotoFilters {
    return $WallPhotoFiltersCopyWith<$Res>(_value.wallPhotoFilters, (value) {
      return _then(_value.copyWith(wallPhotoFilters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WallPhotosStateImplCopyWith<$Res>
    implements $WallPhotosStateCopyWith<$Res> {
  factory _$$WallPhotosStateImplCopyWith(_$WallPhotosStateImpl value,
          $Res Function(_$WallPhotosStateImpl) then) =
      __$$WallPhotosStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getPhotosStatus,
      CubitStatus nextPageStatus,
      List<WallPhoto> photos,
      bool hasReachedMax,
      String filterPhrase,
      Option<WallPhotoFailure> failure,
      List<String> reportingWallPhotoIds,
      Option<String> snackbarMessage,
      WallPhotoFilters wallPhotoFilters,
      Map<MenuWallPhotoFilter, IFilter> appliedMenuFilters});

  @override
  $WallPhotoFiltersCopyWith<$Res> get wallPhotoFilters;
}

/// @nodoc
class __$$WallPhotosStateImplCopyWithImpl<$Res>
    extends _$WallPhotosStateCopyWithImpl<$Res, _$WallPhotosStateImpl>
    implements _$$WallPhotosStateImplCopyWith<$Res> {
  __$$WallPhotosStateImplCopyWithImpl(
      _$WallPhotosStateImpl _value, $Res Function(_$WallPhotosStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPhotosStatus = null,
    Object? nextPageStatus = null,
    Object? photos = null,
    Object? hasReachedMax = null,
    Object? filterPhrase = null,
    Object? failure = null,
    Object? reportingWallPhotoIds = null,
    Object? snackbarMessage = null,
    Object? wallPhotoFilters = null,
    Object? appliedMenuFilters = null,
  }) {
    return _then(_$WallPhotosStateImpl(
      getPhotosStatus: null == getPhotosStatus
          ? _value.getPhotosStatus
          : getPhotosStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
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
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<WallPhotoFailure>,
      reportingWallPhotoIds: null == reportingWallPhotoIds
          ? _value._reportingWallPhotoIds
          : reportingWallPhotoIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      wallPhotoFilters: null == wallPhotoFilters
          ? _value.wallPhotoFilters
          : wallPhotoFilters // ignore: cast_nullable_to_non_nullable
              as WallPhotoFilters,
      appliedMenuFilters: null == appliedMenuFilters
          ? _value._appliedMenuFilters
          : appliedMenuFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuWallPhotoFilter, IFilter>,
    ));
  }
}

/// @nodoc

class _$WallPhotosStateImpl implements _WallPhotosState {
  const _$WallPhotosStateImpl(
      {required this.getPhotosStatus,
      required this.nextPageStatus,
      required final List<WallPhoto> photos,
      required this.hasReachedMax,
      required this.filterPhrase,
      required this.failure,
      required final List<String> reportingWallPhotoIds,
      required this.snackbarMessage,
      required this.wallPhotoFilters,
      required final Map<MenuWallPhotoFilter, IFilter> appliedMenuFilters})
      : _photos = photos,
        _reportingWallPhotoIds = reportingWallPhotoIds,
        _appliedMenuFilters = appliedMenuFilters;

  @override
  final CubitStatus getPhotosStatus;
  @override
  final CubitStatus nextPageStatus;
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
  final Option<WallPhotoFailure> failure;
  final List<String> _reportingWallPhotoIds;
  @override
  List<String> get reportingWallPhotoIds {
    if (_reportingWallPhotoIds is EqualUnmodifiableListView)
      return _reportingWallPhotoIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportingWallPhotoIds);
  }

  @override
  final Option<String> snackbarMessage;
  @override
  final WallPhotoFilters wallPhotoFilters;
  final Map<MenuWallPhotoFilter, IFilter> _appliedMenuFilters;
  @override
  Map<MenuWallPhotoFilter, IFilter> get appliedMenuFilters {
    if (_appliedMenuFilters is EqualUnmodifiableMapView)
      return _appliedMenuFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appliedMenuFilters);
  }

  @override
  String toString() {
    return 'WallPhotosState(getPhotosStatus: $getPhotosStatus, nextPageStatus: $nextPageStatus, photos: $photos, hasReachedMax: $hasReachedMax, filterPhrase: $filterPhrase, failure: $failure, reportingWallPhotoIds: $reportingWallPhotoIds, snackbarMessage: $snackbarMessage, wallPhotoFilters: $wallPhotoFilters, appliedMenuFilters: $appliedMenuFilters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WallPhotosStateImpl &&
            (identical(other.getPhotosStatus, getPhotosStatus) ||
                other.getPhotosStatus == getPhotosStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.filterPhrase, filterPhrase) ||
                other.filterPhrase == filterPhrase) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other._reportingWallPhotoIds, _reportingWallPhotoIds) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.wallPhotoFilters, wallPhotoFilters) ||
                other.wallPhotoFilters == wallPhotoFilters) &&
            const DeepCollectionEquality()
                .equals(other._appliedMenuFilters, _appliedMenuFilters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getPhotosStatus,
      nextPageStatus,
      const DeepCollectionEquality().hash(_photos),
      hasReachedMax,
      filterPhrase,
      failure,
      const DeepCollectionEquality().hash(_reportingWallPhotoIds),
      snackbarMessage,
      wallPhotoFilters,
      const DeepCollectionEquality().hash(_appliedMenuFilters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WallPhotosStateImplCopyWith<_$WallPhotosStateImpl> get copyWith =>
      __$$WallPhotosStateImplCopyWithImpl<_$WallPhotosStateImpl>(
          this, _$identity);
}

abstract class _WallPhotosState implements WallPhotosState {
  const factory _WallPhotosState(
      {required final CubitStatus getPhotosStatus,
      required final CubitStatus nextPageStatus,
      required final List<WallPhoto> photos,
      required final bool hasReachedMax,
      required final String filterPhrase,
      required final Option<WallPhotoFailure> failure,
      required final List<String> reportingWallPhotoIds,
      required final Option<String> snackbarMessage,
      required final WallPhotoFilters wallPhotoFilters,
      required final Map<MenuWallPhotoFilter, IFilter>
          appliedMenuFilters}) = _$WallPhotosStateImpl;

  @override
  CubitStatus get getPhotosStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  List<WallPhoto> get photos;
  @override
  bool get hasReachedMax;
  @override
  String get filterPhrase;
  @override
  Option<WallPhotoFailure> get failure;
  @override
  List<String> get reportingWallPhotoIds;
  @override
  Option<String> get snackbarMessage;
  @override
  WallPhotoFilters get wallPhotoFilters;
  @override
  Map<MenuWallPhotoFilter, IFilter> get appliedMenuFilters;
  @override
  @JsonKey(ignore: true)
  _$$WallPhotosStateImplCopyWith<_$WallPhotosStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

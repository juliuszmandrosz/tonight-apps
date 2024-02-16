// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileLoaded,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPhotosPageFetched,
    required TResult Function(WallPhoto photo) userWallPhotoDeleted,
    required TResult Function(String photoId) wallPhotoRewardRedeemed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileLoaded,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPhotosPageFetched,
    TResult? Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult? Function(String photoId)? wallPhotoRewardRedeemed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileLoaded,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPhotosPageFetched,
    TResult Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult Function(String photoId)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPhotosPageFetched value)
        nextPhotosPageFetched,
    required TResult Function(_UserWallPhotoDeleted value) userWallPhotoDeleted,
    required TResult Function(_WallPhotoRewardRedeemed value)
        wallPhotoRewardRedeemed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult? Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult? Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileLoadedImplCopyWith<$Res> {
  factory _$$ProfileLoadedImplCopyWith(
          _$ProfileLoadedImpl value, $Res Function(_$ProfileLoadedImpl) then) =
      __$$ProfileLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileLoadedImpl>
    implements _$$ProfileLoadedImplCopyWith<$Res> {
  __$$ProfileLoadedImplCopyWithImpl(
      _$ProfileLoadedImpl _value, $Res Function(_$ProfileLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoadedImpl implements _ProfileLoaded {
  const _$ProfileLoadedImpl();

  @override
  String toString() {
    return 'ProfileEvent.profileLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileLoaded,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPhotosPageFetched,
    required TResult Function(WallPhoto photo) userWallPhotoDeleted,
    required TResult Function(String photoId) wallPhotoRewardRedeemed,
  }) {
    return profileLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileLoaded,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPhotosPageFetched,
    TResult? Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult? Function(String photoId)? wallPhotoRewardRedeemed,
  }) {
    return profileLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileLoaded,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPhotosPageFetched,
    TResult Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult Function(String photoId)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPhotosPageFetched value)
        nextPhotosPageFetched,
    required TResult Function(_UserWallPhotoDeleted value) userWallPhotoDeleted,
    required TResult Function(_WallPhotoRewardRedeemed value)
        wallPhotoRewardRedeemed,
  }) {
    return profileLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult? Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult? Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
  }) {
    return profileLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoaded implements ProfileEvent {
  const factory _ProfileLoaded() = _$ProfileLoadedImpl;
}

/// @nodoc
abstract class _$$PhotosRefreshedImplCopyWith<$Res> {
  factory _$$PhotosRefreshedImplCopyWith(_$PhotosRefreshedImpl value,
          $Res Function(_$PhotosRefreshedImpl) then) =
      __$$PhotosRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhotosRefreshedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$PhotosRefreshedImpl>
    implements _$$PhotosRefreshedImplCopyWith<$Res> {
  __$$PhotosRefreshedImplCopyWithImpl(
      _$PhotosRefreshedImpl _value, $Res Function(_$PhotosRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PhotosRefreshedImpl implements _PhotosRefreshed {
  const _$PhotosRefreshedImpl();

  @override
  String toString() {
    return 'ProfileEvent.photosRefreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PhotosRefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileLoaded,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPhotosPageFetched,
    required TResult Function(WallPhoto photo) userWallPhotoDeleted,
    required TResult Function(String photoId) wallPhotoRewardRedeemed,
  }) {
    return photosRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileLoaded,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPhotosPageFetched,
    TResult? Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult? Function(String photoId)? wallPhotoRewardRedeemed,
  }) {
    return photosRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileLoaded,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPhotosPageFetched,
    TResult Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult Function(String photoId)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) {
    if (photosRefreshed != null) {
      return photosRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPhotosPageFetched value)
        nextPhotosPageFetched,
    required TResult Function(_UserWallPhotoDeleted value) userWallPhotoDeleted,
    required TResult Function(_WallPhotoRewardRedeemed value)
        wallPhotoRewardRedeemed,
  }) {
    return photosRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult? Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult? Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
  }) {
    return photosRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) {
    if (photosRefreshed != null) {
      return photosRefreshed(this);
    }
    return orElse();
  }
}

abstract class _PhotosRefreshed implements ProfileEvent {
  const factory _PhotosRefreshed() = _$PhotosRefreshedImpl;
}

/// @nodoc
abstract class _$$NextPhotosPageFetchedImplCopyWith<$Res> {
  factory _$$NextPhotosPageFetchedImplCopyWith(
          _$NextPhotosPageFetchedImpl value,
          $Res Function(_$NextPhotosPageFetchedImpl) then) =
      __$$NextPhotosPageFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPhotosPageFetchedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$NextPhotosPageFetchedImpl>
    implements _$$NextPhotosPageFetchedImplCopyWith<$Res> {
  __$$NextPhotosPageFetchedImplCopyWithImpl(_$NextPhotosPageFetchedImpl _value,
      $Res Function(_$NextPhotosPageFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPhotosPageFetchedImpl implements _NextPhotosPageFetched {
  const _$NextPhotosPageFetchedImpl();

  @override
  String toString() {
    return 'ProfileEvent.nextPhotosPageFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPhotosPageFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileLoaded,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPhotosPageFetched,
    required TResult Function(WallPhoto photo) userWallPhotoDeleted,
    required TResult Function(String photoId) wallPhotoRewardRedeemed,
  }) {
    return nextPhotosPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileLoaded,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPhotosPageFetched,
    TResult? Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult? Function(String photoId)? wallPhotoRewardRedeemed,
  }) {
    return nextPhotosPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileLoaded,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPhotosPageFetched,
    TResult Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult Function(String photoId)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) {
    if (nextPhotosPageFetched != null) {
      return nextPhotosPageFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPhotosPageFetched value)
        nextPhotosPageFetched,
    required TResult Function(_UserWallPhotoDeleted value) userWallPhotoDeleted,
    required TResult Function(_WallPhotoRewardRedeemed value)
        wallPhotoRewardRedeemed,
  }) {
    return nextPhotosPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult? Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult? Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
  }) {
    return nextPhotosPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) {
    if (nextPhotosPageFetched != null) {
      return nextPhotosPageFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPhotosPageFetched implements ProfileEvent {
  const factory _NextPhotosPageFetched() = _$NextPhotosPageFetchedImpl;
}

/// @nodoc
abstract class _$$UserWallPhotoDeletedImplCopyWith<$Res> {
  factory _$$UserWallPhotoDeletedImplCopyWith(_$UserWallPhotoDeletedImpl value,
          $Res Function(_$UserWallPhotoDeletedImpl) then) =
      __$$UserWallPhotoDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WallPhoto photo});
}

/// @nodoc
class __$$UserWallPhotoDeletedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UserWallPhotoDeletedImpl>
    implements _$$UserWallPhotoDeletedImplCopyWith<$Res> {
  __$$UserWallPhotoDeletedImplCopyWithImpl(_$UserWallPhotoDeletedImpl _value,
      $Res Function(_$UserWallPhotoDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$UserWallPhotoDeletedImpl(
      null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as WallPhoto,
    ));
  }
}

/// @nodoc

class _$UserWallPhotoDeletedImpl implements _UserWallPhotoDeleted {
  const _$UserWallPhotoDeletedImpl(this.photo);

  @override
  final WallPhoto photo;

  @override
  String toString() {
    return 'ProfileEvent.userWallPhotoDeleted(photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWallPhotoDeletedImpl &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWallPhotoDeletedImplCopyWith<_$UserWallPhotoDeletedImpl>
      get copyWith =>
          __$$UserWallPhotoDeletedImplCopyWithImpl<_$UserWallPhotoDeletedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileLoaded,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPhotosPageFetched,
    required TResult Function(WallPhoto photo) userWallPhotoDeleted,
    required TResult Function(String photoId) wallPhotoRewardRedeemed,
  }) {
    return userWallPhotoDeleted(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileLoaded,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPhotosPageFetched,
    TResult? Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult? Function(String photoId)? wallPhotoRewardRedeemed,
  }) {
    return userWallPhotoDeleted?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileLoaded,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPhotosPageFetched,
    TResult Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult Function(String photoId)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) {
    if (userWallPhotoDeleted != null) {
      return userWallPhotoDeleted(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPhotosPageFetched value)
        nextPhotosPageFetched,
    required TResult Function(_UserWallPhotoDeleted value) userWallPhotoDeleted,
    required TResult Function(_WallPhotoRewardRedeemed value)
        wallPhotoRewardRedeemed,
  }) {
    return userWallPhotoDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult? Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult? Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
  }) {
    return userWallPhotoDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) {
    if (userWallPhotoDeleted != null) {
      return userWallPhotoDeleted(this);
    }
    return orElse();
  }
}

abstract class _UserWallPhotoDeleted implements ProfileEvent {
  const factory _UserWallPhotoDeleted(final WallPhoto photo) =
      _$UserWallPhotoDeletedImpl;

  WallPhoto get photo;
  @JsonKey(ignore: true)
  _$$UserWallPhotoDeletedImplCopyWith<_$UserWallPhotoDeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WallPhotoRewardRedeemedImplCopyWith<$Res> {
  factory _$$WallPhotoRewardRedeemedImplCopyWith(
          _$WallPhotoRewardRedeemedImpl value,
          $Res Function(_$WallPhotoRewardRedeemedImpl) then) =
      __$$WallPhotoRewardRedeemedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String photoId});
}

/// @nodoc
class __$$WallPhotoRewardRedeemedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$WallPhotoRewardRedeemedImpl>
    implements _$$WallPhotoRewardRedeemedImplCopyWith<$Res> {
  __$$WallPhotoRewardRedeemedImplCopyWithImpl(
      _$WallPhotoRewardRedeemedImpl _value,
      $Res Function(_$WallPhotoRewardRedeemedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoId = null,
  }) {
    return _then(_$WallPhotoRewardRedeemedImpl(
      null == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WallPhotoRewardRedeemedImpl implements _WallPhotoRewardRedeemed {
  const _$WallPhotoRewardRedeemedImpl(this.photoId);

  @override
  final String photoId;

  @override
  String toString() {
    return 'ProfileEvent.wallPhotoRewardRedeemed(photoId: $photoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WallPhotoRewardRedeemedImpl &&
            (identical(other.photoId, photoId) || other.photoId == photoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WallPhotoRewardRedeemedImplCopyWith<_$WallPhotoRewardRedeemedImpl>
      get copyWith => __$$WallPhotoRewardRedeemedImplCopyWithImpl<
          _$WallPhotoRewardRedeemedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileLoaded,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPhotosPageFetched,
    required TResult Function(WallPhoto photo) userWallPhotoDeleted,
    required TResult Function(String photoId) wallPhotoRewardRedeemed,
  }) {
    return wallPhotoRewardRedeemed(photoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileLoaded,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPhotosPageFetched,
    TResult? Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult? Function(String photoId)? wallPhotoRewardRedeemed,
  }) {
    return wallPhotoRewardRedeemed?.call(photoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileLoaded,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPhotosPageFetched,
    TResult Function(WallPhoto photo)? userWallPhotoDeleted,
    TResult Function(String photoId)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) {
    if (wallPhotoRewardRedeemed != null) {
      return wallPhotoRewardRedeemed(photoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPhotosPageFetched value)
        nextPhotosPageFetched,
    required TResult Function(_UserWallPhotoDeleted value) userWallPhotoDeleted,
    required TResult Function(_WallPhotoRewardRedeemed value)
        wallPhotoRewardRedeemed,
  }) {
    return wallPhotoRewardRedeemed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult? Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult? Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
  }) {
    return wallPhotoRewardRedeemed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPhotosPageFetched value)? nextPhotosPageFetched,
    TResult Function(_UserWallPhotoDeleted value)? userWallPhotoDeleted,
    TResult Function(_WallPhotoRewardRedeemed value)? wallPhotoRewardRedeemed,
    required TResult orElse(),
  }) {
    if (wallPhotoRewardRedeemed != null) {
      return wallPhotoRewardRedeemed(this);
    }
    return orElse();
  }
}

abstract class _WallPhotoRewardRedeemed implements ProfileEvent {
  const factory _WallPhotoRewardRedeemed(final String photoId) =
      _$WallPhotoRewardRedeemedImpl;

  String get photoId;
  @JsonKey(ignore: true)
  _$$WallPhotoRewardRedeemedImplCopyWith<_$WallPhotoRewardRedeemedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  Option<UserProfile> get userProfile => throw _privateConstructorUsedError;
  CubitStatus get initialStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPagePhotosStatus => throw _privateConstructorUsedError;
  CubitStatus get refreshPhotosStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  bool get hasPhotosReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {Option<UserProfile> userProfile,
      CubitStatus initialStatus,
      CubitStatus nextPagePhotosStatus,
      CubitStatus refreshPhotosStatus,
      Option<String> snackbarMessage,
      bool hasPhotosReachedMax});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
    Object? initialStatus = null,
    Object? nextPagePhotosStatus = null,
    Object? refreshPhotosStatus = null,
    Object? snackbarMessage = null,
    Object? hasPhotosReachedMax = null,
  }) {
    return _then(_value.copyWith(
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as Option<UserProfile>,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPagePhotosStatus: null == nextPagePhotosStatus
          ? _value.nextPagePhotosStatus
          : nextPagePhotosStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      refreshPhotosStatus: null == refreshPhotosStatus
          ? _value.refreshPhotosStatus
          : refreshPhotosStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      hasPhotosReachedMax: null == hasPhotosReachedMax
          ? _value.hasPhotosReachedMax
          : hasPhotosReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<UserProfile> userProfile,
      CubitStatus initialStatus,
      CubitStatus nextPagePhotosStatus,
      CubitStatus refreshPhotosStatus,
      Option<String> snackbarMessage,
      bool hasPhotosReachedMax});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
    Object? initialStatus = null,
    Object? nextPagePhotosStatus = null,
    Object? refreshPhotosStatus = null,
    Object? snackbarMessage = null,
    Object? hasPhotosReachedMax = null,
  }) {
    return _then(_$ProfileStateImpl(
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as Option<UserProfile>,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPagePhotosStatus: null == nextPagePhotosStatus
          ? _value.nextPagePhotosStatus
          : nextPagePhotosStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      refreshPhotosStatus: null == refreshPhotosStatus
          ? _value.refreshPhotosStatus
          : refreshPhotosStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      hasPhotosReachedMax: null == hasPhotosReachedMax
          ? _value.hasPhotosReachedMax
          : hasPhotosReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl extends _ProfileState {
  _$ProfileStateImpl(
      {required this.userProfile,
      required this.initialStatus,
      required this.nextPagePhotosStatus,
      required this.refreshPhotosStatus,
      required this.snackbarMessage,
      required this.hasPhotosReachedMax})
      : super._();

  @override
  final Option<UserProfile> userProfile;
  @override
  final CubitStatus initialStatus;
  @override
  final CubitStatus nextPagePhotosStatus;
  @override
  final CubitStatus refreshPhotosStatus;
  @override
  final Option<String> snackbarMessage;
  @override
  final bool hasPhotosReachedMax;

  @override
  String toString() {
    return 'ProfileState(userProfile: $userProfile, initialStatus: $initialStatus, nextPagePhotosStatus: $nextPagePhotosStatus, refreshPhotosStatus: $refreshPhotosStatus, snackbarMessage: $snackbarMessage, hasPhotosReachedMax: $hasPhotosReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(other.nextPagePhotosStatus, nextPagePhotosStatus) ||
                other.nextPagePhotosStatus == nextPagePhotosStatus) &&
            (identical(other.refreshPhotosStatus, refreshPhotosStatus) ||
                other.refreshPhotosStatus == refreshPhotosStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.hasPhotosReachedMax, hasPhotosReachedMax) ||
                other.hasPhotosReachedMax == hasPhotosReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userProfile,
      initialStatus,
      nextPagePhotosStatus,
      refreshPhotosStatus,
      snackbarMessage,
      hasPhotosReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  factory _ProfileState(
      {required final Option<UserProfile> userProfile,
      required final CubitStatus initialStatus,
      required final CubitStatus nextPagePhotosStatus,
      required final CubitStatus refreshPhotosStatus,
      required final Option<String> snackbarMessage,
      required final bool hasPhotosReachedMax}) = _$ProfileStateImpl;
  _ProfileState._() : super._();

  @override
  Option<UserProfile> get userProfile;
  @override
  CubitStatus get initialStatus;
  @override
  CubitStatus get nextPagePhotosStatus;
  @override
  CubitStatus get refreshPhotosStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  bool get hasPhotosReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

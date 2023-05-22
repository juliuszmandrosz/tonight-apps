// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventPhotosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, Event? event) photosFetched,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function(WallPhoto photo) photoAdded,
    required TResult Function(WallPhoto photo) photoReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, Event? event)? photosFetched,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function(WallPhoto photo)? photoAdded,
    TResult? Function(WallPhoto photo)? photoReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, Event? event)? photosFetched,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPagePhotosFetched,
    TResult Function(WallPhoto photo)? photoAdded,
    TResult Function(WallPhoto photo)? photoReported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotosFetched value) photosFetched,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PhotoReported value) photoReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotosFetched value)? photosFetched,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_PhotoAdded value)? photoAdded,
    TResult? Function(_PhotoReported value)? photoReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosFetched value)? photosFetched,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PhotoReported value)? photoReported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventPhotosEventCopyWith<$Res> {
  factory $EventPhotosEventCopyWith(
          EventPhotosEvent value, $Res Function(EventPhotosEvent) then) =
      _$EventPhotosEventCopyWithImpl<$Res, EventPhotosEvent>;
}

/// @nodoc
class _$EventPhotosEventCopyWithImpl<$Res, $Val extends EventPhotosEvent>
    implements $EventPhotosEventCopyWith<$Res> {
  _$EventPhotosEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PhotosFetchedCopyWith<$Res> {
  factory _$$_PhotosFetchedCopyWith(
          _$_PhotosFetched value, $Res Function(_$_PhotosFetched) then) =
      __$$_PhotosFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, Event? event});
}

/// @nodoc
class __$$_PhotosFetchedCopyWithImpl<$Res>
    extends _$EventPhotosEventCopyWithImpl<$Res, _$_PhotosFetched>
    implements _$$_PhotosFetchedCopyWith<$Res> {
  __$$_PhotosFetchedCopyWithImpl(
      _$_PhotosFetched _value, $Res Function(_$_PhotosFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? event = freezed,
  }) {
    return _then(_$_PhotosFetched(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event?,
    ));
  }
}

/// @nodoc

class _$_PhotosFetched implements _PhotosFetched {
  const _$_PhotosFetched({required this.eventId, this.event});

  @override
  final String eventId;
  @override
  final Event? event;

  @override
  String toString() {
    return 'EventPhotosEvent.photosFetched(eventId: $eventId, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotosFetched &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotosFetchedCopyWith<_$_PhotosFetched> get copyWith =>
      __$$_PhotosFetchedCopyWithImpl<_$_PhotosFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, Event? event) photosFetched,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function(WallPhoto photo) photoAdded,
    required TResult Function(WallPhoto photo) photoReported,
  }) {
    return photosFetched(eventId, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, Event? event)? photosFetched,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function(WallPhoto photo)? photoAdded,
    TResult? Function(WallPhoto photo)? photoReported,
  }) {
    return photosFetched?.call(eventId, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, Event? event)? photosFetched,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPagePhotosFetched,
    TResult Function(WallPhoto photo)? photoAdded,
    TResult Function(WallPhoto photo)? photoReported,
    required TResult orElse(),
  }) {
    if (photosFetched != null) {
      return photosFetched(eventId, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotosFetched value) photosFetched,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PhotoReported value) photoReported,
  }) {
    return photosFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotosFetched value)? photosFetched,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_PhotoAdded value)? photoAdded,
    TResult? Function(_PhotoReported value)? photoReported,
  }) {
    return photosFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosFetched value)? photosFetched,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PhotoReported value)? photoReported,
    required TResult orElse(),
  }) {
    if (photosFetched != null) {
      return photosFetched(this);
    }
    return orElse();
  }
}

abstract class _PhotosFetched implements EventPhotosEvent {
  const factory _PhotosFetched(
      {required final String eventId, final Event? event}) = _$_PhotosFetched;

  String get eventId;
  Event? get event;
  @JsonKey(ignore: true)
  _$$_PhotosFetchedCopyWith<_$_PhotosFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhotosRefreshedCopyWith<$Res> {
  factory _$$_PhotosRefreshedCopyWith(
          _$_PhotosRefreshed value, $Res Function(_$_PhotosRefreshed) then) =
      __$$_PhotosRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PhotosRefreshedCopyWithImpl<$Res>
    extends _$EventPhotosEventCopyWithImpl<$Res, _$_PhotosRefreshed>
    implements _$$_PhotosRefreshedCopyWith<$Res> {
  __$$_PhotosRefreshedCopyWithImpl(
      _$_PhotosRefreshed _value, $Res Function(_$_PhotosRefreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PhotosRefreshed implements _PhotosRefreshed {
  const _$_PhotosRefreshed();

  @override
  String toString() {
    return 'EventPhotosEvent.photosRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PhotosRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, Event? event) photosFetched,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function(WallPhoto photo) photoAdded,
    required TResult Function(WallPhoto photo) photoReported,
  }) {
    return photosRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, Event? event)? photosFetched,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function(WallPhoto photo)? photoAdded,
    TResult? Function(WallPhoto photo)? photoReported,
  }) {
    return photosRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, Event? event)? photosFetched,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPagePhotosFetched,
    TResult Function(WallPhoto photo)? photoAdded,
    TResult Function(WallPhoto photo)? photoReported,
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
    required TResult Function(_PhotosFetched value) photosFetched,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PhotoReported value) photoReported,
  }) {
    return photosRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotosFetched value)? photosFetched,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_PhotoAdded value)? photoAdded,
    TResult? Function(_PhotoReported value)? photoReported,
  }) {
    return photosRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosFetched value)? photosFetched,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PhotoReported value)? photoReported,
    required TResult orElse(),
  }) {
    if (photosRefreshed != null) {
      return photosRefreshed(this);
    }
    return orElse();
  }
}

abstract class _PhotosRefreshed implements EventPhotosEvent {
  const factory _PhotosRefreshed() = _$_PhotosRefreshed;
}

/// @nodoc
abstract class _$$_NextPagePhotosFetchedCopyWith<$Res> {
  factory _$$_NextPagePhotosFetchedCopyWith(_$_NextPagePhotosFetched value,
          $Res Function(_$_NextPagePhotosFetched) then) =
      __$$_NextPagePhotosFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPagePhotosFetchedCopyWithImpl<$Res>
    extends _$EventPhotosEventCopyWithImpl<$Res, _$_NextPagePhotosFetched>
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
    return 'EventPhotosEvent.nextPagePhotosFetched()';
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
    required TResult Function(String eventId, Event? event) photosFetched,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function(WallPhoto photo) photoAdded,
    required TResult Function(WallPhoto photo) photoReported,
  }) {
    return nextPagePhotosFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, Event? event)? photosFetched,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function(WallPhoto photo)? photoAdded,
    TResult? Function(WallPhoto photo)? photoReported,
  }) {
    return nextPagePhotosFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, Event? event)? photosFetched,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPagePhotosFetched,
    TResult Function(WallPhoto photo)? photoAdded,
    TResult Function(WallPhoto photo)? photoReported,
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
    required TResult Function(_PhotosFetched value) photosFetched,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PhotoReported value) photoReported,
  }) {
    return nextPagePhotosFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotosFetched value)? photosFetched,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_PhotoAdded value)? photoAdded,
    TResult? Function(_PhotoReported value)? photoReported,
  }) {
    return nextPagePhotosFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosFetched value)? photosFetched,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PhotoReported value)? photoReported,
    required TResult orElse(),
  }) {
    if (nextPagePhotosFetched != null) {
      return nextPagePhotosFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPagePhotosFetched implements EventPhotosEvent {
  const factory _NextPagePhotosFetched() = _$_NextPagePhotosFetched;
}

/// @nodoc
abstract class _$$_PhotoAddedCopyWith<$Res> {
  factory _$$_PhotoAddedCopyWith(
          _$_PhotoAdded value, $Res Function(_$_PhotoAdded) then) =
      __$$_PhotoAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({WallPhoto photo});
}

/// @nodoc
class __$$_PhotoAddedCopyWithImpl<$Res>
    extends _$EventPhotosEventCopyWithImpl<$Res, _$_PhotoAdded>
    implements _$$_PhotoAddedCopyWith<$Res> {
  __$$_PhotoAddedCopyWithImpl(
      _$_PhotoAdded _value, $Res Function(_$_PhotoAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$_PhotoAdded(
      null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as WallPhoto,
    ));
  }
}

/// @nodoc

class _$_PhotoAdded implements _PhotoAdded {
  const _$_PhotoAdded(this.photo);

  @override
  final WallPhoto photo;

  @override
  String toString() {
    return 'EventPhotosEvent.photoAdded(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoAdded &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoAddedCopyWith<_$_PhotoAdded> get copyWith =>
      __$$_PhotoAddedCopyWithImpl<_$_PhotoAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, Event? event) photosFetched,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function(WallPhoto photo) photoAdded,
    required TResult Function(WallPhoto photo) photoReported,
  }) {
    return photoAdded(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, Event? event)? photosFetched,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function(WallPhoto photo)? photoAdded,
    TResult? Function(WallPhoto photo)? photoReported,
  }) {
    return photoAdded?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, Event? event)? photosFetched,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPagePhotosFetched,
    TResult Function(WallPhoto photo)? photoAdded,
    TResult Function(WallPhoto photo)? photoReported,
    required TResult orElse(),
  }) {
    if (photoAdded != null) {
      return photoAdded(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotosFetched value) photosFetched,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PhotoReported value) photoReported,
  }) {
    return photoAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotosFetched value)? photosFetched,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_PhotoAdded value)? photoAdded,
    TResult? Function(_PhotoReported value)? photoReported,
  }) {
    return photoAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosFetched value)? photosFetched,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PhotoReported value)? photoReported,
    required TResult orElse(),
  }) {
    if (photoAdded != null) {
      return photoAdded(this);
    }
    return orElse();
  }
}

abstract class _PhotoAdded implements EventPhotosEvent {
  const factory _PhotoAdded(final WallPhoto photo) = _$_PhotoAdded;

  WallPhoto get photo;
  @JsonKey(ignore: true)
  _$$_PhotoAddedCopyWith<_$_PhotoAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhotoReportedCopyWith<$Res> {
  factory _$$_PhotoReportedCopyWith(
          _$_PhotoReported value, $Res Function(_$_PhotoReported) then) =
      __$$_PhotoReportedCopyWithImpl<$Res>;
  @useResult
  $Res call({WallPhoto photo});
}

/// @nodoc
class __$$_PhotoReportedCopyWithImpl<$Res>
    extends _$EventPhotosEventCopyWithImpl<$Res, _$_PhotoReported>
    implements _$$_PhotoReportedCopyWith<$Res> {
  __$$_PhotoReportedCopyWithImpl(
      _$_PhotoReported _value, $Res Function(_$_PhotoReported) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$_PhotoReported(
      null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as WallPhoto,
    ));
  }
}

/// @nodoc

class _$_PhotoReported implements _PhotoReported {
  const _$_PhotoReported(this.photo);

  @override
  final WallPhoto photo;

  @override
  String toString() {
    return 'EventPhotosEvent.photoReported(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoReported &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoReportedCopyWith<_$_PhotoReported> get copyWith =>
      __$$_PhotoReportedCopyWithImpl<_$_PhotoReported>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, Event? event) photosFetched,
    required TResult Function() photosRefreshed,
    required TResult Function() nextPagePhotosFetched,
    required TResult Function(WallPhoto photo) photoAdded,
    required TResult Function(WallPhoto photo) photoReported,
  }) {
    return photoReported(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, Event? event)? photosFetched,
    TResult? Function()? photosRefreshed,
    TResult? Function()? nextPagePhotosFetched,
    TResult? Function(WallPhoto photo)? photoAdded,
    TResult? Function(WallPhoto photo)? photoReported,
  }) {
    return photoReported?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, Event? event)? photosFetched,
    TResult Function()? photosRefreshed,
    TResult Function()? nextPagePhotosFetched,
    TResult Function(WallPhoto photo)? photoAdded,
    TResult Function(WallPhoto photo)? photoReported,
    required TResult orElse(),
  }) {
    if (photoReported != null) {
      return photoReported(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotosFetched value) photosFetched,
    required TResult Function(_PhotosRefreshed value) photosRefreshed,
    required TResult Function(_NextPagePhotosFetched value)
        nextPagePhotosFetched,
    required TResult Function(_PhotoAdded value) photoAdded,
    required TResult Function(_PhotoReported value) photoReported,
  }) {
    return photoReported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotosFetched value)? photosFetched,
    TResult? Function(_PhotosRefreshed value)? photosRefreshed,
    TResult? Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult? Function(_PhotoAdded value)? photoAdded,
    TResult? Function(_PhotoReported value)? photoReported,
  }) {
    return photoReported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotosFetched value)? photosFetched,
    TResult Function(_PhotosRefreshed value)? photosRefreshed,
    TResult Function(_NextPagePhotosFetched value)? nextPagePhotosFetched,
    TResult Function(_PhotoAdded value)? photoAdded,
    TResult Function(_PhotoReported value)? photoReported,
    required TResult orElse(),
  }) {
    if (photoReported != null) {
      return photoReported(this);
    }
    return orElse();
  }
}

abstract class _PhotoReported implements EventPhotosEvent {
  const factory _PhotoReported(final WallPhoto photo) = _$_PhotoReported;

  WallPhoto get photo;
  @JsonKey(ignore: true)
  _$$_PhotoReportedCopyWith<_$_PhotoReported> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventPhotosState {
  CubitStatus get getPhotosStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  Option<Event> get event => throw _privateConstructorUsedError;
  List<WallPhoto> get photos => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  List<String> get reportingPhotoIds => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventPhotosStateCopyWith<EventPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventPhotosStateCopyWith<$Res> {
  factory $EventPhotosStateCopyWith(
          EventPhotosState value, $Res Function(EventPhotosState) then) =
      _$EventPhotosStateCopyWithImpl<$Res, EventPhotosState>;
  @useResult
  $Res call(
      {CubitStatus getPhotosStatus,
      CubitStatus nextPageStatus,
      Option<Event> event,
      List<WallPhoto> photos,
      bool hasReachedMax,
      List<String> reportingPhotoIds,
      Option<String> snackbarMessage});
}

/// @nodoc
class _$EventPhotosStateCopyWithImpl<$Res, $Val extends EventPhotosState>
    implements $EventPhotosStateCopyWith<$Res> {
  _$EventPhotosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPhotosStatus = null,
    Object? nextPageStatus = null,
    Object? event = null,
    Object? photos = null,
    Object? hasReachedMax = null,
    Object? reportingPhotoIds = null,
    Object? snackbarMessage = null,
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
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<WallPhoto>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      reportingPhotoIds: null == reportingPhotoIds
          ? _value.reportingPhotoIds
          : reportingPhotoIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventPhotosStateCopyWith<$Res>
    implements $EventPhotosStateCopyWith<$Res> {
  factory _$$_EventPhotosStateCopyWith(
          _$_EventPhotosState value, $Res Function(_$_EventPhotosState) then) =
      __$$_EventPhotosStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getPhotosStatus,
      CubitStatus nextPageStatus,
      Option<Event> event,
      List<WallPhoto> photos,
      bool hasReachedMax,
      List<String> reportingPhotoIds,
      Option<String> snackbarMessage});
}

/// @nodoc
class __$$_EventPhotosStateCopyWithImpl<$Res>
    extends _$EventPhotosStateCopyWithImpl<$Res, _$_EventPhotosState>
    implements _$$_EventPhotosStateCopyWith<$Res> {
  __$$_EventPhotosStateCopyWithImpl(
      _$_EventPhotosState _value, $Res Function(_$_EventPhotosState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPhotosStatus = null,
    Object? nextPageStatus = null,
    Object? event = null,
    Object? photos = null,
    Object? hasReachedMax = null,
    Object? reportingPhotoIds = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$_EventPhotosState(
      getPhotosStatus: null == getPhotosStatus
          ? _value.getPhotosStatus
          : getPhotosStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<WallPhoto>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      reportingPhotoIds: null == reportingPhotoIds
          ? _value._reportingPhotoIds
          : reportingPhotoIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_EventPhotosState extends _EventPhotosState {
  const _$_EventPhotosState(
      {required this.getPhotosStatus,
      required this.nextPageStatus,
      required this.event,
      required final List<WallPhoto> photos,
      required this.hasReachedMax,
      required final List<String> reportingPhotoIds,
      required this.snackbarMessage})
      : _photos = photos,
        _reportingPhotoIds = reportingPhotoIds,
        super._();

  @override
  final CubitStatus getPhotosStatus;
  @override
  final CubitStatus nextPageStatus;
  @override
  final Option<Event> event;
  final List<WallPhoto> _photos;
  @override
  List<WallPhoto> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final bool hasReachedMax;
  final List<String> _reportingPhotoIds;
  @override
  List<String> get reportingPhotoIds {
    if (_reportingPhotoIds is EqualUnmodifiableListView)
      return _reportingPhotoIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportingPhotoIds);
  }

  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'EventPhotosState(getPhotosStatus: $getPhotosStatus, nextPageStatus: $nextPageStatus, event: $event, photos: $photos, hasReachedMax: $hasReachedMax, reportingPhotoIds: $reportingPhotoIds, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventPhotosState &&
            (identical(other.getPhotosStatus, getPhotosStatus) ||
                other.getPhotosStatus == getPhotosStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            const DeepCollectionEquality()
                .equals(other._reportingPhotoIds, _reportingPhotoIds) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getPhotosStatus,
      nextPageStatus,
      event,
      const DeepCollectionEquality().hash(_photos),
      hasReachedMax,
      const DeepCollectionEquality().hash(_reportingPhotoIds),
      snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventPhotosStateCopyWith<_$_EventPhotosState> get copyWith =>
      __$$_EventPhotosStateCopyWithImpl<_$_EventPhotosState>(this, _$identity);
}

abstract class _EventPhotosState extends EventPhotosState {
  const factory _EventPhotosState(
      {required final CubitStatus getPhotosStatus,
      required final CubitStatus nextPageStatus,
      required final Option<Event> event,
      required final List<WallPhoto> photos,
      required final bool hasReachedMax,
      required final List<String> reportingPhotoIds,
      required final Option<String> snackbarMessage}) = _$_EventPhotosState;
  const _EventPhotosState._() : super._();

  @override
  CubitStatus get getPhotosStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  Option<Event> get event;
  @override
  List<WallPhoto> get photos;
  @override
  bool get hasReachedMax;
  @override
  List<String> get reportingPhotoIds;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$_EventPhotosStateCopyWith<_$_EventPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

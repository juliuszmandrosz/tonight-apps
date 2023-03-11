// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubPhotosEvent {
  String get clubId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) photosFetched,
    required TResult Function(String clubId, String? nextPageToken)
        nextPagePhotosFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? photosFetched,
    TResult? Function(String clubId, String? nextPageToken)?
        nextPagePhotosFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? photosFetched,
    TResult Function(String clubId, String? nextPageToken)?
        nextPagePhotosFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubPhotosFetched value) photosFetched,
    required TResult Function(_ClubPhotosNextPageFetched value)
        nextPagePhotosFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubPhotosFetched value)? photosFetched,
    TResult? Function(_ClubPhotosNextPageFetched value)? nextPagePhotosFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubPhotosFetched value)? photosFetched,
    TResult Function(_ClubPhotosNextPageFetched value)? nextPagePhotosFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubPhotosEventCopyWith<ClubPhotosEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubPhotosEventCopyWith<$Res> {
  factory $ClubPhotosEventCopyWith(
          ClubPhotosEvent value, $Res Function(ClubPhotosEvent) then) =
      _$ClubPhotosEventCopyWithImpl<$Res, ClubPhotosEvent>;
  @useResult
  $Res call({String clubId});
}

/// @nodoc
class _$ClubPhotosEventCopyWithImpl<$Res, $Val extends ClubPhotosEvent>
    implements $ClubPhotosEventCopyWith<$Res> {
  _$ClubPhotosEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubPhotosFetchedCopyWith<$Res>
    implements $ClubPhotosEventCopyWith<$Res> {
  factory _$$_ClubPhotosFetchedCopyWith(_$_ClubPhotosFetched value,
          $Res Function(_$_ClubPhotosFetched) then) =
      __$$_ClubPhotosFetchedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clubId});
}

/// @nodoc
class __$$_ClubPhotosFetchedCopyWithImpl<$Res>
    extends _$ClubPhotosEventCopyWithImpl<$Res, _$_ClubPhotosFetched>
    implements _$$_ClubPhotosFetchedCopyWith<$Res> {
  __$$_ClubPhotosFetchedCopyWithImpl(
      _$_ClubPhotosFetched _value, $Res Function(_$_ClubPhotosFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$_ClubPhotosFetched(
      null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClubPhotosFetched implements _ClubPhotosFetched {
  const _$_ClubPhotosFetched(this.clubId);

  @override
  final String clubId;

  @override
  String toString() {
    return 'ClubPhotosEvent.photosFetched(clubId: $clubId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubPhotosFetched &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubPhotosFetchedCopyWith<_$_ClubPhotosFetched> get copyWith =>
      __$$_ClubPhotosFetchedCopyWithImpl<_$_ClubPhotosFetched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) photosFetched,
    required TResult Function(String clubId, String? nextPageToken)
        nextPagePhotosFetched,
  }) {
    return photosFetched(clubId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? photosFetched,
    TResult? Function(String clubId, String? nextPageToken)?
        nextPagePhotosFetched,
  }) {
    return photosFetched?.call(clubId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? photosFetched,
    TResult Function(String clubId, String? nextPageToken)?
        nextPagePhotosFetched,
    required TResult orElse(),
  }) {
    if (photosFetched != null) {
      return photosFetched(clubId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubPhotosFetched value) photosFetched,
    required TResult Function(_ClubPhotosNextPageFetched value)
        nextPagePhotosFetched,
  }) {
    return photosFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubPhotosFetched value)? photosFetched,
    TResult? Function(_ClubPhotosNextPageFetched value)? nextPagePhotosFetched,
  }) {
    return photosFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubPhotosFetched value)? photosFetched,
    TResult Function(_ClubPhotosNextPageFetched value)? nextPagePhotosFetched,
    required TResult orElse(),
  }) {
    if (photosFetched != null) {
      return photosFetched(this);
    }
    return orElse();
  }
}

abstract class _ClubPhotosFetched implements ClubPhotosEvent {
  const factory _ClubPhotosFetched(final String clubId) = _$_ClubPhotosFetched;

  @override
  String get clubId;
  @override
  @JsonKey(ignore: true)
  _$$_ClubPhotosFetchedCopyWith<_$_ClubPhotosFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClubPhotosNextPageFetchedCopyWith<$Res>
    implements $ClubPhotosEventCopyWith<$Res> {
  factory _$$_ClubPhotosNextPageFetchedCopyWith(
          _$_ClubPhotosNextPageFetched value,
          $Res Function(_$_ClubPhotosNextPageFetched) then) =
      __$$_ClubPhotosNextPageFetchedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clubId, String? nextPageToken});
}

/// @nodoc
class __$$_ClubPhotosNextPageFetchedCopyWithImpl<$Res>
    extends _$ClubPhotosEventCopyWithImpl<$Res, _$_ClubPhotosNextPageFetched>
    implements _$$_ClubPhotosNextPageFetchedCopyWith<$Res> {
  __$$_ClubPhotosNextPageFetchedCopyWithImpl(
      _$_ClubPhotosNextPageFetched _value,
      $Res Function(_$_ClubPhotosNextPageFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_$_ClubPhotosNextPageFetched(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ClubPhotosNextPageFetched implements _ClubPhotosNextPageFetched {
  const _$_ClubPhotosNextPageFetched(
      {required this.clubId, this.nextPageToken});

  @override
  final String clubId;
  @override
  final String? nextPageToken;

  @override
  String toString() {
    return 'ClubPhotosEvent.nextPagePhotosFetched(clubId: $clubId, nextPageToken: $nextPageToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubPhotosNextPageFetched &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId, nextPageToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubPhotosNextPageFetchedCopyWith<_$_ClubPhotosNextPageFetched>
      get copyWith => __$$_ClubPhotosNextPageFetchedCopyWithImpl<
          _$_ClubPhotosNextPageFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) photosFetched,
    required TResult Function(String clubId, String? nextPageToken)
        nextPagePhotosFetched,
  }) {
    return nextPagePhotosFetched(clubId, nextPageToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? photosFetched,
    TResult? Function(String clubId, String? nextPageToken)?
        nextPagePhotosFetched,
  }) {
    return nextPagePhotosFetched?.call(clubId, nextPageToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? photosFetched,
    TResult Function(String clubId, String? nextPageToken)?
        nextPagePhotosFetched,
    required TResult orElse(),
  }) {
    if (nextPagePhotosFetched != null) {
      return nextPagePhotosFetched(clubId, nextPageToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubPhotosFetched value) photosFetched,
    required TResult Function(_ClubPhotosNextPageFetched value)
        nextPagePhotosFetched,
  }) {
    return nextPagePhotosFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubPhotosFetched value)? photosFetched,
    TResult? Function(_ClubPhotosNextPageFetched value)? nextPagePhotosFetched,
  }) {
    return nextPagePhotosFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubPhotosFetched value)? photosFetched,
    TResult Function(_ClubPhotosNextPageFetched value)? nextPagePhotosFetched,
    required TResult orElse(),
  }) {
    if (nextPagePhotosFetched != null) {
      return nextPagePhotosFetched(this);
    }
    return orElse();
  }
}

abstract class _ClubPhotosNextPageFetched implements ClubPhotosEvent {
  const factory _ClubPhotosNextPageFetched(
      {required final String clubId,
      final String? nextPageToken}) = _$_ClubPhotosNextPageFetched;

  @override
  String get clubId;
  String? get nextPageToken;
  @override
  @JsonKey(ignore: true)
  _$$_ClubPhotosNextPageFetchedCopyWith<_$_ClubPhotosNextPageFetched>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClubPhotosState {
  CubitStatus get status => throw _privateConstructorUsedError;
  List<String> get photosUrls => throw _privateConstructorUsedError;
  String? get nextPageToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubPhotosStateCopyWith<ClubPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubPhotosStateCopyWith<$Res> {
  factory $ClubPhotosStateCopyWith(
          ClubPhotosState value, $Res Function(ClubPhotosState) then) =
      _$ClubPhotosStateCopyWithImpl<$Res, ClubPhotosState>;
  @useResult
  $Res call(
      {CubitStatus status, List<String> photosUrls, String? nextPageToken});
}

/// @nodoc
class _$ClubPhotosStateCopyWithImpl<$Res, $Val extends ClubPhotosState>
    implements $ClubPhotosStateCopyWith<$Res> {
  _$ClubPhotosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? photosUrls = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      photosUrls: null == photosUrls
          ? _value.photosUrls
          : photosUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubPhotosStateCopyWith<$Res>
    implements $ClubPhotosStateCopyWith<$Res> {
  factory _$$_ClubPhotosStateCopyWith(
          _$_ClubPhotosState value, $Res Function(_$_ClubPhotosState) then) =
      __$$_ClubPhotosStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus status, List<String> photosUrls, String? nextPageToken});
}

/// @nodoc
class __$$_ClubPhotosStateCopyWithImpl<$Res>
    extends _$ClubPhotosStateCopyWithImpl<$Res, _$_ClubPhotosState>
    implements _$$_ClubPhotosStateCopyWith<$Res> {
  __$$_ClubPhotosStateCopyWithImpl(
      _$_ClubPhotosState _value, $Res Function(_$_ClubPhotosState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? photosUrls = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_$_ClubPhotosState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      photosUrls: null == photosUrls
          ? _value._photosUrls
          : photosUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ClubPhotosState extends _ClubPhotosState {
  const _$_ClubPhotosState(
      {required this.status,
      required final List<String> photosUrls,
      required this.nextPageToken})
      : _photosUrls = photosUrls,
        super._();

  @override
  final CubitStatus status;
  final List<String> _photosUrls;
  @override
  List<String> get photosUrls {
    if (_photosUrls is EqualUnmodifiableListView) return _photosUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photosUrls);
  }

  @override
  final String? nextPageToken;

  @override
  String toString() {
    return 'ClubPhotosState(status: $status, photosUrls: $photosUrls, nextPageToken: $nextPageToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubPhotosState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._photosUrls, _photosUrls) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_photosUrls), nextPageToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubPhotosStateCopyWith<_$_ClubPhotosState> get copyWith =>
      __$$_ClubPhotosStateCopyWithImpl<_$_ClubPhotosState>(this, _$identity);
}

abstract class _ClubPhotosState extends ClubPhotosState {
  const factory _ClubPhotosState(
      {required final CubitStatus status,
      required final List<String> photosUrls,
      required final String? nextPageToken}) = _$_ClubPhotosState;
  const _ClubPhotosState._() : super._();

  @override
  CubitStatus get status;
  @override
  List<String> get photosUrls;
  @override
  String? get nextPageToken;
  @override
  @JsonKey(ignore: true)
  _$$_ClubPhotosStateCopyWith<_$_ClubPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

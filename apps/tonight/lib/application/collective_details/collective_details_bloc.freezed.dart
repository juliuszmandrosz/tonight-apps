// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collective_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectiveDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectiveId) eventsFetched,
    required TResult Function(String? collectiveId, Collective? collective)
        collectiveInitialized,
    required TResult Function(String collectiveId) reviewsFetched,
    required TResult Function(String collectiveId) nextPageReviewsFetched,
    required TResult Function(String collectiveId) artistsFetched,
    required TResult Function(Review review) reviewReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String collectiveId)? eventsFetched,
    TResult? Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult? Function(String collectiveId)? reviewsFetched,
    TResult? Function(String collectiveId)? nextPageReviewsFetched,
    TResult? Function(String collectiveId)? artistsFetched,
    TResult? Function(Review review)? reviewReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectiveId)? eventsFetched,
    TResult Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult Function(String collectiveId)? reviewsFetched,
    TResult Function(String collectiveId)? nextPageReviewsFetched,
    TResult Function(String collectiveId)? artistsFetched,
    TResult Function(Review review)? reviewReported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_CollectiveInitialized value)
        collectiveInitialized,
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ArtistsFetched value) artistsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ArtistsFetched value)? artistsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ArtistsFetched value)? artistsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectiveDetailsEventCopyWith<$Res> {
  factory $CollectiveDetailsEventCopyWith(CollectiveDetailsEvent value,
          $Res Function(CollectiveDetailsEvent) then) =
      _$CollectiveDetailsEventCopyWithImpl<$Res, CollectiveDetailsEvent>;
}

/// @nodoc
class _$CollectiveDetailsEventCopyWithImpl<$Res,
        $Val extends CollectiveDetailsEvent>
    implements $CollectiveDetailsEventCopyWith<$Res> {
  _$CollectiveDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EventsFetchedImplCopyWith<$Res> {
  factory _$$EventsFetchedImplCopyWith(
          _$EventsFetchedImpl value, $Res Function(_$EventsFetchedImpl) then) =
      __$$EventsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String collectiveId});
}

/// @nodoc
class __$$EventsFetchedImplCopyWithImpl<$Res>
    extends _$CollectiveDetailsEventCopyWithImpl<$Res, _$EventsFetchedImpl>
    implements _$$EventsFetchedImplCopyWith<$Res> {
  __$$EventsFetchedImplCopyWithImpl(
      _$EventsFetchedImpl _value, $Res Function(_$EventsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectiveId = null,
  }) {
    return _then(_$EventsFetchedImpl(
      null == collectiveId
          ? _value.collectiveId
          : collectiveId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventsFetchedImpl implements _EventsFetched {
  const _$EventsFetchedImpl(this.collectiveId);

  @override
  final String collectiveId;

  @override
  String toString() {
    return 'CollectiveDetailsEvent.eventsFetched(collectiveId: $collectiveId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsFetchedImpl &&
            (identical(other.collectiveId, collectiveId) ||
                other.collectiveId == collectiveId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collectiveId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsFetchedImplCopyWith<_$EventsFetchedImpl> get copyWith =>
      __$$EventsFetchedImplCopyWithImpl<_$EventsFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectiveId) eventsFetched,
    required TResult Function(String? collectiveId, Collective? collective)
        collectiveInitialized,
    required TResult Function(String collectiveId) reviewsFetched,
    required TResult Function(String collectiveId) nextPageReviewsFetched,
    required TResult Function(String collectiveId) artistsFetched,
    required TResult Function(Review review) reviewReported,
  }) {
    return eventsFetched(collectiveId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String collectiveId)? eventsFetched,
    TResult? Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult? Function(String collectiveId)? reviewsFetched,
    TResult? Function(String collectiveId)? nextPageReviewsFetched,
    TResult? Function(String collectiveId)? artistsFetched,
    TResult? Function(Review review)? reviewReported,
  }) {
    return eventsFetched?.call(collectiveId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectiveId)? eventsFetched,
    TResult Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult Function(String collectiveId)? reviewsFetched,
    TResult Function(String collectiveId)? nextPageReviewsFetched,
    TResult Function(String collectiveId)? artistsFetched,
    TResult Function(Review review)? reviewReported,
    required TResult orElse(),
  }) {
    if (eventsFetched != null) {
      return eventsFetched(collectiveId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_CollectiveInitialized value)
        collectiveInitialized,
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ArtistsFetched value) artistsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) {
    return eventsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ArtistsFetched value)? artistsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) {
    return eventsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ArtistsFetched value)? artistsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) {
    if (eventsFetched != null) {
      return eventsFetched(this);
    }
    return orElse();
  }
}

abstract class _EventsFetched implements CollectiveDetailsEvent {
  const factory _EventsFetched(final String collectiveId) = _$EventsFetchedImpl;

  String get collectiveId;
  @JsonKey(ignore: true)
  _$$EventsFetchedImplCopyWith<_$EventsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollectiveInitializedImplCopyWith<$Res> {
  factory _$$CollectiveInitializedImplCopyWith(
          _$CollectiveInitializedImpl value,
          $Res Function(_$CollectiveInitializedImpl) then) =
      __$$CollectiveInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? collectiveId, Collective? collective});
}

/// @nodoc
class __$$CollectiveInitializedImplCopyWithImpl<$Res>
    extends _$CollectiveDetailsEventCopyWithImpl<$Res,
        _$CollectiveInitializedImpl>
    implements _$$CollectiveInitializedImplCopyWith<$Res> {
  __$$CollectiveInitializedImplCopyWithImpl(_$CollectiveInitializedImpl _value,
      $Res Function(_$CollectiveInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectiveId = freezed,
    Object? collective = freezed,
  }) {
    return _then(_$CollectiveInitializedImpl(
      collectiveId: freezed == collectiveId
          ? _value.collectiveId
          : collectiveId // ignore: cast_nullable_to_non_nullable
              as String?,
      collective: freezed == collective
          ? _value.collective
          : collective // ignore: cast_nullable_to_non_nullable
              as Collective?,
    ));
  }
}

/// @nodoc

class _$CollectiveInitializedImpl implements _CollectiveInitialized {
  const _$CollectiveInitializedImpl({this.collectiveId, this.collective});

  @override
  final String? collectiveId;
  @override
  final Collective? collective;

  @override
  String toString() {
    return 'CollectiveDetailsEvent.collectiveInitialized(collectiveId: $collectiveId, collective: $collective)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectiveInitializedImpl &&
            (identical(other.collectiveId, collectiveId) ||
                other.collectiveId == collectiveId) &&
            (identical(other.collective, collective) ||
                other.collective == collective));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collectiveId, collective);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectiveInitializedImplCopyWith<_$CollectiveInitializedImpl>
      get copyWith => __$$CollectiveInitializedImplCopyWithImpl<
          _$CollectiveInitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectiveId) eventsFetched,
    required TResult Function(String? collectiveId, Collective? collective)
        collectiveInitialized,
    required TResult Function(String collectiveId) reviewsFetched,
    required TResult Function(String collectiveId) nextPageReviewsFetched,
    required TResult Function(String collectiveId) artistsFetched,
    required TResult Function(Review review) reviewReported,
  }) {
    return collectiveInitialized(collectiveId, collective);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String collectiveId)? eventsFetched,
    TResult? Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult? Function(String collectiveId)? reviewsFetched,
    TResult? Function(String collectiveId)? nextPageReviewsFetched,
    TResult? Function(String collectiveId)? artistsFetched,
    TResult? Function(Review review)? reviewReported,
  }) {
    return collectiveInitialized?.call(collectiveId, collective);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectiveId)? eventsFetched,
    TResult Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult Function(String collectiveId)? reviewsFetched,
    TResult Function(String collectiveId)? nextPageReviewsFetched,
    TResult Function(String collectiveId)? artistsFetched,
    TResult Function(Review review)? reviewReported,
    required TResult orElse(),
  }) {
    if (collectiveInitialized != null) {
      return collectiveInitialized(collectiveId, collective);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_CollectiveInitialized value)
        collectiveInitialized,
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ArtistsFetched value) artistsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) {
    return collectiveInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ArtistsFetched value)? artistsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) {
    return collectiveInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ArtistsFetched value)? artistsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) {
    if (collectiveInitialized != null) {
      return collectiveInitialized(this);
    }
    return orElse();
  }
}

abstract class _CollectiveInitialized implements CollectiveDetailsEvent {
  const factory _CollectiveInitialized(
      {final String? collectiveId,
      final Collective? collective}) = _$CollectiveInitializedImpl;

  String? get collectiveId;
  Collective? get collective;
  @JsonKey(ignore: true)
  _$$CollectiveInitializedImplCopyWith<_$CollectiveInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewsFetchedImplCopyWith<$Res> {
  factory _$$ReviewsFetchedImplCopyWith(_$ReviewsFetchedImpl value,
          $Res Function(_$ReviewsFetchedImpl) then) =
      __$$ReviewsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String collectiveId});
}

/// @nodoc
class __$$ReviewsFetchedImplCopyWithImpl<$Res>
    extends _$CollectiveDetailsEventCopyWithImpl<$Res, _$ReviewsFetchedImpl>
    implements _$$ReviewsFetchedImplCopyWith<$Res> {
  __$$ReviewsFetchedImplCopyWithImpl(
      _$ReviewsFetchedImpl _value, $Res Function(_$ReviewsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectiveId = null,
  }) {
    return _then(_$ReviewsFetchedImpl(
      null == collectiveId
          ? _value.collectiveId
          : collectiveId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReviewsFetchedImpl implements _ReviewsFetched {
  const _$ReviewsFetchedImpl(this.collectiveId);

  @override
  final String collectiveId;

  @override
  String toString() {
    return 'CollectiveDetailsEvent.reviewsFetched(collectiveId: $collectiveId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsFetchedImpl &&
            (identical(other.collectiveId, collectiveId) ||
                other.collectiveId == collectiveId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collectiveId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsFetchedImplCopyWith<_$ReviewsFetchedImpl> get copyWith =>
      __$$ReviewsFetchedImplCopyWithImpl<_$ReviewsFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectiveId) eventsFetched,
    required TResult Function(String? collectiveId, Collective? collective)
        collectiveInitialized,
    required TResult Function(String collectiveId) reviewsFetched,
    required TResult Function(String collectiveId) nextPageReviewsFetched,
    required TResult Function(String collectiveId) artistsFetched,
    required TResult Function(Review review) reviewReported,
  }) {
    return reviewsFetched(collectiveId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String collectiveId)? eventsFetched,
    TResult? Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult? Function(String collectiveId)? reviewsFetched,
    TResult? Function(String collectiveId)? nextPageReviewsFetched,
    TResult? Function(String collectiveId)? artistsFetched,
    TResult? Function(Review review)? reviewReported,
  }) {
    return reviewsFetched?.call(collectiveId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectiveId)? eventsFetched,
    TResult Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult Function(String collectiveId)? reviewsFetched,
    TResult Function(String collectiveId)? nextPageReviewsFetched,
    TResult Function(String collectiveId)? artistsFetched,
    TResult Function(Review review)? reviewReported,
    required TResult orElse(),
  }) {
    if (reviewsFetched != null) {
      return reviewsFetched(collectiveId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_CollectiveInitialized value)
        collectiveInitialized,
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ArtistsFetched value) artistsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) {
    return reviewsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ArtistsFetched value)? artistsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) {
    return reviewsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ArtistsFetched value)? artistsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) {
    if (reviewsFetched != null) {
      return reviewsFetched(this);
    }
    return orElse();
  }
}

abstract class _ReviewsFetched implements CollectiveDetailsEvent {
  const factory _ReviewsFetched(final String collectiveId) =
      _$ReviewsFetchedImpl;

  String get collectiveId;
  @JsonKey(ignore: true)
  _$$ReviewsFetchedImplCopyWith<_$ReviewsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageReviewsFetchedImplCopyWith<$Res> {
  factory _$$NextPageReviewsFetchedImplCopyWith(
          _$NextPageReviewsFetchedImpl value,
          $Res Function(_$NextPageReviewsFetchedImpl) then) =
      __$$NextPageReviewsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String collectiveId});
}

/// @nodoc
class __$$NextPageReviewsFetchedImplCopyWithImpl<$Res>
    extends _$CollectiveDetailsEventCopyWithImpl<$Res,
        _$NextPageReviewsFetchedImpl>
    implements _$$NextPageReviewsFetchedImplCopyWith<$Res> {
  __$$NextPageReviewsFetchedImplCopyWithImpl(
      _$NextPageReviewsFetchedImpl _value,
      $Res Function(_$NextPageReviewsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectiveId = null,
  }) {
    return _then(_$NextPageReviewsFetchedImpl(
      null == collectiveId
          ? _value.collectiveId
          : collectiveId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NextPageReviewsFetchedImpl implements _NextPageReviewsFetched {
  const _$NextPageReviewsFetchedImpl(this.collectiveId);

  @override
  final String collectiveId;

  @override
  String toString() {
    return 'CollectiveDetailsEvent.nextPageReviewsFetched(collectiveId: $collectiveId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPageReviewsFetchedImpl &&
            (identical(other.collectiveId, collectiveId) ||
                other.collectiveId == collectiveId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collectiveId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextPageReviewsFetchedImplCopyWith<_$NextPageReviewsFetchedImpl>
      get copyWith => __$$NextPageReviewsFetchedImplCopyWithImpl<
          _$NextPageReviewsFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectiveId) eventsFetched,
    required TResult Function(String? collectiveId, Collective? collective)
        collectiveInitialized,
    required TResult Function(String collectiveId) reviewsFetched,
    required TResult Function(String collectiveId) nextPageReviewsFetched,
    required TResult Function(String collectiveId) artistsFetched,
    required TResult Function(Review review) reviewReported,
  }) {
    return nextPageReviewsFetched(collectiveId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String collectiveId)? eventsFetched,
    TResult? Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult? Function(String collectiveId)? reviewsFetched,
    TResult? Function(String collectiveId)? nextPageReviewsFetched,
    TResult? Function(String collectiveId)? artistsFetched,
    TResult? Function(Review review)? reviewReported,
  }) {
    return nextPageReviewsFetched?.call(collectiveId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectiveId)? eventsFetched,
    TResult Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult Function(String collectiveId)? reviewsFetched,
    TResult Function(String collectiveId)? nextPageReviewsFetched,
    TResult Function(String collectiveId)? artistsFetched,
    TResult Function(Review review)? reviewReported,
    required TResult orElse(),
  }) {
    if (nextPageReviewsFetched != null) {
      return nextPageReviewsFetched(collectiveId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_CollectiveInitialized value)
        collectiveInitialized,
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ArtistsFetched value) artistsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) {
    return nextPageReviewsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ArtistsFetched value)? artistsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) {
    return nextPageReviewsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ArtistsFetched value)? artistsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) {
    if (nextPageReviewsFetched != null) {
      return nextPageReviewsFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageReviewsFetched implements CollectiveDetailsEvent {
  const factory _NextPageReviewsFetched(final String collectiveId) =
      _$NextPageReviewsFetchedImpl;

  String get collectiveId;
  @JsonKey(ignore: true)
  _$$NextPageReviewsFetchedImplCopyWith<_$NextPageReviewsFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistsFetchedImplCopyWith<$Res> {
  factory _$$ArtistsFetchedImplCopyWith(_$ArtistsFetchedImpl value,
          $Res Function(_$ArtistsFetchedImpl) then) =
      __$$ArtistsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String collectiveId});
}

/// @nodoc
class __$$ArtistsFetchedImplCopyWithImpl<$Res>
    extends _$CollectiveDetailsEventCopyWithImpl<$Res, _$ArtistsFetchedImpl>
    implements _$$ArtistsFetchedImplCopyWith<$Res> {
  __$$ArtistsFetchedImplCopyWithImpl(
      _$ArtistsFetchedImpl _value, $Res Function(_$ArtistsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectiveId = null,
  }) {
    return _then(_$ArtistsFetchedImpl(
      null == collectiveId
          ? _value.collectiveId
          : collectiveId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArtistsFetchedImpl implements _ArtistsFetched {
  const _$ArtistsFetchedImpl(this.collectiveId);

  @override
  final String collectiveId;

  @override
  String toString() {
    return 'CollectiveDetailsEvent.artistsFetched(collectiveId: $collectiveId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsFetchedImpl &&
            (identical(other.collectiveId, collectiveId) ||
                other.collectiveId == collectiveId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collectiveId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsFetchedImplCopyWith<_$ArtistsFetchedImpl> get copyWith =>
      __$$ArtistsFetchedImplCopyWithImpl<_$ArtistsFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectiveId) eventsFetched,
    required TResult Function(String? collectiveId, Collective? collective)
        collectiveInitialized,
    required TResult Function(String collectiveId) reviewsFetched,
    required TResult Function(String collectiveId) nextPageReviewsFetched,
    required TResult Function(String collectiveId) artistsFetched,
    required TResult Function(Review review) reviewReported,
  }) {
    return artistsFetched(collectiveId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String collectiveId)? eventsFetched,
    TResult? Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult? Function(String collectiveId)? reviewsFetched,
    TResult? Function(String collectiveId)? nextPageReviewsFetched,
    TResult? Function(String collectiveId)? artistsFetched,
    TResult? Function(Review review)? reviewReported,
  }) {
    return artistsFetched?.call(collectiveId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectiveId)? eventsFetched,
    TResult Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult Function(String collectiveId)? reviewsFetched,
    TResult Function(String collectiveId)? nextPageReviewsFetched,
    TResult Function(String collectiveId)? artistsFetched,
    TResult Function(Review review)? reviewReported,
    required TResult orElse(),
  }) {
    if (artistsFetched != null) {
      return artistsFetched(collectiveId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_CollectiveInitialized value)
        collectiveInitialized,
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ArtistsFetched value) artistsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) {
    return artistsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ArtistsFetched value)? artistsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) {
    return artistsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ArtistsFetched value)? artistsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) {
    if (artistsFetched != null) {
      return artistsFetched(this);
    }
    return orElse();
  }
}

abstract class _ArtistsFetched implements CollectiveDetailsEvent {
  const factory _ArtistsFetched(final String collectiveId) =
      _$ArtistsFetchedImpl;

  String get collectiveId;
  @JsonKey(ignore: true)
  _$$ArtistsFetchedImplCopyWith<_$ArtistsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewReportedImplCopyWith<$Res> {
  factory _$$ReviewReportedImplCopyWith(_$ReviewReportedImpl value,
          $Res Function(_$ReviewReportedImpl) then) =
      __$$ReviewReportedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Review review});
}

/// @nodoc
class __$$ReviewReportedImplCopyWithImpl<$Res>
    extends _$CollectiveDetailsEventCopyWithImpl<$Res, _$ReviewReportedImpl>
    implements _$$ReviewReportedImplCopyWith<$Res> {
  __$$ReviewReportedImplCopyWithImpl(
      _$ReviewReportedImpl _value, $Res Function(_$ReviewReportedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? review = null,
  }) {
    return _then(_$ReviewReportedImpl(
      null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
    ));
  }
}

/// @nodoc

class _$ReviewReportedImpl implements _ReviewReported {
  const _$ReviewReportedImpl(this.review);

  @override
  final Review review;

  @override
  String toString() {
    return 'CollectiveDetailsEvent.reviewReported(review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewReportedImpl &&
            (identical(other.review, review) || other.review == review));
  }

  @override
  int get hashCode => Object.hash(runtimeType, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewReportedImplCopyWith<_$ReviewReportedImpl> get copyWith =>
      __$$ReviewReportedImplCopyWithImpl<_$ReviewReportedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectiveId) eventsFetched,
    required TResult Function(String? collectiveId, Collective? collective)
        collectiveInitialized,
    required TResult Function(String collectiveId) reviewsFetched,
    required TResult Function(String collectiveId) nextPageReviewsFetched,
    required TResult Function(String collectiveId) artistsFetched,
    required TResult Function(Review review) reviewReported,
  }) {
    return reviewReported(review);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String collectiveId)? eventsFetched,
    TResult? Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult? Function(String collectiveId)? reviewsFetched,
    TResult? Function(String collectiveId)? nextPageReviewsFetched,
    TResult? Function(String collectiveId)? artistsFetched,
    TResult? Function(Review review)? reviewReported,
  }) {
    return reviewReported?.call(review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectiveId)? eventsFetched,
    TResult Function(String? collectiveId, Collective? collective)?
        collectiveInitialized,
    TResult Function(String collectiveId)? reviewsFetched,
    TResult Function(String collectiveId)? nextPageReviewsFetched,
    TResult Function(String collectiveId)? artistsFetched,
    TResult Function(Review review)? reviewReported,
    required TResult orElse(),
  }) {
    if (reviewReported != null) {
      return reviewReported(review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_CollectiveInitialized value)
        collectiveInitialized,
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ArtistsFetched value) artistsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) {
    return reviewReported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ArtistsFetched value)? artistsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) {
    return reviewReported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_CollectiveInitialized value)? collectiveInitialized,
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ArtistsFetched value)? artistsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) {
    if (reviewReported != null) {
      return reviewReported(this);
    }
    return orElse();
  }
}

abstract class _ReviewReported implements CollectiveDetailsEvent {
  const factory _ReviewReported(final Review review) = _$ReviewReportedImpl;

  Review get review;
  @JsonKey(ignore: true)
  _$$ReviewReportedImplCopyWith<_$ReviewReportedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CollectiveDetailsState {
  CubitStatus get getCollectiveStatus => throw _privateConstructorUsedError;
  CubitStatus get getEventsStatus => throw _privateConstructorUsedError;
  CubitStatus get getReviewsStatus => throw _privateConstructorUsedError;
  CubitStatus get getArtistsStatus => throw _privateConstructorUsedError;
  CubitStatus get getNextPageReviewsStatus =>
      throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  List<Event> get events => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;
  bool get hasReviewsReachedMax => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  List<String> get reportingReviewIds => throw _privateConstructorUsedError;
  Option<Collective> get collective => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectiveDetailsStateCopyWith<CollectiveDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectiveDetailsStateCopyWith<$Res> {
  factory $CollectiveDetailsStateCopyWith(CollectiveDetailsState value,
          $Res Function(CollectiveDetailsState) then) =
      _$CollectiveDetailsStateCopyWithImpl<$Res, CollectiveDetailsState>;
  @useResult
  $Res call(
      {CubitStatus getCollectiveStatus,
      CubitStatus getEventsStatus,
      CubitStatus getReviewsStatus,
      CubitStatus getArtistsStatus,
      CubitStatus getNextPageReviewsStatus,
      List<Review> reviews,
      List<Event> events,
      List<Artist> artists,
      bool hasReviewsReachedMax,
      Option<String> snackbarMessage,
      List<String> reportingReviewIds,
      Option<Collective> collective});
}

/// @nodoc
class _$CollectiveDetailsStateCopyWithImpl<$Res,
        $Val extends CollectiveDetailsState>
    implements $CollectiveDetailsStateCopyWith<$Res> {
  _$CollectiveDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCollectiveStatus = null,
    Object? getEventsStatus = null,
    Object? getReviewsStatus = null,
    Object? getArtistsStatus = null,
    Object? getNextPageReviewsStatus = null,
    Object? reviews = null,
    Object? events = null,
    Object? artists = null,
    Object? hasReviewsReachedMax = null,
    Object? snackbarMessage = null,
    Object? reportingReviewIds = null,
    Object? collective = null,
  }) {
    return _then(_value.copyWith(
      getCollectiveStatus: null == getCollectiveStatus
          ? _value.getCollectiveStatus
          : getCollectiveStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      getEventsStatus: null == getEventsStatus
          ? _value.getEventsStatus
          : getEventsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      getReviewsStatus: null == getReviewsStatus
          ? _value.getReviewsStatus
          : getReviewsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      getArtistsStatus: null == getArtistsStatus
          ? _value.getArtistsStatus
          : getArtistsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      getNextPageReviewsStatus: null == getNextPageReviewsStatus
          ? _value.getNextPageReviewsStatus
          : getNextPageReviewsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      hasReviewsReachedMax: null == hasReviewsReachedMax
          ? _value.hasReviewsReachedMax
          : hasReviewsReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      reportingReviewIds: null == reportingReviewIds
          ? _value.reportingReviewIds
          : reportingReviewIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      collective: null == collective
          ? _value.collective
          : collective // ignore: cast_nullable_to_non_nullable
              as Option<Collective>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectiveDetailsStateImplCopyWith<$Res>
    implements $CollectiveDetailsStateCopyWith<$Res> {
  factory _$$CollectiveDetailsStateImplCopyWith(
          _$CollectiveDetailsStateImpl value,
          $Res Function(_$CollectiveDetailsStateImpl) then) =
      __$$CollectiveDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getCollectiveStatus,
      CubitStatus getEventsStatus,
      CubitStatus getReviewsStatus,
      CubitStatus getArtistsStatus,
      CubitStatus getNextPageReviewsStatus,
      List<Review> reviews,
      List<Event> events,
      List<Artist> artists,
      bool hasReviewsReachedMax,
      Option<String> snackbarMessage,
      List<String> reportingReviewIds,
      Option<Collective> collective});
}

/// @nodoc
class __$$CollectiveDetailsStateImplCopyWithImpl<$Res>
    extends _$CollectiveDetailsStateCopyWithImpl<$Res,
        _$CollectiveDetailsStateImpl>
    implements _$$CollectiveDetailsStateImplCopyWith<$Res> {
  __$$CollectiveDetailsStateImplCopyWithImpl(
      _$CollectiveDetailsStateImpl _value,
      $Res Function(_$CollectiveDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCollectiveStatus = null,
    Object? getEventsStatus = null,
    Object? getReviewsStatus = null,
    Object? getArtistsStatus = null,
    Object? getNextPageReviewsStatus = null,
    Object? reviews = null,
    Object? events = null,
    Object? artists = null,
    Object? hasReviewsReachedMax = null,
    Object? snackbarMessage = null,
    Object? reportingReviewIds = null,
    Object? collective = null,
  }) {
    return _then(_$CollectiveDetailsStateImpl(
      getCollectiveStatus: null == getCollectiveStatus
          ? _value.getCollectiveStatus
          : getCollectiveStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      getEventsStatus: null == getEventsStatus
          ? _value.getEventsStatus
          : getEventsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      getReviewsStatus: null == getReviewsStatus
          ? _value.getReviewsStatus
          : getReviewsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      getArtistsStatus: null == getArtistsStatus
          ? _value.getArtistsStatus
          : getArtistsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      getNextPageReviewsStatus: null == getNextPageReviewsStatus
          ? _value.getNextPageReviewsStatus
          : getNextPageReviewsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      hasReviewsReachedMax: null == hasReviewsReachedMax
          ? _value.hasReviewsReachedMax
          : hasReviewsReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      reportingReviewIds: null == reportingReviewIds
          ? _value._reportingReviewIds
          : reportingReviewIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      collective: null == collective
          ? _value.collective
          : collective // ignore: cast_nullable_to_non_nullable
              as Option<Collective>,
    ));
  }
}

/// @nodoc

class _$CollectiveDetailsStateImpl implements _CollectiveDetailsState {
  const _$CollectiveDetailsStateImpl(
      {required this.getCollectiveStatus,
      required this.getEventsStatus,
      required this.getReviewsStatus,
      required this.getArtistsStatus,
      required this.getNextPageReviewsStatus,
      required final List<Review> reviews,
      required final List<Event> events,
      required final List<Artist> artists,
      required this.hasReviewsReachedMax,
      required this.snackbarMessage,
      required final List<String> reportingReviewIds,
      required this.collective})
      : _reviews = reviews,
        _events = events,
        _artists = artists,
        _reportingReviewIds = reportingReviewIds;

  @override
  final CubitStatus getCollectiveStatus;
  @override
  final CubitStatus getEventsStatus;
  @override
  final CubitStatus getReviewsStatus;
  @override
  final CubitStatus getArtistsStatus;
  @override
  final CubitStatus getNextPageReviewsStatus;
  final List<Review> _reviews;
  @override
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final bool hasReviewsReachedMax;
  @override
  final Option<String> snackbarMessage;
  final List<String> _reportingReviewIds;
  @override
  List<String> get reportingReviewIds {
    if (_reportingReviewIds is EqualUnmodifiableListView)
      return _reportingReviewIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportingReviewIds);
  }

  @override
  final Option<Collective> collective;

  @override
  String toString() {
    return 'CollectiveDetailsState(getCollectiveStatus: $getCollectiveStatus, getEventsStatus: $getEventsStatus, getReviewsStatus: $getReviewsStatus, getArtistsStatus: $getArtistsStatus, getNextPageReviewsStatus: $getNextPageReviewsStatus, reviews: $reviews, events: $events, artists: $artists, hasReviewsReachedMax: $hasReviewsReachedMax, snackbarMessage: $snackbarMessage, reportingReviewIds: $reportingReviewIds, collective: $collective)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectiveDetailsStateImpl &&
            (identical(other.getCollectiveStatus, getCollectiveStatus) ||
                other.getCollectiveStatus == getCollectiveStatus) &&
            (identical(other.getEventsStatus, getEventsStatus) ||
                other.getEventsStatus == getEventsStatus) &&
            (identical(other.getReviewsStatus, getReviewsStatus) ||
                other.getReviewsStatus == getReviewsStatus) &&
            (identical(other.getArtistsStatus, getArtistsStatus) ||
                other.getArtistsStatus == getArtistsStatus) &&
            (identical(
                    other.getNextPageReviewsStatus, getNextPageReviewsStatus) ||
                other.getNextPageReviewsStatus == getNextPageReviewsStatus) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.hasReviewsReachedMax, hasReviewsReachedMax) ||
                other.hasReviewsReachedMax == hasReviewsReachedMax) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            const DeepCollectionEquality()
                .equals(other._reportingReviewIds, _reportingReviewIds) &&
            (identical(other.collective, collective) ||
                other.collective == collective));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getCollectiveStatus,
      getEventsStatus,
      getReviewsStatus,
      getArtistsStatus,
      getNextPageReviewsStatus,
      const DeepCollectionEquality().hash(_reviews),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_artists),
      hasReviewsReachedMax,
      snackbarMessage,
      const DeepCollectionEquality().hash(_reportingReviewIds),
      collective);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectiveDetailsStateImplCopyWith<_$CollectiveDetailsStateImpl>
      get copyWith => __$$CollectiveDetailsStateImplCopyWithImpl<
          _$CollectiveDetailsStateImpl>(this, _$identity);
}

abstract class _CollectiveDetailsState implements CollectiveDetailsState {
  const factory _CollectiveDetailsState(
          {required final CubitStatus getCollectiveStatus,
          required final CubitStatus getEventsStatus,
          required final CubitStatus getReviewsStatus,
          required final CubitStatus getArtistsStatus,
          required final CubitStatus getNextPageReviewsStatus,
          required final List<Review> reviews,
          required final List<Event> events,
          required final List<Artist> artists,
          required final bool hasReviewsReachedMax,
          required final Option<String> snackbarMessage,
          required final List<String> reportingReviewIds,
          required final Option<Collective> collective}) =
      _$CollectiveDetailsStateImpl;

  @override
  CubitStatus get getCollectiveStatus;
  @override
  CubitStatus get getEventsStatus;
  @override
  CubitStatus get getReviewsStatus;
  @override
  CubitStatus get getArtistsStatus;
  @override
  CubitStatus get getNextPageReviewsStatus;
  @override
  List<Review> get reviews;
  @override
  List<Event> get events;
  @override
  List<Artist> get artists;
  @override
  bool get hasReviewsReachedMax;
  @override
  Option<String> get snackbarMessage;
  @override
  List<String> get reportingReviewIds;
  @override
  Option<Collective> get collective;
  @override
  @JsonKey(ignore: true)
  _$$CollectiveDetailsStateImplCopyWith<_$CollectiveDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

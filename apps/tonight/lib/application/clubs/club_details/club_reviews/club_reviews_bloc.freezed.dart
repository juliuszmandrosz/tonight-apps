// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_reviews_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubReviewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) reviewsFetched,
    required TResult Function() nextPageReviewsFetched,
    required TResult Function(Review review) reviewReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? reviewsFetched,
    TResult? Function()? nextPageReviewsFetched,
    TResult? Function(Review review)? reviewReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? reviewsFetched,
    TResult Function()? nextPageReviewsFetched,
    TResult Function(Review review)? reviewReported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubReviewsEventCopyWith<$Res> {
  factory $ClubReviewsEventCopyWith(
          ClubReviewsEvent value, $Res Function(ClubReviewsEvent) then) =
      _$ClubReviewsEventCopyWithImpl<$Res, ClubReviewsEvent>;
}

/// @nodoc
class _$ClubReviewsEventCopyWithImpl<$Res, $Val extends ClubReviewsEvent>
    implements $ClubReviewsEventCopyWith<$Res> {
  _$ClubReviewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReviewsFetchedImplCopyWith<$Res> {
  factory _$$ReviewsFetchedImplCopyWith(_$ReviewsFetchedImpl value,
          $Res Function(_$ReviewsFetchedImpl) then) =
      __$$ReviewsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clubId});
}

/// @nodoc
class __$$ReviewsFetchedImplCopyWithImpl<$Res>
    extends _$ClubReviewsEventCopyWithImpl<$Res, _$ReviewsFetchedImpl>
    implements _$$ReviewsFetchedImplCopyWith<$Res> {
  __$$ReviewsFetchedImplCopyWithImpl(
      _$ReviewsFetchedImpl _value, $Res Function(_$ReviewsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$ReviewsFetchedImpl(
      null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReviewsFetchedImpl implements _ReviewsFetched {
  const _$ReviewsFetchedImpl(this.clubId);

  @override
  final String clubId;

  @override
  String toString() {
    return 'ClubReviewsEvent.reviewsFetched(clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsFetchedImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsFetchedImplCopyWith<_$ReviewsFetchedImpl> get copyWith =>
      __$$ReviewsFetchedImplCopyWithImpl<_$ReviewsFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) reviewsFetched,
    required TResult Function() nextPageReviewsFetched,
    required TResult Function(Review review) reviewReported,
  }) {
    return reviewsFetched(clubId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? reviewsFetched,
    TResult? Function()? nextPageReviewsFetched,
    TResult? Function(Review review)? reviewReported,
  }) {
    return reviewsFetched?.call(clubId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? reviewsFetched,
    TResult Function()? nextPageReviewsFetched,
    TResult Function(Review review)? reviewReported,
    required TResult orElse(),
  }) {
    if (reviewsFetched != null) {
      return reviewsFetched(clubId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) {
    return reviewsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) {
    return reviewsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) {
    if (reviewsFetched != null) {
      return reviewsFetched(this);
    }
    return orElse();
  }
}

abstract class _ReviewsFetched implements ClubReviewsEvent {
  const factory _ReviewsFetched(final String clubId) = _$ReviewsFetchedImpl;

  String get clubId;
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
}

/// @nodoc
class __$$NextPageReviewsFetchedImplCopyWithImpl<$Res>
    extends _$ClubReviewsEventCopyWithImpl<$Res, _$NextPageReviewsFetchedImpl>
    implements _$$NextPageReviewsFetchedImplCopyWith<$Res> {
  __$$NextPageReviewsFetchedImplCopyWithImpl(
      _$NextPageReviewsFetchedImpl _value,
      $Res Function(_$NextPageReviewsFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageReviewsFetchedImpl implements _NextPageReviewsFetched {
  const _$NextPageReviewsFetchedImpl();

  @override
  String toString() {
    return 'ClubReviewsEvent.nextPageReviewsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPageReviewsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) reviewsFetched,
    required TResult Function() nextPageReviewsFetched,
    required TResult Function(Review review) reviewReported,
  }) {
    return nextPageReviewsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? reviewsFetched,
    TResult? Function()? nextPageReviewsFetched,
    TResult? Function(Review review)? reviewReported,
  }) {
    return nextPageReviewsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? reviewsFetched,
    TResult Function()? nextPageReviewsFetched,
    TResult Function(Review review)? reviewReported,
    required TResult orElse(),
  }) {
    if (nextPageReviewsFetched != null) {
      return nextPageReviewsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) {
    return nextPageReviewsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) {
    return nextPageReviewsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) {
    if (nextPageReviewsFetched != null) {
      return nextPageReviewsFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageReviewsFetched implements ClubReviewsEvent {
  const factory _NextPageReviewsFetched() = _$NextPageReviewsFetchedImpl;
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
    extends _$ClubReviewsEventCopyWithImpl<$Res, _$ReviewReportedImpl>
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
    return 'ClubReviewsEvent.reviewReported(review: $review)';
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
    required TResult Function(String clubId) reviewsFetched,
    required TResult Function() nextPageReviewsFetched,
    required TResult Function(Review review) reviewReported,
  }) {
    return reviewReported(review);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? reviewsFetched,
    TResult? Function()? nextPageReviewsFetched,
    TResult? Function(Review review)? reviewReported,
  }) {
    return reviewReported?.call(review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? reviewsFetched,
    TResult Function()? nextPageReviewsFetched,
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
    required TResult Function(_ReviewsFetched value) reviewsFetched,
    required TResult Function(_NextPageReviewsFetched value)
        nextPageReviewsFetched,
    required TResult Function(_ReviewReported value) reviewReported,
  }) {
    return reviewReported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewsFetched value)? reviewsFetched,
    TResult? Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult? Function(_ReviewReported value)? reviewReported,
  }) {
    return reviewReported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewsFetched value)? reviewsFetched,
    TResult Function(_NextPageReviewsFetched value)? nextPageReviewsFetched,
    TResult Function(_ReviewReported value)? reviewReported,
    required TResult orElse(),
  }) {
    if (reviewReported != null) {
      return reviewReported(this);
    }
    return orElse();
  }
}

abstract class _ReviewReported implements ClubReviewsEvent {
  const factory _ReviewReported(final Review review) = _$ReviewReportedImpl;

  Review get review;
  @JsonKey(ignore: true)
  _$$ReviewReportedImplCopyWith<_$ReviewReportedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClubReviewsState {
  CubitStatus get getReviewsStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageReviewsStatus => throw _privateConstructorUsedError;
  String get clubId => throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  List<String> get reportingReviewIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubReviewsStateCopyWith<ClubReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubReviewsStateCopyWith<$Res> {
  factory $ClubReviewsStateCopyWith(
          ClubReviewsState value, $Res Function(ClubReviewsState) then) =
      _$ClubReviewsStateCopyWithImpl<$Res, ClubReviewsState>;
  @useResult
  $Res call(
      {CubitStatus getReviewsStatus,
      CubitStatus nextPageReviewsStatus,
      String clubId,
      List<Review> reviews,
      bool hasReachedMax,
      Option<String> snackbarMessage,
      List<String> reportingReviewIds});
}

/// @nodoc
class _$ClubReviewsStateCopyWithImpl<$Res, $Val extends ClubReviewsState>
    implements $ClubReviewsStateCopyWith<$Res> {
  _$ClubReviewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getReviewsStatus = null,
    Object? nextPageReviewsStatus = null,
    Object? clubId = null,
    Object? reviews = null,
    Object? hasReachedMax = null,
    Object? snackbarMessage = null,
    Object? reportingReviewIds = null,
  }) {
    return _then(_value.copyWith(
      getReviewsStatus: null == getReviewsStatus
          ? _value.getReviewsStatus
          : getReviewsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageReviewsStatus: null == nextPageReviewsStatus
          ? _value.nextPageReviewsStatus
          : nextPageReviewsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      reportingReviewIds: null == reportingReviewIds
          ? _value.reportingReviewIds
          : reportingReviewIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClubReviewsStateImplCopyWith<$Res>
    implements $ClubReviewsStateCopyWith<$Res> {
  factory _$$ClubReviewsStateImplCopyWith(_$ClubReviewsStateImpl value,
          $Res Function(_$ClubReviewsStateImpl) then) =
      __$$ClubReviewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getReviewsStatus,
      CubitStatus nextPageReviewsStatus,
      String clubId,
      List<Review> reviews,
      bool hasReachedMax,
      Option<String> snackbarMessage,
      List<String> reportingReviewIds});
}

/// @nodoc
class __$$ClubReviewsStateImplCopyWithImpl<$Res>
    extends _$ClubReviewsStateCopyWithImpl<$Res, _$ClubReviewsStateImpl>
    implements _$$ClubReviewsStateImplCopyWith<$Res> {
  __$$ClubReviewsStateImplCopyWithImpl(_$ClubReviewsStateImpl _value,
      $Res Function(_$ClubReviewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getReviewsStatus = null,
    Object? nextPageReviewsStatus = null,
    Object? clubId = null,
    Object? reviews = null,
    Object? hasReachedMax = null,
    Object? snackbarMessage = null,
    Object? reportingReviewIds = null,
  }) {
    return _then(_$ClubReviewsStateImpl(
      getReviewsStatus: null == getReviewsStatus
          ? _value.getReviewsStatus
          : getReviewsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageReviewsStatus: null == nextPageReviewsStatus
          ? _value.nextPageReviewsStatus
          : nextPageReviewsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      reportingReviewIds: null == reportingReviewIds
          ? _value._reportingReviewIds
          : reportingReviewIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ClubReviewsStateImpl extends _ClubReviewsState {
  const _$ClubReviewsStateImpl(
      {required this.getReviewsStatus,
      required this.nextPageReviewsStatus,
      required this.clubId,
      required final List<Review> reviews,
      required this.hasReachedMax,
      required this.snackbarMessage,
      required final List<String> reportingReviewIds})
      : _reviews = reviews,
        _reportingReviewIds = reportingReviewIds,
        super._();

  @override
  final CubitStatus getReviewsStatus;
  @override
  final CubitStatus nextPageReviewsStatus;
  @override
  final String clubId;
  final List<Review> _reviews;
  @override
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final bool hasReachedMax;
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
  String toString() {
    return 'ClubReviewsState(getReviewsStatus: $getReviewsStatus, nextPageReviewsStatus: $nextPageReviewsStatus, clubId: $clubId, reviews: $reviews, hasReachedMax: $hasReachedMax, snackbarMessage: $snackbarMessage, reportingReviewIds: $reportingReviewIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubReviewsStateImpl &&
            (identical(other.getReviewsStatus, getReviewsStatus) ||
                other.getReviewsStatus == getReviewsStatus) &&
            (identical(other.nextPageReviewsStatus, nextPageReviewsStatus) ||
                other.nextPageReviewsStatus == nextPageReviewsStatus) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            const DeepCollectionEquality()
                .equals(other._reportingReviewIds, _reportingReviewIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getReviewsStatus,
      nextPageReviewsStatus,
      clubId,
      const DeepCollectionEquality().hash(_reviews),
      hasReachedMax,
      snackbarMessage,
      const DeepCollectionEquality().hash(_reportingReviewIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubReviewsStateImplCopyWith<_$ClubReviewsStateImpl> get copyWith =>
      __$$ClubReviewsStateImplCopyWithImpl<_$ClubReviewsStateImpl>(
          this, _$identity);
}

abstract class _ClubReviewsState extends ClubReviewsState {
  const factory _ClubReviewsState(
      {required final CubitStatus getReviewsStatus,
      required final CubitStatus nextPageReviewsStatus,
      required final String clubId,
      required final List<Review> reviews,
      required final bool hasReachedMax,
      required final Option<String> snackbarMessage,
      required final List<String> reportingReviewIds}) = _$ClubReviewsStateImpl;
  const _ClubReviewsState._() : super._();

  @override
  CubitStatus get getReviewsStatus;
  @override
  CubitStatus get nextPageReviewsStatus;
  @override
  String get clubId;
  @override
  List<Review> get reviews;
  @override
  bool get hasReachedMax;
  @override
  Option<String> get snackbarMessage;
  @override
  List<String> get reportingReviewIds;
  @override
  @JsonKey(ignore: true)
  _$$ClubReviewsStateImplCopyWith<_$ClubReviewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

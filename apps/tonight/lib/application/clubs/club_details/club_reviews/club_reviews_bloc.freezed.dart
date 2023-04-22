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
    required TResult Function(String reviewId) reviewReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? reviewsFetched,
    TResult? Function()? nextPageReviewsFetched,
    TResult? Function(String reviewId)? reviewReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? reviewsFetched,
    TResult Function()? nextPageReviewsFetched,
    TResult Function(String reviewId)? reviewReported,
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
abstract class _$$_ReviewsFetchedCopyWith<$Res> {
  factory _$$_ReviewsFetchedCopyWith(
          _$_ReviewsFetched value, $Res Function(_$_ReviewsFetched) then) =
      __$$_ReviewsFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({String clubId});
}

/// @nodoc
class __$$_ReviewsFetchedCopyWithImpl<$Res>
    extends _$ClubReviewsEventCopyWithImpl<$Res, _$_ReviewsFetched>
    implements _$$_ReviewsFetchedCopyWith<$Res> {
  __$$_ReviewsFetchedCopyWithImpl(
      _$_ReviewsFetched _value, $Res Function(_$_ReviewsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$_ReviewsFetched(
      null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReviewsFetched implements _ReviewsFetched {
  const _$_ReviewsFetched(this.clubId);

  @override
  final String clubId;

  @override
  String toString() {
    return 'ClubReviewsEvent.reviewsFetched(clubId: $clubId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewsFetched &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewsFetchedCopyWith<_$_ReviewsFetched> get copyWith =>
      __$$_ReviewsFetchedCopyWithImpl<_$_ReviewsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) reviewsFetched,
    required TResult Function() nextPageReviewsFetched,
    required TResult Function(String reviewId) reviewReported,
  }) {
    return reviewsFetched(clubId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? reviewsFetched,
    TResult? Function()? nextPageReviewsFetched,
    TResult? Function(String reviewId)? reviewReported,
  }) {
    return reviewsFetched?.call(clubId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? reviewsFetched,
    TResult Function()? nextPageReviewsFetched,
    TResult Function(String reviewId)? reviewReported,
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
  const factory _ReviewsFetched(final String clubId) = _$_ReviewsFetched;

  String get clubId;
  @JsonKey(ignore: true)
  _$$_ReviewsFetchedCopyWith<_$_ReviewsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextPageReviewsFetchedCopyWith<$Res> {
  factory _$$_NextPageReviewsFetchedCopyWith(_$_NextPageReviewsFetched value,
          $Res Function(_$_NextPageReviewsFetched) then) =
      __$$_NextPageReviewsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageReviewsFetchedCopyWithImpl<$Res>
    extends _$ClubReviewsEventCopyWithImpl<$Res, _$_NextPageReviewsFetched>
    implements _$$_NextPageReviewsFetchedCopyWith<$Res> {
  __$$_NextPageReviewsFetchedCopyWithImpl(_$_NextPageReviewsFetched _value,
      $Res Function(_$_NextPageReviewsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPageReviewsFetched implements _NextPageReviewsFetched {
  const _$_NextPageReviewsFetched();

  @override
  String toString() {
    return 'ClubReviewsEvent.nextPageReviewsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPageReviewsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) reviewsFetched,
    required TResult Function() nextPageReviewsFetched,
    required TResult Function(String reviewId) reviewReported,
  }) {
    return nextPageReviewsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? reviewsFetched,
    TResult? Function()? nextPageReviewsFetched,
    TResult? Function(String reviewId)? reviewReported,
  }) {
    return nextPageReviewsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? reviewsFetched,
    TResult Function()? nextPageReviewsFetched,
    TResult Function(String reviewId)? reviewReported,
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
  const factory _NextPageReviewsFetched() = _$_NextPageReviewsFetched;
}

/// @nodoc
abstract class _$$_ReviewReportedCopyWith<$Res> {
  factory _$$_ReviewReportedCopyWith(
          _$_ReviewReported value, $Res Function(_$_ReviewReported) then) =
      __$$_ReviewReportedCopyWithImpl<$Res>;
  @useResult
  $Res call({String reviewId});
}

/// @nodoc
class __$$_ReviewReportedCopyWithImpl<$Res>
    extends _$ClubReviewsEventCopyWithImpl<$Res, _$_ReviewReported>
    implements _$$_ReviewReportedCopyWith<$Res> {
  __$$_ReviewReportedCopyWithImpl(
      _$_ReviewReported _value, $Res Function(_$_ReviewReported) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
  }) {
    return _then(_$_ReviewReported(
      null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReviewReported implements _ReviewReported {
  const _$_ReviewReported(this.reviewId);

  @override
  final String reviewId;

  @override
  String toString() {
    return 'ClubReviewsEvent.reviewReported(reviewId: $reviewId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewReported &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewReportedCopyWith<_$_ReviewReported> get copyWith =>
      __$$_ReviewReportedCopyWithImpl<_$_ReviewReported>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) reviewsFetched,
    required TResult Function() nextPageReviewsFetched,
    required TResult Function(String reviewId) reviewReported,
  }) {
    return reviewReported(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? reviewsFetched,
    TResult? Function()? nextPageReviewsFetched,
    TResult? Function(String reviewId)? reviewReported,
  }) {
    return reviewReported?.call(reviewId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? reviewsFetched,
    TResult Function()? nextPageReviewsFetched,
    TResult Function(String reviewId)? reviewReported,
    required TResult orElse(),
  }) {
    if (reviewReported != null) {
      return reviewReported(reviewId);
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
  const factory _ReviewReported(final String reviewId) = _$_ReviewReported;

  String get reviewId;
  @JsonKey(ignore: true)
  _$$_ReviewReportedCopyWith<_$_ReviewReported> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClubReviewsState {
  CubitStatus get getReviewsStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageReviewsStatus => throw _privateConstructorUsedError;
  CubitStatus get reviewReportStatus => throw _privateConstructorUsedError;
  String get clubId => throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  Option<String> get reportingReviewId => throw _privateConstructorUsedError;

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
      CubitStatus reviewReportStatus,
      String clubId,
      List<Review> reviews,
      bool hasReachedMax,
      Option<String> snackbarMessage,
      Option<String> reportingReviewId});
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
    Object? reviewReportStatus = null,
    Object? clubId = null,
    Object? reviews = null,
    Object? hasReachedMax = null,
    Object? snackbarMessage = null,
    Object? reportingReviewId = null,
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
      reviewReportStatus: null == reviewReportStatus
          ? _value.reviewReportStatus
          : reviewReportStatus // ignore: cast_nullable_to_non_nullable
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
      reportingReviewId: null == reportingReviewId
          ? _value.reportingReviewId
          : reportingReviewId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubReviewsStateCopyWith<$Res>
    implements $ClubReviewsStateCopyWith<$Res> {
  factory _$$_ClubReviewsStateCopyWith(
          _$_ClubReviewsState value, $Res Function(_$_ClubReviewsState) then) =
      __$$_ClubReviewsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getReviewsStatus,
      CubitStatus nextPageReviewsStatus,
      CubitStatus reviewReportStatus,
      String clubId,
      List<Review> reviews,
      bool hasReachedMax,
      Option<String> snackbarMessage,
      Option<String> reportingReviewId});
}

/// @nodoc
class __$$_ClubReviewsStateCopyWithImpl<$Res>
    extends _$ClubReviewsStateCopyWithImpl<$Res, _$_ClubReviewsState>
    implements _$$_ClubReviewsStateCopyWith<$Res> {
  __$$_ClubReviewsStateCopyWithImpl(
      _$_ClubReviewsState _value, $Res Function(_$_ClubReviewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getReviewsStatus = null,
    Object? nextPageReviewsStatus = null,
    Object? reviewReportStatus = null,
    Object? clubId = null,
    Object? reviews = null,
    Object? hasReachedMax = null,
    Object? snackbarMessage = null,
    Object? reportingReviewId = null,
  }) {
    return _then(_$_ClubReviewsState(
      getReviewsStatus: null == getReviewsStatus
          ? _value.getReviewsStatus
          : getReviewsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageReviewsStatus: null == nextPageReviewsStatus
          ? _value.nextPageReviewsStatus
          : nextPageReviewsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      reviewReportStatus: null == reviewReportStatus
          ? _value.reviewReportStatus
          : reviewReportStatus // ignore: cast_nullable_to_non_nullable
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
      reportingReviewId: null == reportingReviewId
          ? _value.reportingReviewId
          : reportingReviewId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_ClubReviewsState extends _ClubReviewsState {
  const _$_ClubReviewsState(
      {required this.getReviewsStatus,
      required this.nextPageReviewsStatus,
      required this.reviewReportStatus,
      required this.clubId,
      required final List<Review> reviews,
      required this.hasReachedMax,
      required this.snackbarMessage,
      required this.reportingReviewId})
      : _reviews = reviews,
        super._();

  @override
  final CubitStatus getReviewsStatus;
  @override
  final CubitStatus nextPageReviewsStatus;
  @override
  final CubitStatus reviewReportStatus;
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
  @override
  final Option<String> reportingReviewId;

  @override
  String toString() {
    return 'ClubReviewsState(getReviewsStatus: $getReviewsStatus, nextPageReviewsStatus: $nextPageReviewsStatus, reviewReportStatus: $reviewReportStatus, clubId: $clubId, reviews: $reviews, hasReachedMax: $hasReachedMax, snackbarMessage: $snackbarMessage, reportingReviewId: $reportingReviewId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubReviewsState &&
            (identical(other.getReviewsStatus, getReviewsStatus) ||
                other.getReviewsStatus == getReviewsStatus) &&
            (identical(other.nextPageReviewsStatus, nextPageReviewsStatus) ||
                other.nextPageReviewsStatus == nextPageReviewsStatus) &&
            (identical(other.reviewReportStatus, reviewReportStatus) ||
                other.reviewReportStatus == reviewReportStatus) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.reportingReviewId, reportingReviewId) ||
                other.reportingReviewId == reportingReviewId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getReviewsStatus,
      nextPageReviewsStatus,
      reviewReportStatus,
      clubId,
      const DeepCollectionEquality().hash(_reviews),
      hasReachedMax,
      snackbarMessage,
      reportingReviewId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubReviewsStateCopyWith<_$_ClubReviewsState> get copyWith =>
      __$$_ClubReviewsStateCopyWithImpl<_$_ClubReviewsState>(this, _$identity);
}

abstract class _ClubReviewsState extends ClubReviewsState {
  const factory _ClubReviewsState(
      {required final CubitStatus getReviewsStatus,
      required final CubitStatus nextPageReviewsStatus,
      required final CubitStatus reviewReportStatus,
      required final String clubId,
      required final List<Review> reviews,
      required final bool hasReachedMax,
      required final Option<String> snackbarMessage,
      required final Option<String> reportingReviewId}) = _$_ClubReviewsState;
  const _ClubReviewsState._() : super._();

  @override
  CubitStatus get getReviewsStatus;
  @override
  CubitStatus get nextPageReviewsStatus;
  @override
  CubitStatus get reviewReportStatus;
  @override
  String get clubId;
  @override
  List<Review> get reviews;
  @override
  bool get hasReachedMax;
  @override
  Option<String> get snackbarMessage;
  @override
  Option<String> get reportingReviewId;
  @override
  @JsonKey(ignore: true)
  _$$_ClubReviewsStateCopyWith<_$_ClubReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

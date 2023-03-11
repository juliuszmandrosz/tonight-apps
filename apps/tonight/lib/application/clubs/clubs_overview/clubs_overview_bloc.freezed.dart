// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clubs_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubsOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilters clubFilter) clubsFetched,
    required TResult Function() nextPageClubsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubFilters clubFilter)? clubsFetched,
    TResult? Function()? nextPageClubsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilters clubFilter)? clubsFetched,
    TResult Function()? nextPageClubsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubsFetched value) clubsFetched,
    required TResult Function(_NextPageClubsFetched value) nextPageClubsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubsFetched value)? clubsFetched,
    TResult? Function(_NextPageClubsFetched value)? nextPageClubsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubsFetched value)? clubsFetched,
    TResult Function(_NextPageClubsFetched value)? nextPageClubsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubsOverviewEventCopyWith<$Res> {
  factory $ClubsOverviewEventCopyWith(
          ClubsOverviewEvent value, $Res Function(ClubsOverviewEvent) then) =
      _$ClubsOverviewEventCopyWithImpl<$Res, ClubsOverviewEvent>;
}

/// @nodoc
class _$ClubsOverviewEventCopyWithImpl<$Res, $Val extends ClubsOverviewEvent>
    implements $ClubsOverviewEventCopyWith<$Res> {
  _$ClubsOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClubsFetchedCopyWith<$Res> {
  factory _$$_ClubsFetchedCopyWith(
          _$_ClubsFetched value, $Res Function(_$_ClubsFetched) then) =
      __$$_ClubsFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({ClubFilters clubFilter});

  $ClubFiltersCopyWith<$Res> get clubFilter;
}

/// @nodoc
class __$$_ClubsFetchedCopyWithImpl<$Res>
    extends _$ClubsOverviewEventCopyWithImpl<$Res, _$_ClubsFetched>
    implements _$$_ClubsFetchedCopyWith<$Res> {
  __$$_ClubsFetchedCopyWithImpl(
      _$_ClubsFetched _value, $Res Function(_$_ClubsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubFilter = null,
  }) {
    return _then(_$_ClubsFetched(
      null == clubFilter
          ? _value.clubFilter
          : clubFilter // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubFiltersCopyWith<$Res> get clubFilter {
    return $ClubFiltersCopyWith<$Res>(_value.clubFilter, (value) {
      return _then(_value.copyWith(clubFilter: value));
    });
  }
}

/// @nodoc

class _$_ClubsFetched implements _ClubsFetched {
  const _$_ClubsFetched(this.clubFilter);

  @override
  final ClubFilters clubFilter;

  @override
  String toString() {
    return 'ClubsOverviewEvent.clubsFetched(clubFilter: $clubFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubsFetched &&
            (identical(other.clubFilter, clubFilter) ||
                other.clubFilter == clubFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubsFetchedCopyWith<_$_ClubsFetched> get copyWith =>
      __$$_ClubsFetchedCopyWithImpl<_$_ClubsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilters clubFilter) clubsFetched,
    required TResult Function() nextPageClubsFetched,
  }) {
    return clubsFetched(clubFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubFilters clubFilter)? clubsFetched,
    TResult? Function()? nextPageClubsFetched,
  }) {
    return clubsFetched?.call(clubFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilters clubFilter)? clubsFetched,
    TResult Function()? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (clubsFetched != null) {
      return clubsFetched(clubFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubsFetched value) clubsFetched,
    required TResult Function(_NextPageClubsFetched value) nextPageClubsFetched,
  }) {
    return clubsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubsFetched value)? clubsFetched,
    TResult? Function(_NextPageClubsFetched value)? nextPageClubsFetched,
  }) {
    return clubsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubsFetched value)? clubsFetched,
    TResult Function(_NextPageClubsFetched value)? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (clubsFetched != null) {
      return clubsFetched(this);
    }
    return orElse();
  }
}

abstract class _ClubsFetched implements ClubsOverviewEvent {
  const factory _ClubsFetched(final ClubFilters clubFilter) = _$_ClubsFetched;

  ClubFilters get clubFilter;
  @JsonKey(ignore: true)
  _$$_ClubsFetchedCopyWith<_$_ClubsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextPageClubsFetchedCopyWith<$Res> {
  factory _$$_NextPageClubsFetchedCopyWith(_$_NextPageClubsFetched value,
          $Res Function(_$_NextPageClubsFetched) then) =
      __$$_NextPageClubsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageClubsFetchedCopyWithImpl<$Res>
    extends _$ClubsOverviewEventCopyWithImpl<$Res, _$_NextPageClubsFetched>
    implements _$$_NextPageClubsFetchedCopyWith<$Res> {
  __$$_NextPageClubsFetchedCopyWithImpl(_$_NextPageClubsFetched _value,
      $Res Function(_$_NextPageClubsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPageClubsFetched implements _NextPageClubsFetched {
  const _$_NextPageClubsFetched();

  @override
  String toString() {
    return 'ClubsOverviewEvent.nextPageClubsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NextPageClubsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilters clubFilter) clubsFetched,
    required TResult Function() nextPageClubsFetched,
  }) {
    return nextPageClubsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubFilters clubFilter)? clubsFetched,
    TResult? Function()? nextPageClubsFetched,
  }) {
    return nextPageClubsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilters clubFilter)? clubsFetched,
    TResult Function()? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (nextPageClubsFetched != null) {
      return nextPageClubsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubsFetched value) clubsFetched,
    required TResult Function(_NextPageClubsFetched value) nextPageClubsFetched,
  }) {
    return nextPageClubsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubsFetched value)? clubsFetched,
    TResult? Function(_NextPageClubsFetched value)? nextPageClubsFetched,
  }) {
    return nextPageClubsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubsFetched value)? clubsFetched,
    TResult Function(_NextPageClubsFetched value)? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (nextPageClubsFetched != null) {
      return nextPageClubsFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageClubsFetched implements ClubsOverviewEvent {
  const factory _NextPageClubsFetched() = _$_NextPageClubsFetched;
}

/// @nodoc
mixin _$ClubsOverviewState {
  CubitStatus get status => throw _privateConstructorUsedError;
  List<Club> get clubs => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  ClubFilters get clubFilter => throw _privateConstructorUsedError;
  Option<CommonClubFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubsOverviewStateCopyWith<ClubsOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubsOverviewStateCopyWith<$Res> {
  factory $ClubsOverviewStateCopyWith(
          ClubsOverviewState value, $Res Function(ClubsOverviewState) then) =
      _$ClubsOverviewStateCopyWithImpl<$Res, ClubsOverviewState>;
  @useResult
  $Res call(
      {CubitStatus status,
      List<Club> clubs,
      bool hasReachedMax,
      ClubFilters clubFilter,
      Option<CommonClubFailure> failure});

  $ClubFiltersCopyWith<$Res> get clubFilter;
}

/// @nodoc
class _$ClubsOverviewStateCopyWithImpl<$Res, $Val extends ClubsOverviewState>
    implements $ClubsOverviewStateCopyWith<$Res> {
  _$ClubsOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? clubs = null,
    Object? hasReachedMax = null,
    Object? clubFilter = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      clubs: null == clubs
          ? _value.clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as List<Club>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      clubFilter: null == clubFilter
          ? _value.clubFilter
          : clubFilter // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<CommonClubFailure>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubFiltersCopyWith<$Res> get clubFilter {
    return $ClubFiltersCopyWith<$Res>(_value.clubFilter, (value) {
      return _then(_value.copyWith(clubFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClubsOverviewStateCopyWith<$Res>
    implements $ClubsOverviewStateCopyWith<$Res> {
  factory _$$_ClubsOverviewStateCopyWith(_$_ClubsOverviewState value,
          $Res Function(_$_ClubsOverviewState) then) =
      __$$_ClubsOverviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus status,
      List<Club> clubs,
      bool hasReachedMax,
      ClubFilters clubFilter,
      Option<CommonClubFailure> failure});

  @override
  $ClubFiltersCopyWith<$Res> get clubFilter;
}

/// @nodoc
class __$$_ClubsOverviewStateCopyWithImpl<$Res>
    extends _$ClubsOverviewStateCopyWithImpl<$Res, _$_ClubsOverviewState>
    implements _$$_ClubsOverviewStateCopyWith<$Res> {
  __$$_ClubsOverviewStateCopyWithImpl(
      _$_ClubsOverviewState _value, $Res Function(_$_ClubsOverviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? clubs = null,
    Object? hasReachedMax = null,
    Object? clubFilter = null,
    Object? failure = null,
  }) {
    return _then(_$_ClubsOverviewState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      clubs: null == clubs
          ? _value._clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as List<Club>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      clubFilter: null == clubFilter
          ? _value.clubFilter
          : clubFilter // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<CommonClubFailure>,
    ));
  }
}

/// @nodoc

class _$_ClubsOverviewState extends _ClubsOverviewState {
  const _$_ClubsOverviewState(
      {required this.status,
      required final List<Club> clubs,
      required this.hasReachedMax,
      required this.clubFilter,
      required this.failure})
      : _clubs = clubs,
        super._();

  @override
  final CubitStatus status;
  final List<Club> _clubs;
  @override
  List<Club> get clubs {
    if (_clubs is EqualUnmodifiableListView) return _clubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clubs);
  }

  @override
  final bool hasReachedMax;
  @override
  final ClubFilters clubFilter;
  @override
  final Option<CommonClubFailure> failure;

  @override
  String toString() {
    return 'ClubsOverviewState(status: $status, clubs: $clubs, hasReachedMax: $hasReachedMax, clubFilter: $clubFilter, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubsOverviewState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._clubs, _clubs) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.clubFilter, clubFilter) ||
                other.clubFilter == clubFilter) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_clubs),
      hasReachedMax,
      clubFilter,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubsOverviewStateCopyWith<_$_ClubsOverviewState> get copyWith =>
      __$$_ClubsOverviewStateCopyWithImpl<_$_ClubsOverviewState>(
          this, _$identity);
}

abstract class _ClubsOverviewState extends ClubsOverviewState {
  const factory _ClubsOverviewState(
          {required final CubitStatus status,
          required final List<Club> clubs,
          required final bool hasReachedMax,
          required final ClubFilters clubFilter,
          required final Option<CommonClubFailure> failure}) =
      _$_ClubsOverviewState;
  const _ClubsOverviewState._() : super._();

  @override
  CubitStatus get status;
  @override
  List<Club> get clubs;
  @override
  bool get hasReachedMax;
  @override
  ClubFilters get clubFilter;
  @override
  Option<CommonClubFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ClubsOverviewStateCopyWith<_$_ClubsOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

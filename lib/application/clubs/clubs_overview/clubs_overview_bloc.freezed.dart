// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clubs_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClubsOverviewEventTearOff {
  const _$ClubsOverviewEventTearOff();

  OnClubPageOpened onClubPageOpened(ClubFilter clubFilter) {
    return OnClubPageOpened(
      clubFilter,
    );
  }

  OnFilterUpdated onFilterUpdated(ClubFilter clubFilter) {
    return OnFilterUpdated(
      clubFilter,
    );
  }

  ClubsReceived clubsReceived(
      Either<ClubFailure, List<ClubOverview>> failureOrClubs) {
    return ClubsReceived(
      failureOrClubs,
    );
  }
}

/// @nodoc
const $ClubsOverviewEvent = _$ClubsOverviewEventTearOff();

/// @nodoc
mixin _$ClubsOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilter clubFilter) onClubPageOpened,
    required TResult Function(ClubFilter clubFilter) onFilterUpdated,
    required TResult Function(
            Either<ClubFailure, List<ClubOverview>> failureOrClubs)
        clubsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ClubFilter clubFilter)? onClubPageOpened,
    TResult Function(ClubFilter clubFilter)? onFilterUpdated,
    TResult Function(Either<ClubFailure, List<ClubOverview>> failureOrClubs)?
        clubsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilter clubFilter)? onClubPageOpened,
    TResult Function(ClubFilter clubFilter)? onFilterUpdated,
    TResult Function(Either<ClubFailure, List<ClubOverview>> failureOrClubs)?
        clubsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnClubPageOpened value) onClubPageOpened,
    required TResult Function(OnFilterUpdated value) onFilterUpdated,
    required TResult Function(ClubsReceived value) clubsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(OnFilterUpdated value)? onFilterUpdated,
    TResult Function(ClubsReceived value)? clubsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(OnFilterUpdated value)? onFilterUpdated,
    TResult Function(ClubsReceived value)? clubsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubsOverviewEventCopyWith<$Res> {
  factory $ClubsOverviewEventCopyWith(
          ClubsOverviewEvent value, $Res Function(ClubsOverviewEvent) then) =
      _$ClubsOverviewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClubsOverviewEventCopyWithImpl<$Res>
    implements $ClubsOverviewEventCopyWith<$Res> {
  _$ClubsOverviewEventCopyWithImpl(this._value, this._then);

  final ClubsOverviewEvent _value;
  // ignore: unused_field
  final $Res Function(ClubsOverviewEvent) _then;
}

/// @nodoc
abstract class $OnClubPageOpenedCopyWith<$Res> {
  factory $OnClubPageOpenedCopyWith(
          OnClubPageOpened value, $Res Function(OnClubPageOpened) then) =
      _$OnClubPageOpenedCopyWithImpl<$Res>;
  $Res call({ClubFilter clubFilter});

  $ClubFilterCopyWith<$Res> get clubFilter;
}

/// @nodoc
class _$OnClubPageOpenedCopyWithImpl<$Res>
    extends _$ClubsOverviewEventCopyWithImpl<$Res>
    implements $OnClubPageOpenedCopyWith<$Res> {
  _$OnClubPageOpenedCopyWithImpl(
      OnClubPageOpened _value, $Res Function(OnClubPageOpened) _then)
      : super(_value, (v) => _then(v as OnClubPageOpened));

  @override
  OnClubPageOpened get _value => super._value as OnClubPageOpened;

  @override
  $Res call({
    Object? clubFilter = freezed,
  }) {
    return _then(OnClubPageOpened(
      clubFilter == freezed
          ? _value.clubFilter
          : clubFilter // ignore: cast_nullable_to_non_nullable
              as ClubFilter,
    ));
  }

  @override
  $ClubFilterCopyWith<$Res> get clubFilter {
    return $ClubFilterCopyWith<$Res>(_value.clubFilter, (value) {
      return _then(_value.copyWith(clubFilter: value));
    });
  }
}

/// @nodoc

class _$OnClubPageOpened implements OnClubPageOpened {
  const _$OnClubPageOpened(this.clubFilter);

  @override
  final ClubFilter clubFilter;

  @override
  String toString() {
    return 'ClubsOverviewEvent.onClubPageOpened(clubFilter: $clubFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnClubPageOpened &&
            const DeepCollectionEquality()
                .equals(other.clubFilter, clubFilter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clubFilter));

  @JsonKey(ignore: true)
  @override
  $OnClubPageOpenedCopyWith<OnClubPageOpened> get copyWith =>
      _$OnClubPageOpenedCopyWithImpl<OnClubPageOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilter clubFilter) onClubPageOpened,
    required TResult Function(ClubFilter clubFilter) onFilterUpdated,
    required TResult Function(
            Either<ClubFailure, List<ClubOverview>> failureOrClubs)
        clubsReceived,
  }) {
    return onClubPageOpened(clubFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ClubFilter clubFilter)? onClubPageOpened,
    TResult Function(ClubFilter clubFilter)? onFilterUpdated,
    TResult Function(Either<ClubFailure, List<ClubOverview>> failureOrClubs)?
        clubsReceived,
  }) {
    return onClubPageOpened?.call(clubFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilter clubFilter)? onClubPageOpened,
    TResult Function(ClubFilter clubFilter)? onFilterUpdated,
    TResult Function(Either<ClubFailure, List<ClubOverview>> failureOrClubs)?
        clubsReceived,
    required TResult orElse(),
  }) {
    if (onClubPageOpened != null) {
      return onClubPageOpened(clubFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnClubPageOpened value) onClubPageOpened,
    required TResult Function(OnFilterUpdated value) onFilterUpdated,
    required TResult Function(ClubsReceived value) clubsReceived,
  }) {
    return onClubPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(OnFilterUpdated value)? onFilterUpdated,
    TResult Function(ClubsReceived value)? clubsReceived,
  }) {
    return onClubPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(OnFilterUpdated value)? onFilterUpdated,
    TResult Function(ClubsReceived value)? clubsReceived,
    required TResult orElse(),
  }) {
    if (onClubPageOpened != null) {
      return onClubPageOpened(this);
    }
    return orElse();
  }
}

abstract class OnClubPageOpened implements ClubsOverviewEvent {
  const factory OnClubPageOpened(ClubFilter clubFilter) = _$OnClubPageOpened;

  ClubFilter get clubFilter;

  @JsonKey(ignore: true)
  $OnClubPageOpenedCopyWith<OnClubPageOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnFilterUpdatedCopyWith<$Res> {
  factory $OnFilterUpdatedCopyWith(
          OnFilterUpdated value, $Res Function(OnFilterUpdated) then) =
      _$OnFilterUpdatedCopyWithImpl<$Res>;

  $Res call({ClubFilter clubFilter});

  $ClubFilterCopyWith<$Res> get clubFilter;
}

/// @nodoc
class _$OnFilterUpdatedCopyWithImpl<$Res>
    extends _$ClubsOverviewEventCopyWithImpl<$Res>
    implements $OnFilterUpdatedCopyWith<$Res> {
  _$OnFilterUpdatedCopyWithImpl(
      OnFilterUpdated _value, $Res Function(OnFilterUpdated) _then)
      : super(_value, (v) => _then(v as OnFilterUpdated));

  @override
  OnFilterUpdated get _value => super._value as OnFilterUpdated;

  @override
  $Res call({
    Object? clubFilter = freezed,
  }) {
    return _then(OnFilterUpdated(
      clubFilter == freezed
          ? _value.clubFilter
          : clubFilter // ignore: cast_nullable_to_non_nullable
              as ClubFilter,
    ));
  }

  @override
  $ClubFilterCopyWith<$Res> get clubFilter {
    return $ClubFilterCopyWith<$Res>(_value.clubFilter, (value) {
      return _then(_value.copyWith(clubFilter: value));
    });
  }
}

/// @nodoc

class _$OnFilterUpdated implements OnFilterUpdated {
  const _$OnFilterUpdated(this.clubFilter);

  @override
  final ClubFilter clubFilter;

  @override
  String toString() {
    return 'ClubsOverviewEvent.onFilterUpdated(clubFilter: $clubFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnFilterUpdated &&
            const DeepCollectionEquality()
                .equals(other.clubFilter, clubFilter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clubFilter));

  @JsonKey(ignore: true)
  @override
  $OnFilterUpdatedCopyWith<OnFilterUpdated> get copyWith =>
      _$OnFilterUpdatedCopyWithImpl<OnFilterUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilter clubFilter) onClubPageOpened,
    required TResult Function(ClubFilter clubFilter) onFilterUpdated,
    required TResult Function(
            Either<ClubFailure, List<ClubOverview>> failureOrClubs)
        clubsReceived,
  }) {
    return onFilterUpdated(clubFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ClubFilter clubFilter)? onClubPageOpened,
    TResult Function(ClubFilter clubFilter)? onFilterUpdated,
    TResult Function(Either<ClubFailure, List<ClubOverview>> failureOrClubs)?
        clubsReceived,
  }) {
    return onFilterUpdated?.call(clubFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilter clubFilter)? onClubPageOpened,
    TResult Function(ClubFilter clubFilter)? onFilterUpdated,
    TResult Function(Either<ClubFailure, List<ClubOverview>> failureOrClubs)?
        clubsReceived,
    required TResult orElse(),
  }) {
    if (onFilterUpdated != null) {
      return onFilterUpdated(clubFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnClubPageOpened value) onClubPageOpened,
    required TResult Function(OnFilterUpdated value) onFilterUpdated,
    required TResult Function(ClubsReceived value) clubsReceived,
  }) {
    return onFilterUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(OnFilterUpdated value)? onFilterUpdated,
    TResult Function(ClubsReceived value)? clubsReceived,
  }) {
    return onFilterUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(OnFilterUpdated value)? onFilterUpdated,
    TResult Function(ClubsReceived value)? clubsReceived,
    required TResult orElse(),
  }) {
    if (onFilterUpdated != null) {
      return onFilterUpdated(this);
    }
    return orElse();
  }
}

abstract class OnFilterUpdated implements ClubsOverviewEvent {
  const factory OnFilterUpdated(ClubFilter clubFilter) = _$OnFilterUpdated;

  ClubFilter get clubFilter;

  @JsonKey(ignore: true)
  $OnFilterUpdatedCopyWith<OnFilterUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubsReceivedCopyWith<$Res> {
  factory $ClubsReceivedCopyWith(
          ClubsReceived value, $Res Function(ClubsReceived) then) =
      _$ClubsReceivedCopyWithImpl<$Res>;

  $Res call({Either<ClubFailure, List<ClubOverview>> failureOrClubs});
}

/// @nodoc
class _$ClubsReceivedCopyWithImpl<$Res>
    extends _$ClubsOverviewEventCopyWithImpl<$Res>
    implements $ClubsReceivedCopyWith<$Res> {
  _$ClubsReceivedCopyWithImpl(
      ClubsReceived _value, $Res Function(ClubsReceived) _then)
      : super(_value, (v) => _then(v as ClubsReceived));

  @override
  ClubsReceived get _value => super._value as ClubsReceived;

  @override
  $Res call({
    Object? failureOrClubs = freezed,
  }) {
    return _then(ClubsReceived(
      failureOrClubs == freezed
          ? _value.failureOrClubs
          : failureOrClubs // ignore: cast_nullable_to_non_nullable
              as Either<ClubFailure, List<ClubOverview>>,
    ));
  }
}

/// @nodoc

class _$ClubsReceived implements ClubsReceived {
  const _$ClubsReceived(this.failureOrClubs);

  @override
  final Either<ClubFailure, List<ClubOverview>> failureOrClubs;

  @override
  String toString() {
    return 'ClubsOverviewEvent.clubsReceived(failureOrClubs: $failureOrClubs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClubsReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrClubs, failureOrClubs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrClubs));

  @JsonKey(ignore: true)
  @override
  $ClubsReceivedCopyWith<ClubsReceived> get copyWith =>
      _$ClubsReceivedCopyWithImpl<ClubsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubFilter clubFilter) onClubPageOpened,
    required TResult Function(ClubFilter clubFilter) onFilterUpdated,
    required TResult Function(
            Either<ClubFailure, List<ClubOverview>> failureOrClubs)
        clubsReceived,
  }) {
    return clubsReceived(failureOrClubs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ClubFilter clubFilter)? onClubPageOpened,
    TResult Function(ClubFilter clubFilter)? onFilterUpdated,
    TResult Function(Either<ClubFailure, List<ClubOverview>> failureOrClubs)?
        clubsReceived,
  }) {
    return clubsReceived?.call(failureOrClubs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubFilter clubFilter)? onClubPageOpened,
    TResult Function(ClubFilter clubFilter)? onFilterUpdated,
    TResult Function(Either<ClubFailure, List<ClubOverview>> failureOrClubs)?
        clubsReceived,
    required TResult orElse(),
  }) {
    if (clubsReceived != null) {
      return clubsReceived(failureOrClubs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnClubPageOpened value) onClubPageOpened,
    required TResult Function(OnFilterUpdated value) onFilterUpdated,
    required TResult Function(ClubsReceived value) clubsReceived,
  }) {
    return clubsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(OnFilterUpdated value)? onFilterUpdated,
    TResult Function(ClubsReceived value)? clubsReceived,
  }) {
    return clubsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(OnFilterUpdated value)? onFilterUpdated,
    TResult Function(ClubsReceived value)? clubsReceived,
    required TResult orElse(),
  }) {
    if (clubsReceived != null) {
      return clubsReceived(this);
    }
    return orElse();
  }
}

abstract class ClubsReceived implements ClubsOverviewEvent {
  const factory ClubsReceived(
      Either<ClubFailure, List<ClubOverview>> failureOrClubs) = _$ClubsReceived;

  Either<ClubFailure, List<ClubOverview>> get failureOrClubs;
  @JsonKey(ignore: true)
  $ClubsReceivedCopyWith<ClubsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClubsOverviewStateTearOff {
  const _$ClubsOverviewStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<ClubOverview> clubs) {
    return _LoadSuccess(
      clubs,
    );
  }

  _LoadFailure loadFailure(ClubFailure clubFailure) {
    return _LoadFailure(
      clubFailure,
    );
  }
}

/// @nodoc
const $ClubsOverviewState = _$ClubsOverviewStateTearOff();

/// @nodoc
mixin _$ClubsOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ClubOverview> clubs) loadSuccess,
    required TResult Function(ClubFailure clubFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ClubOverview> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ClubOverview> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubsOverviewStateCopyWith<$Res> {
  factory $ClubsOverviewStateCopyWith(
          ClubsOverviewState value, $Res Function(ClubsOverviewState) then) =
      _$ClubsOverviewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClubsOverviewStateCopyWithImpl<$Res>
    implements $ClubsOverviewStateCopyWith<$Res> {
  _$ClubsOverviewStateCopyWithImpl(this._value, this._then);

  final ClubsOverviewState _value;
  // ignore: unused_field
  final $Res Function(ClubsOverviewState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ClubsOverviewStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ClubsOverviewState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ClubOverview> clubs) loadSuccess,
    required TResult Function(ClubFailure clubFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ClubOverview> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ClubOverview> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ClubsOverviewState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ClubsOverviewStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ClubsOverviewState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ClubOverview> clubs) loadSuccess,
    required TResult Function(ClubFailure clubFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ClubOverview> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ClubOverview> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ClubsOverviewState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<ClubOverview> clubs});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ClubsOverviewStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? clubs = freezed,
  }) {
    return _then(_LoadSuccess(
      clubs == freezed
          ? _value.clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as List<ClubOverview>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.clubs);

  @override
  final List<ClubOverview> clubs;

  @override
  String toString() {
    return 'ClubsOverviewState.loadSuccess(clubs: $clubs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.clubs, clubs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clubs));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ClubOverview> clubs) loadSuccess,
    required TResult Function(ClubFailure clubFailure) loadFailure,
  }) {
    return loadSuccess(clubs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ClubOverview> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
  }) {
    return loadSuccess?.call(clubs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ClubOverview> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(clubs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ClubsOverviewState {
  const factory _LoadSuccess(List<ClubOverview> clubs) = _$_LoadSuccess;

  List<ClubOverview> get clubs;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ClubFailure clubFailure});

  $ClubFailureCopyWith<$Res> get clubFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ClubsOverviewStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? clubFailure = freezed,
  }) {
    return _then(_LoadFailure(
      clubFailure == freezed
          ? _value.clubFailure
          : clubFailure // ignore: cast_nullable_to_non_nullable
              as ClubFailure,
    ));
  }

  @override
  $ClubFailureCopyWith<$Res> get clubFailure {
    return $ClubFailureCopyWith<$Res>(_value.clubFailure, (value) {
      return _then(_value.copyWith(clubFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.clubFailure);

  @override
  final ClubFailure clubFailure;

  @override
  String toString() {
    return 'ClubsOverviewState.loadFailure(clubFailure: $clubFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.clubFailure, clubFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(clubFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ClubOverview> clubs) loadSuccess,
    required TResult Function(ClubFailure clubFailure) loadFailure,
  }) {
    return loadFailure(clubFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ClubOverview> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
  }) {
    return loadFailure?.call(clubFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ClubOverview> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(clubFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ClubsOverviewState {
  const factory _LoadFailure(ClubFailure clubFailure) = _$_LoadFailure;

  ClubFailure get clubFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

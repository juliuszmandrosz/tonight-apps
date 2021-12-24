// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clubs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClubsEventTearOff {
  const _$ClubsEventTearOff();

  OnClubPageOpened onClubPageOpened() {
    return const OnClubPageOpened();
  }

  ClubsReceived clubsReceived(Either<ClubFailure, List<Club>> failureOrClubs) {
    return ClubsReceived(
      failureOrClubs,
    );
  }
}

/// @nodoc
const $ClubsEvent = _$ClubsEventTearOff();

/// @nodoc
mixin _$ClubsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onClubPageOpened,
    required TResult Function(Either<ClubFailure, List<Club>> failureOrClubs)
        clubsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onClubPageOpened,
    TResult Function(Either<ClubFailure, List<Club>> failureOrClubs)?
        clubsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onClubPageOpened,
    TResult Function(Either<ClubFailure, List<Club>> failureOrClubs)?
        clubsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnClubPageOpened value) onClubPageOpened,
    required TResult Function(ClubsReceived value) clubsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(ClubsReceived value)? clubsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(ClubsReceived value)? clubsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubsEventCopyWith<$Res> {
  factory $ClubsEventCopyWith(
          ClubsEvent value, $Res Function(ClubsEvent) then) =
      _$ClubsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClubsEventCopyWithImpl<$Res> implements $ClubsEventCopyWith<$Res> {
  _$ClubsEventCopyWithImpl(this._value, this._then);

  final ClubsEvent _value;
  // ignore: unused_field
  final $Res Function(ClubsEvent) _then;
}

/// @nodoc
abstract class $OnClubPageOpenedCopyWith<$Res> {
  factory $OnClubPageOpenedCopyWith(
          OnClubPageOpened value, $Res Function(OnClubPageOpened) then) =
      _$OnClubPageOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnClubPageOpenedCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res>
    implements $OnClubPageOpenedCopyWith<$Res> {
  _$OnClubPageOpenedCopyWithImpl(
      OnClubPageOpened _value, $Res Function(OnClubPageOpened) _then)
      : super(_value, (v) => _then(v as OnClubPageOpened));

  @override
  OnClubPageOpened get _value => super._value as OnClubPageOpened;
}

/// @nodoc

class _$OnClubPageOpened implements OnClubPageOpened {
  const _$OnClubPageOpened();

  @override
  String toString() {
    return 'ClubsEvent.onClubPageOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnClubPageOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onClubPageOpened,
    required TResult Function(Either<ClubFailure, List<Club>> failureOrClubs)
        clubsReceived,
  }) {
    return onClubPageOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onClubPageOpened,
    TResult Function(Either<ClubFailure, List<Club>> failureOrClubs)?
        clubsReceived,
  }) {
    return onClubPageOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onClubPageOpened,
    TResult Function(Either<ClubFailure, List<Club>> failureOrClubs)?
        clubsReceived,
    required TResult orElse(),
  }) {
    if (onClubPageOpened != null) {
      return onClubPageOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnClubPageOpened value) onClubPageOpened,
    required TResult Function(ClubsReceived value) clubsReceived,
  }) {
    return onClubPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(ClubsReceived value)? clubsReceived,
  }) {
    return onClubPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(ClubsReceived value)? clubsReceived,
    required TResult orElse(),
  }) {
    if (onClubPageOpened != null) {
      return onClubPageOpened(this);
    }
    return orElse();
  }
}

abstract class OnClubPageOpened implements ClubsEvent {
  const factory OnClubPageOpened() = _$OnClubPageOpened;
}

/// @nodoc
abstract class $ClubsReceivedCopyWith<$Res> {
  factory $ClubsReceivedCopyWith(
          ClubsReceived value, $Res Function(ClubsReceived) then) =
      _$ClubsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ClubFailure, List<Club>> failureOrClubs});
}

/// @nodoc
class _$ClubsReceivedCopyWithImpl<$Res> extends _$ClubsEventCopyWithImpl<$Res>
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
              as Either<ClubFailure, List<Club>>,
    ));
  }
}

/// @nodoc

class _$ClubsReceived implements ClubsReceived {
  const _$ClubsReceived(this.failureOrClubs);

  @override
  final Either<ClubFailure, List<Club>> failureOrClubs;

  @override
  String toString() {
    return 'ClubsEvent.clubsReceived(failureOrClubs: $failureOrClubs)';
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
    required TResult Function() onClubPageOpened,
    required TResult Function(Either<ClubFailure, List<Club>> failureOrClubs)
        clubsReceived,
  }) {
    return clubsReceived(failureOrClubs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onClubPageOpened,
    TResult Function(Either<ClubFailure, List<Club>> failureOrClubs)?
        clubsReceived,
  }) {
    return clubsReceived?.call(failureOrClubs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onClubPageOpened,
    TResult Function(Either<ClubFailure, List<Club>> failureOrClubs)?
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
    required TResult Function(ClubsReceived value) clubsReceived,
  }) {
    return clubsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(ClubsReceived value)? clubsReceived,
  }) {
    return clubsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnClubPageOpened value)? onClubPageOpened,
    TResult Function(ClubsReceived value)? clubsReceived,
    required TResult orElse(),
  }) {
    if (clubsReceived != null) {
      return clubsReceived(this);
    }
    return orElse();
  }
}

abstract class ClubsReceived implements ClubsEvent {
  const factory ClubsReceived(Either<ClubFailure, List<Club>> failureOrClubs) =
      _$ClubsReceived;

  Either<ClubFailure, List<Club>> get failureOrClubs;
  @JsonKey(ignore: true)
  $ClubsReceivedCopyWith<ClubsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClubsStateTearOff {
  const _$ClubsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Club> clubs) {
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
const $ClubsState = _$ClubsStateTearOff();

/// @nodoc
mixin _$ClubsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Club> clubs) loadSuccess,
    required TResult Function(ClubFailure clubFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Club> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Club> clubs)? loadSuccess,
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
abstract class $ClubsStateCopyWith<$Res> {
  factory $ClubsStateCopyWith(
          ClubsState value, $Res Function(ClubsState) then) =
      _$ClubsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClubsStateCopyWithImpl<$Res> implements $ClubsStateCopyWith<$Res> {
  _$ClubsStateCopyWithImpl(this._value, this._then);

  final ClubsState _value;
  // ignore: unused_field
  final $Res Function(ClubsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ClubsStateCopyWithImpl<$Res>
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
    return 'ClubsState.initial()';
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
    required TResult Function(List<Club> clubs) loadSuccess,
    required TResult Function(ClubFailure clubFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Club> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Club> clubs)? loadSuccess,
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

abstract class _Initial implements ClubsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$ClubsStateCopyWithImpl<$Res>
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
    return 'ClubsState.loadInProgress()';
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
    required TResult Function(List<Club> clubs) loadSuccess,
    required TResult Function(ClubFailure clubFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Club> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Club> clubs)? loadSuccess,
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

abstract class _LoadInProgress implements ClubsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Club> clubs});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$ClubsStateCopyWithImpl<$Res>
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
              as List<Club>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.clubs);

  @override
  final List<Club> clubs;

  @override
  String toString() {
    return 'ClubsState.loadSuccess(clubs: $clubs)';
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
    required TResult Function(List<Club> clubs) loadSuccess,
    required TResult Function(ClubFailure clubFailure) loadFailure,
  }) {
    return loadSuccess(clubs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Club> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
  }) {
    return loadSuccess?.call(clubs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Club> clubs)? loadSuccess,
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

abstract class _LoadSuccess implements ClubsState {
  const factory _LoadSuccess(List<Club> clubs) = _$_LoadSuccess;

  List<Club> get clubs;
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
class __$LoadFailureCopyWithImpl<$Res> extends _$ClubsStateCopyWithImpl<$Res>
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
    return 'ClubsState.loadFailure(clubFailure: $clubFailure)';
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
    required TResult Function(List<Club> clubs) loadSuccess,
    required TResult Function(ClubFailure clubFailure) loadFailure,
  }) {
    return loadFailure(clubFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Club> clubs)? loadSuccess,
    TResult Function(ClubFailure clubFailure)? loadFailure,
  }) {
    return loadFailure?.call(clubFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Club> clubs)? loadSuccess,
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

abstract class _LoadFailure implements ClubsState {
  const factory _LoadFailure(ClubFailure clubFailure) = _$_LoadFailure;

  ClubFailure get clubFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

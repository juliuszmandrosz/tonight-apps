// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clubs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) clubsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() clubsRefreshed,
    required TResult Function() nextPageClubsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? clubsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? clubsRefreshed,
    TResult? Function()? nextPageClubsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? clubsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? clubsRefreshed,
    TResult Function()? nextPageClubsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubsFetched value) clubsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_ClubsRefreshed value) clubsRefreshed,
    required TResult Function(_NextPageClubsFetched value) nextPageClubsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubsFetched value)? clubsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult? Function(_NextPageClubsFetched value)? nextPageClubsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubsFetched value)? clubsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult Function(_NextPageClubsFetched value)? nextPageClubsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubsEventCopyWith<$Res> {
  factory $ClubsEventCopyWith(
          ClubsEvent value, $Res Function(ClubsEvent) then) =
      _$ClubsEventCopyWithImpl<$Res, ClubsEvent>;
}

/// @nodoc
class _$ClubsEventCopyWithImpl<$Res, $Val extends ClubsEvent>
    implements $ClubsEventCopyWith<$Res> {
  _$ClubsEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<LatLng> userLocation});
}

/// @nodoc
class __$$_ClubsFetchedCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res, _$_ClubsFetched>
    implements _$$_ClubsFetchedCopyWith<$Res> {
  __$$_ClubsFetchedCopyWithImpl(
      _$_ClubsFetched _value, $Res Function(_$_ClubsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
  }) {
    return _then(_$_ClubsFetched(
      null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
    ));
  }
}

/// @nodoc

class _$_ClubsFetched implements _ClubsFetched {
  const _$_ClubsFetched(this.userLocation);

  @override
  final Option<LatLng> userLocation;

  @override
  String toString() {
    return 'ClubsEvent.clubsFetched(userLocation: $userLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubsFetched &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubsFetchedCopyWith<_$_ClubsFetched> get copyWith =>
      __$$_ClubsFetchedCopyWithImpl<_$_ClubsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) clubsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() clubsRefreshed,
    required TResult Function() nextPageClubsFetched,
  }) {
    return clubsFetched(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? clubsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? clubsRefreshed,
    TResult? Function()? nextPageClubsFetched,
  }) {
    return clubsFetched?.call(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? clubsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? clubsRefreshed,
    TResult Function()? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (clubsFetched != null) {
      return clubsFetched(userLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubsFetched value) clubsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_ClubsRefreshed value) clubsRefreshed,
    required TResult Function(_NextPageClubsFetched value) nextPageClubsFetched,
  }) {
    return clubsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubsFetched value)? clubsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult? Function(_NextPageClubsFetched value)? nextPageClubsFetched,
  }) {
    return clubsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubsFetched value)? clubsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult Function(_NextPageClubsFetched value)? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (clubsFetched != null) {
      return clubsFetched(this);
    }
    return orElse();
  }
}

abstract class _ClubsFetched implements ClubsEvent {
  const factory _ClubsFetched(final Option<LatLng> userLocation) =
      _$_ClubsFetched;

  Option<LatLng> get userLocation;
  @JsonKey(ignore: true)
  _$$_ClubsFetchedCopyWith<_$_ClubsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhraseFilterAppliedCopyWith<$Res> {
  factory _$$_PhraseFilterAppliedCopyWith(_$_PhraseFilterApplied value,
          $Res Function(_$_PhraseFilterApplied) then) =
      __$$_PhraseFilterAppliedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phrase});
}

/// @nodoc
class __$$_PhraseFilterAppliedCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res, _$_PhraseFilterApplied>
    implements _$$_PhraseFilterAppliedCopyWith<$Res> {
  __$$_PhraseFilterAppliedCopyWithImpl(_$_PhraseFilterApplied _value,
      $Res Function(_$_PhraseFilterApplied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
  }) {
    return _then(_$_PhraseFilterApplied(
      null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhraseFilterApplied implements _PhraseFilterApplied {
  const _$_PhraseFilterApplied(this.phrase);

  @override
  final String phrase;

  @override
  String toString() {
    return 'ClubsEvent.phraseFilterApplied(phrase: $phrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhraseFilterApplied &&
            (identical(other.phrase, phrase) || other.phrase == phrase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phrase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhraseFilterAppliedCopyWith<_$_PhraseFilterApplied> get copyWith =>
      __$$_PhraseFilterAppliedCopyWithImpl<_$_PhraseFilterApplied>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) clubsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() clubsRefreshed,
    required TResult Function() nextPageClubsFetched,
  }) {
    return phraseFilterApplied(phrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? clubsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? clubsRefreshed,
    TResult? Function()? nextPageClubsFetched,
  }) {
    return phraseFilterApplied?.call(phrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? clubsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? clubsRefreshed,
    TResult Function()? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (phraseFilterApplied != null) {
      return phraseFilterApplied(phrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubsFetched value) clubsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_ClubsRefreshed value) clubsRefreshed,
    required TResult Function(_NextPageClubsFetched value) nextPageClubsFetched,
  }) {
    return phraseFilterApplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubsFetched value)? clubsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult? Function(_NextPageClubsFetched value)? nextPageClubsFetched,
  }) {
    return phraseFilterApplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubsFetched value)? clubsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult Function(_NextPageClubsFetched value)? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (phraseFilterApplied != null) {
      return phraseFilterApplied(this);
    }
    return orElse();
  }
}

abstract class _PhraseFilterApplied implements ClubsEvent {
  const factory _PhraseFilterApplied(final String phrase) =
      _$_PhraseFilterApplied;

  String get phrase;
  @JsonKey(ignore: true)
  _$$_PhraseFilterAppliedCopyWith<_$_PhraseFilterApplied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CityFilterAppliedCopyWith<$Res> {
  factory _$$_CityFilterAppliedCopyWith(_$_CityFilterApplied value,
          $Res Function(_$_CityFilterApplied) then) =
      __$$_CityFilterAppliedCopyWithImpl<$Res>;
  @useResult
  $Res call({CityFilter filter});
}

/// @nodoc
class __$$_CityFilterAppliedCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res, _$_CityFilterApplied>
    implements _$$_CityFilterAppliedCopyWith<$Res> {
  __$$_CityFilterAppliedCopyWithImpl(
      _$_CityFilterApplied _value, $Res Function(_$_CityFilterApplied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_CityFilterApplied(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CityFilter,
    ));
  }
}

/// @nodoc

class _$_CityFilterApplied implements _CityFilterApplied {
  const _$_CityFilterApplied(this.filter);

  @override
  final CityFilter filter;

  @override
  String toString() {
    return 'ClubsEvent.cityFilterApplied(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityFilterApplied &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityFilterAppliedCopyWith<_$_CityFilterApplied> get copyWith =>
      __$$_CityFilterAppliedCopyWithImpl<_$_CityFilterApplied>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) clubsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() clubsRefreshed,
    required TResult Function() nextPageClubsFetched,
  }) {
    return cityFilterApplied(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? clubsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? clubsRefreshed,
    TResult? Function()? nextPageClubsFetched,
  }) {
    return cityFilterApplied?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? clubsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? clubsRefreshed,
    TResult Function()? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (cityFilterApplied != null) {
      return cityFilterApplied(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubsFetched value) clubsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_ClubsRefreshed value) clubsRefreshed,
    required TResult Function(_NextPageClubsFetched value) nextPageClubsFetched,
  }) {
    return cityFilterApplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubsFetched value)? clubsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult? Function(_NextPageClubsFetched value)? nextPageClubsFetched,
  }) {
    return cityFilterApplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubsFetched value)? clubsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult Function(_NextPageClubsFetched value)? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (cityFilterApplied != null) {
      return cityFilterApplied(this);
    }
    return orElse();
  }
}

abstract class _CityFilterApplied implements ClubsEvent {
  const factory _CityFilterApplied(final CityFilter filter) =
      _$_CityFilterApplied;

  CityFilter get filter;
  @JsonKey(ignore: true)
  _$$_CityFilterAppliedCopyWith<_$_CityFilterApplied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClubsRefreshedCopyWith<$Res> {
  factory _$$_ClubsRefreshedCopyWith(
          _$_ClubsRefreshed value, $Res Function(_$_ClubsRefreshed) then) =
      __$$_ClubsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClubsRefreshedCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res, _$_ClubsRefreshed>
    implements _$$_ClubsRefreshedCopyWith<$Res> {
  __$$_ClubsRefreshedCopyWithImpl(
      _$_ClubsRefreshed _value, $Res Function(_$_ClubsRefreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClubsRefreshed implements _ClubsRefreshed {
  const _$_ClubsRefreshed();

  @override
  String toString() {
    return 'ClubsEvent.clubsRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClubsRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) clubsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() clubsRefreshed,
    required TResult Function() nextPageClubsFetched,
  }) {
    return clubsRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? clubsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? clubsRefreshed,
    TResult? Function()? nextPageClubsFetched,
  }) {
    return clubsRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? clubsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? clubsRefreshed,
    TResult Function()? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (clubsRefreshed != null) {
      return clubsRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubsFetched value) clubsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_ClubsRefreshed value) clubsRefreshed,
    required TResult Function(_NextPageClubsFetched value) nextPageClubsFetched,
  }) {
    return clubsRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubsFetched value)? clubsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult? Function(_NextPageClubsFetched value)? nextPageClubsFetched,
  }) {
    return clubsRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubsFetched value)? clubsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult Function(_NextPageClubsFetched value)? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (clubsRefreshed != null) {
      return clubsRefreshed(this);
    }
    return orElse();
  }
}

abstract class _ClubsRefreshed implements ClubsEvent {
  const factory _ClubsRefreshed() = _$_ClubsRefreshed;
}

/// @nodoc
abstract class _$$_NextPageClubsFetchedCopyWith<$Res> {
  factory _$$_NextPageClubsFetchedCopyWith(_$_NextPageClubsFetched value,
          $Res Function(_$_NextPageClubsFetched) then) =
      __$$_NextPageClubsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageClubsFetchedCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res, _$_NextPageClubsFetched>
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
    return 'ClubsEvent.nextPageClubsFetched()';
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
    required TResult Function(Option<LatLng> userLocation) clubsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() clubsRefreshed,
    required TResult Function() nextPageClubsFetched,
  }) {
    return nextPageClubsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? clubsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? clubsRefreshed,
    TResult? Function()? nextPageClubsFetched,
  }) {
    return nextPageClubsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? clubsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? clubsRefreshed,
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
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_ClubsRefreshed value) clubsRefreshed,
    required TResult Function(_NextPageClubsFetched value) nextPageClubsFetched,
  }) {
    return nextPageClubsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubsFetched value)? clubsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult? Function(_NextPageClubsFetched value)? nextPageClubsFetched,
  }) {
    return nextPageClubsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubsFetched value)? clubsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_ClubsRefreshed value)? clubsRefreshed,
    TResult Function(_NextPageClubsFetched value)? nextPageClubsFetched,
    required TResult orElse(),
  }) {
    if (nextPageClubsFetched != null) {
      return nextPageClubsFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageClubsFetched implements ClubsEvent {
  const factory _NextPageClubsFetched() = _$_NextPageClubsFetched;
}

/// @nodoc
mixin _$ClubsState {
  CubitStatus get getClubsStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  List<Club> get clubs => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  ClubFilters get clubFilters => throw _privateConstructorUsedError;
  Option<CommonClubFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubsStateCopyWith<ClubsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubsStateCopyWith<$Res> {
  factory $ClubsStateCopyWith(
          ClubsState value, $Res Function(ClubsState) then) =
      _$ClubsStateCopyWithImpl<$Res, ClubsState>;
  @useResult
  $Res call(
      {CubitStatus getClubsStatus,
      CubitStatus nextPageStatus,
      Option<String> errorMessage,
      List<Club> clubs,
      bool hasReachedMax,
      ClubFilters clubFilters,
      Option<CommonClubFailure> failure});

  $ClubFiltersCopyWith<$Res> get clubFilters;
}

/// @nodoc
class _$ClubsStateCopyWithImpl<$Res, $Val extends ClubsState>
    implements $ClubsStateCopyWith<$Res> {
  _$ClubsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getClubsStatus = null,
    Object? nextPageStatus = null,
    Object? errorMessage = null,
    Object? clubs = null,
    Object? hasReachedMax = null,
    Object? clubFilters = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      getClubsStatus: null == getClubsStatus
          ? _value.getClubsStatus
          : getClubsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      clubs: null == clubs
          ? _value.clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as List<Club>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      clubFilters: null == clubFilters
          ? _value.clubFilters
          : clubFilters // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<CommonClubFailure>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubFiltersCopyWith<$Res> get clubFilters {
    return $ClubFiltersCopyWith<$Res>(_value.clubFilters, (value) {
      return _then(_value.copyWith(clubFilters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClubsStateCopyWith<$Res>
    implements $ClubsStateCopyWith<$Res> {
  factory _$$_ClubsStateCopyWith(
          _$_ClubsState value, $Res Function(_$_ClubsState) then) =
      __$$_ClubsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getClubsStatus,
      CubitStatus nextPageStatus,
      Option<String> errorMessage,
      List<Club> clubs,
      bool hasReachedMax,
      ClubFilters clubFilters,
      Option<CommonClubFailure> failure});

  @override
  $ClubFiltersCopyWith<$Res> get clubFilters;
}

/// @nodoc
class __$$_ClubsStateCopyWithImpl<$Res>
    extends _$ClubsStateCopyWithImpl<$Res, _$_ClubsState>
    implements _$$_ClubsStateCopyWith<$Res> {
  __$$_ClubsStateCopyWithImpl(
      _$_ClubsState _value, $Res Function(_$_ClubsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getClubsStatus = null,
    Object? nextPageStatus = null,
    Object? errorMessage = null,
    Object? clubs = null,
    Object? hasReachedMax = null,
    Object? clubFilters = null,
    Object? failure = null,
  }) {
    return _then(_$_ClubsState(
      getClubsStatus: null == getClubsStatus
          ? _value.getClubsStatus
          : getClubsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      clubs: null == clubs
          ? _value._clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as List<Club>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      clubFilters: null == clubFilters
          ? _value.clubFilters
          : clubFilters // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<CommonClubFailure>,
    ));
  }
}

/// @nodoc

class _$_ClubsState implements _ClubsState {
  const _$_ClubsState(
      {required this.getClubsStatus,
      required this.nextPageStatus,
      required this.errorMessage,
      required final List<Club> clubs,
      required this.hasReachedMax,
      required this.clubFilters,
      required this.failure})
      : _clubs = clubs;

  @override
  final CubitStatus getClubsStatus;
  @override
  final CubitStatus nextPageStatus;
  @override
  final Option<String> errorMessage;
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
  final ClubFilters clubFilters;
  @override
  final Option<CommonClubFailure> failure;

  @override
  String toString() {
    return 'ClubsState(getClubsStatus: $getClubsStatus, nextPageStatus: $nextPageStatus, errorMessage: $errorMessage, clubs: $clubs, hasReachedMax: $hasReachedMax, clubFilters: $clubFilters, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubsState &&
            (identical(other.getClubsStatus, getClubsStatus) ||
                other.getClubsStatus == getClubsStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._clubs, _clubs) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.clubFilters, clubFilters) ||
                other.clubFilters == clubFilters) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getClubsStatus,
      nextPageStatus,
      errorMessage,
      const DeepCollectionEquality().hash(_clubs),
      hasReachedMax,
      clubFilters,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubsStateCopyWith<_$_ClubsState> get copyWith =>
      __$$_ClubsStateCopyWithImpl<_$_ClubsState>(this, _$identity);
}

abstract class _ClubsState implements ClubsState {
  const factory _ClubsState(
      {required final CubitStatus getClubsStatus,
      required final CubitStatus nextPageStatus,
      required final Option<String> errorMessage,
      required final List<Club> clubs,
      required final bool hasReachedMax,
      required final ClubFilters clubFilters,
      required final Option<CommonClubFailure> failure}) = _$_ClubsState;

  @override
  CubitStatus get getClubsStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  Option<String> get errorMessage;
  @override
  List<Club> get clubs;
  @override
  bool get hasReachedMax;
  @override
  ClubFilters get clubFilters;
  @override
  Option<CommonClubFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ClubsStateCopyWith<_$_ClubsState> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$ClubsFetchedImplCopyWith<$Res> {
  factory _$$ClubsFetchedImplCopyWith(
          _$ClubsFetchedImpl value, $Res Function(_$ClubsFetchedImpl) then) =
      __$$ClubsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<LatLng> userLocation});
}

/// @nodoc
class __$$ClubsFetchedImplCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res, _$ClubsFetchedImpl>
    implements _$$ClubsFetchedImplCopyWith<$Res> {
  __$$ClubsFetchedImplCopyWithImpl(
      _$ClubsFetchedImpl _value, $Res Function(_$ClubsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
  }) {
    return _then(_$ClubsFetchedImpl(
      null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
    ));
  }
}

/// @nodoc

class _$ClubsFetchedImpl implements _ClubsFetched {
  const _$ClubsFetchedImpl(this.userLocation);

  @override
  final Option<LatLng> userLocation;

  @override
  String toString() {
    return 'ClubsEvent.clubsFetched(userLocation: $userLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubsFetchedImpl &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubsFetchedImplCopyWith<_$ClubsFetchedImpl> get copyWith =>
      __$$ClubsFetchedImplCopyWithImpl<_$ClubsFetchedImpl>(this, _$identity);

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
      _$ClubsFetchedImpl;

  Option<LatLng> get userLocation;
  @JsonKey(ignore: true)
  _$$ClubsFetchedImplCopyWith<_$ClubsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhraseFilterAppliedImplCopyWith<$Res> {
  factory _$$PhraseFilterAppliedImplCopyWith(_$PhraseFilterAppliedImpl value,
          $Res Function(_$PhraseFilterAppliedImpl) then) =
      __$$PhraseFilterAppliedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phrase});
}

/// @nodoc
class __$$PhraseFilterAppliedImplCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res, _$PhraseFilterAppliedImpl>
    implements _$$PhraseFilterAppliedImplCopyWith<$Res> {
  __$$PhraseFilterAppliedImplCopyWithImpl(_$PhraseFilterAppliedImpl _value,
      $Res Function(_$PhraseFilterAppliedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
  }) {
    return _then(_$PhraseFilterAppliedImpl(
      null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhraseFilterAppliedImpl implements _PhraseFilterApplied {
  const _$PhraseFilterAppliedImpl(this.phrase);

  @override
  final String phrase;

  @override
  String toString() {
    return 'ClubsEvent.phraseFilterApplied(phrase: $phrase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhraseFilterAppliedImpl &&
            (identical(other.phrase, phrase) || other.phrase == phrase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phrase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhraseFilterAppliedImplCopyWith<_$PhraseFilterAppliedImpl> get copyWith =>
      __$$PhraseFilterAppliedImplCopyWithImpl<_$PhraseFilterAppliedImpl>(
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
      _$PhraseFilterAppliedImpl;

  String get phrase;
  @JsonKey(ignore: true)
  _$$PhraseFilterAppliedImplCopyWith<_$PhraseFilterAppliedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityFilterAppliedImplCopyWith<$Res> {
  factory _$$CityFilterAppliedImplCopyWith(_$CityFilterAppliedImpl value,
          $Res Function(_$CityFilterAppliedImpl) then) =
      __$$CityFilterAppliedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CityFilter filter});
}

/// @nodoc
class __$$CityFilterAppliedImplCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res, _$CityFilterAppliedImpl>
    implements _$$CityFilterAppliedImplCopyWith<$Res> {
  __$$CityFilterAppliedImplCopyWithImpl(_$CityFilterAppliedImpl _value,
      $Res Function(_$CityFilterAppliedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$CityFilterAppliedImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CityFilter,
    ));
  }
}

/// @nodoc

class _$CityFilterAppliedImpl implements _CityFilterApplied {
  const _$CityFilterAppliedImpl(this.filter);

  @override
  final CityFilter filter;

  @override
  String toString() {
    return 'ClubsEvent.cityFilterApplied(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityFilterAppliedImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityFilterAppliedImplCopyWith<_$CityFilterAppliedImpl> get copyWith =>
      __$$CityFilterAppliedImplCopyWithImpl<_$CityFilterAppliedImpl>(
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
      _$CityFilterAppliedImpl;

  CityFilter get filter;
  @JsonKey(ignore: true)
  _$$CityFilterAppliedImplCopyWith<_$CityFilterAppliedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClubsRefreshedImplCopyWith<$Res> {
  factory _$$ClubsRefreshedImplCopyWith(_$ClubsRefreshedImpl value,
          $Res Function(_$ClubsRefreshedImpl) then) =
      __$$ClubsRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClubsRefreshedImplCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res, _$ClubsRefreshedImpl>
    implements _$$ClubsRefreshedImplCopyWith<$Res> {
  __$$ClubsRefreshedImplCopyWithImpl(
      _$ClubsRefreshedImpl _value, $Res Function(_$ClubsRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClubsRefreshedImpl implements _ClubsRefreshed {
  const _$ClubsRefreshedImpl();

  @override
  String toString() {
    return 'ClubsEvent.clubsRefreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClubsRefreshedImpl);
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
  const factory _ClubsRefreshed() = _$ClubsRefreshedImpl;
}

/// @nodoc
abstract class _$$NextPageClubsFetchedImplCopyWith<$Res> {
  factory _$$NextPageClubsFetchedImplCopyWith(_$NextPageClubsFetchedImpl value,
          $Res Function(_$NextPageClubsFetchedImpl) then) =
      __$$NextPageClubsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageClubsFetchedImplCopyWithImpl<$Res>
    extends _$ClubsEventCopyWithImpl<$Res, _$NextPageClubsFetchedImpl>
    implements _$$NextPageClubsFetchedImplCopyWith<$Res> {
  __$$NextPageClubsFetchedImplCopyWithImpl(_$NextPageClubsFetchedImpl _value,
      $Res Function(_$NextPageClubsFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageClubsFetchedImpl implements _NextPageClubsFetched {
  const _$NextPageClubsFetchedImpl();

  @override
  String toString() {
    return 'ClubsEvent.nextPageClubsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPageClubsFetchedImpl);
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
  const factory _NextPageClubsFetched() = _$NextPageClubsFetchedImpl;
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
abstract class _$$ClubsStateImplCopyWith<$Res>
    implements $ClubsStateCopyWith<$Res> {
  factory _$$ClubsStateImplCopyWith(
          _$ClubsStateImpl value, $Res Function(_$ClubsStateImpl) then) =
      __$$ClubsStateImplCopyWithImpl<$Res>;
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
class __$$ClubsStateImplCopyWithImpl<$Res>
    extends _$ClubsStateCopyWithImpl<$Res, _$ClubsStateImpl>
    implements _$$ClubsStateImplCopyWith<$Res> {
  __$$ClubsStateImplCopyWithImpl(
      _$ClubsStateImpl _value, $Res Function(_$ClubsStateImpl) _then)
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
    return _then(_$ClubsStateImpl(
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

class _$ClubsStateImpl implements _ClubsState {
  const _$ClubsStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubsStateImpl &&
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
  _$$ClubsStateImplCopyWith<_$ClubsStateImpl> get copyWith =>
      __$$ClubsStateImplCopyWithImpl<_$ClubsStateImpl>(this, _$identity);
}

abstract class _ClubsState implements ClubsState {
  const factory _ClubsState(
      {required final CubitStatus getClubsStatus,
      required final CubitStatus nextPageStatus,
      required final Option<String> errorMessage,
      required final List<Club> clubs,
      required final bool hasReachedMax,
      required final ClubFilters clubFilters,
      required final Option<CommonClubFailure> failure}) = _$ClubsStateImpl;

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
  _$$ClubsStateImplCopyWith<_$ClubsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

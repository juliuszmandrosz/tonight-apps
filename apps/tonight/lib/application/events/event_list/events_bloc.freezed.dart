// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function(DateRangeFilter filter) dateFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() eventsRefreshed,
    required TResult Function() nextPageEventsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function(DateRangeFilter filter)? dateFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? eventsRefreshed,
    TResult? Function()? nextPageEventsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function(DateRangeFilter filter)? dateFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? eventsRefreshed,
    TResult Function()? nextPageEventsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_DateFilterApplied value) dateFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_DateFilterApplied value)? dateFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_DateFilterApplied value)? dateFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res, EventsEvent>;
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res, $Val extends EventsEvent>
    implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventsFetchedCopyWith<$Res> {
  factory _$$_EventsFetchedCopyWith(
          _$_EventsFetched value, $Res Function(_$_EventsFetched) then) =
      __$$_EventsFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<LatLng> userLocation});
}

/// @nodoc
class __$$_EventsFetchedCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_EventsFetched>
    implements _$$_EventsFetchedCopyWith<$Res> {
  __$$_EventsFetchedCopyWithImpl(
      _$_EventsFetched _value, $Res Function(_$_EventsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
  }) {
    return _then(_$_EventsFetched(
      null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
    ));
  }
}

/// @nodoc

class _$_EventsFetched implements _EventsFetched {
  const _$_EventsFetched(this.userLocation);

  @override
  final Option<LatLng> userLocation;

  @override
  String toString() {
    return 'EventsEvent.eventsFetched(userLocation: $userLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsFetched &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsFetchedCopyWith<_$_EventsFetched> get copyWith =>
      __$$_EventsFetchedCopyWithImpl<_$_EventsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function(DateRangeFilter filter) dateFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() eventsRefreshed,
    required TResult Function() nextPageEventsFetched,
  }) {
    return eventsFetched(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function(DateRangeFilter filter)? dateFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? eventsRefreshed,
    TResult? Function()? nextPageEventsFetched,
  }) {
    return eventsFetched?.call(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function(DateRangeFilter filter)? dateFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? eventsRefreshed,
    TResult Function()? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (eventsFetched != null) {
      return eventsFetched(userLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_DateFilterApplied value) dateFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
  }) {
    return eventsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_DateFilterApplied value)? dateFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
  }) {
    return eventsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_DateFilterApplied value)? dateFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (eventsFetched != null) {
      return eventsFetched(this);
    }
    return orElse();
  }
}

abstract class _EventsFetched implements EventsEvent {
  const factory _EventsFetched(final Option<LatLng> userLocation) =
      _$_EventsFetched;

  Option<LatLng> get userLocation;
  @JsonKey(ignore: true)
  _$$_EventsFetchedCopyWith<_$_EventsFetched> get copyWith =>
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
    extends _$EventsEventCopyWithImpl<$Res, _$_PhraseFilterApplied>
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
    return 'EventsEvent.phraseFilterApplied(phrase: $phrase)';
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
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function(DateRangeFilter filter) dateFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() eventsRefreshed,
    required TResult Function() nextPageEventsFetched,
  }) {
    return phraseFilterApplied(phrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function(DateRangeFilter filter)? dateFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? eventsRefreshed,
    TResult? Function()? nextPageEventsFetched,
  }) {
    return phraseFilterApplied?.call(phrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function(DateRangeFilter filter)? dateFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? eventsRefreshed,
    TResult Function()? nextPageEventsFetched,
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
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_DateFilterApplied value) dateFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
  }) {
    return phraseFilterApplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_DateFilterApplied value)? dateFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
  }) {
    return phraseFilterApplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_DateFilterApplied value)? dateFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (phraseFilterApplied != null) {
      return phraseFilterApplied(this);
    }
    return orElse();
  }
}

abstract class _PhraseFilterApplied implements EventsEvent {
  const factory _PhraseFilterApplied(final String phrase) =
      _$_PhraseFilterApplied;

  String get phrase;
  @JsonKey(ignore: true)
  _$$_PhraseFilterAppliedCopyWith<_$_PhraseFilterApplied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MenuFiltersAppliedCopyWith<$Res> {
  factory _$$_MenuFiltersAppliedCopyWith(_$_MenuFiltersApplied value,
          $Res Function(_$_MenuFiltersApplied) then) =
      __$$_MenuFiltersAppliedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters});

  $EventFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_MenuFiltersAppliedCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_MenuFiltersApplied>
    implements _$$_MenuFiltersAppliedCopyWith<$Res> {
  __$$_MenuFiltersAppliedCopyWithImpl(
      _$_MenuFiltersApplied _value, $Res Function(_$_MenuFiltersApplied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? appliedFilters = null,
  }) {
    return _then(_$_MenuFiltersApplied(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      appliedFilters: null == appliedFilters
          ? _value._appliedFilters
          : appliedFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuEventFilter, IFilter>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventFiltersCopyWith<$Res> get filters {
    return $EventFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$_MenuFiltersApplied implements _MenuFiltersApplied {
  const _$_MenuFiltersApplied(
      {required this.filters,
      required final Map<MenuEventFilter, IFilter> appliedFilters})
      : _appliedFilters = appliedFilters;

  @override
  final EventFilters filters;
  final Map<MenuEventFilter, IFilter> _appliedFilters;
  @override
  Map<MenuEventFilter, IFilter> get appliedFilters {
    if (_appliedFilters is EqualUnmodifiableMapView) return _appliedFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appliedFilters);
  }

  @override
  String toString() {
    return 'EventsEvent.menuFiltersApplied(filters: $filters, appliedFilters: $appliedFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuFiltersApplied &&
            (identical(other.filters, filters) || other.filters == filters) &&
            const DeepCollectionEquality()
                .equals(other._appliedFilters, _appliedFilters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters,
      const DeepCollectionEquality().hash(_appliedFilters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuFiltersAppliedCopyWith<_$_MenuFiltersApplied> get copyWith =>
      __$$_MenuFiltersAppliedCopyWithImpl<_$_MenuFiltersApplied>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function(DateRangeFilter filter) dateFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() eventsRefreshed,
    required TResult Function() nextPageEventsFetched,
  }) {
    return menuFiltersApplied(filters, appliedFilters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function(DateRangeFilter filter)? dateFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? eventsRefreshed,
    TResult? Function()? nextPageEventsFetched,
  }) {
    return menuFiltersApplied?.call(filters, appliedFilters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function(DateRangeFilter filter)? dateFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? eventsRefreshed,
    TResult Function()? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (menuFiltersApplied != null) {
      return menuFiltersApplied(filters, appliedFilters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_DateFilterApplied value) dateFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
  }) {
    return menuFiltersApplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_DateFilterApplied value)? dateFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
  }) {
    return menuFiltersApplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_DateFilterApplied value)? dateFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (menuFiltersApplied != null) {
      return menuFiltersApplied(this);
    }
    return orElse();
  }
}

abstract class _MenuFiltersApplied implements EventsEvent {
  const factory _MenuFiltersApplied(
          {required final EventFilters filters,
          required final Map<MenuEventFilter, IFilter> appliedFilters}) =
      _$_MenuFiltersApplied;

  EventFilters get filters;
  Map<MenuEventFilter, IFilter> get appliedFilters;
  @JsonKey(ignore: true)
  _$$_MenuFiltersAppliedCopyWith<_$_MenuFiltersApplied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MenuFilterRemovedCopyWith<$Res> {
  factory _$$_MenuFilterRemovedCopyWith(_$_MenuFilterRemoved value,
          $Res Function(_$_MenuFilterRemoved) then) =
      __$$_MenuFilterRemovedCopyWithImpl<$Res>;
  @useResult
  $Res call({MenuEventFilter filter});
}

/// @nodoc
class __$$_MenuFilterRemovedCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_MenuFilterRemoved>
    implements _$$_MenuFilterRemovedCopyWith<$Res> {
  __$$_MenuFilterRemovedCopyWithImpl(
      _$_MenuFilterRemoved _value, $Res Function(_$_MenuFilterRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_MenuFilterRemoved(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as MenuEventFilter,
    ));
  }
}

/// @nodoc

class _$_MenuFilterRemoved implements _MenuFilterRemoved {
  const _$_MenuFilterRemoved(this.filter);

  @override
  final MenuEventFilter filter;

  @override
  String toString() {
    return 'EventsEvent.menuFilterRemoved(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuFilterRemoved &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuFilterRemovedCopyWith<_$_MenuFilterRemoved> get copyWith =>
      __$$_MenuFilterRemovedCopyWithImpl<_$_MenuFilterRemoved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function(DateRangeFilter filter) dateFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() eventsRefreshed,
    required TResult Function() nextPageEventsFetched,
  }) {
    return menuFilterRemoved(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function(DateRangeFilter filter)? dateFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? eventsRefreshed,
    TResult? Function()? nextPageEventsFetched,
  }) {
    return menuFilterRemoved?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function(DateRangeFilter filter)? dateFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? eventsRefreshed,
    TResult Function()? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (menuFilterRemoved != null) {
      return menuFilterRemoved(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_DateFilterApplied value) dateFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
  }) {
    return menuFilterRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_DateFilterApplied value)? dateFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
  }) {
    return menuFilterRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_DateFilterApplied value)? dateFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (menuFilterRemoved != null) {
      return menuFilterRemoved(this);
    }
    return orElse();
  }
}

abstract class _MenuFilterRemoved implements EventsEvent {
  const factory _MenuFilterRemoved(final MenuEventFilter filter) =
      _$_MenuFilterRemoved;

  MenuEventFilter get filter;
  @JsonKey(ignore: true)
  _$$_MenuFilterRemovedCopyWith<_$_MenuFilterRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DateFilterAppliedCopyWith<$Res> {
  factory _$$_DateFilterAppliedCopyWith(_$_DateFilterApplied value,
          $Res Function(_$_DateFilterApplied) then) =
      __$$_DateFilterAppliedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateRangeFilter filter});
}

/// @nodoc
class __$$_DateFilterAppliedCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_DateFilterApplied>
    implements _$$_DateFilterAppliedCopyWith<$Res> {
  __$$_DateFilterAppliedCopyWithImpl(
      _$_DateFilterApplied _value, $Res Function(_$_DateFilterApplied) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_DateFilterApplied(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as DateRangeFilter,
    ));
  }
}

/// @nodoc

class _$_DateFilterApplied implements _DateFilterApplied {
  const _$_DateFilterApplied(this.filter);

  @override
  final DateRangeFilter filter;

  @override
  String toString() {
    return 'EventsEvent.dateFilterApplied(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateFilterApplied &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateFilterAppliedCopyWith<_$_DateFilterApplied> get copyWith =>
      __$$_DateFilterAppliedCopyWithImpl<_$_DateFilterApplied>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function(DateRangeFilter filter) dateFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() eventsRefreshed,
    required TResult Function() nextPageEventsFetched,
  }) {
    return dateFilterApplied(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function(DateRangeFilter filter)? dateFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? eventsRefreshed,
    TResult? Function()? nextPageEventsFetched,
  }) {
    return dateFilterApplied?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function(DateRangeFilter filter)? dateFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? eventsRefreshed,
    TResult Function()? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (dateFilterApplied != null) {
      return dateFilterApplied(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_DateFilterApplied value) dateFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
  }) {
    return dateFilterApplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_DateFilterApplied value)? dateFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
  }) {
    return dateFilterApplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_DateFilterApplied value)? dateFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (dateFilterApplied != null) {
      return dateFilterApplied(this);
    }
    return orElse();
  }
}

abstract class _DateFilterApplied implements EventsEvent {
  const factory _DateFilterApplied(final DateRangeFilter filter) =
      _$_DateFilterApplied;

  DateRangeFilter get filter;
  @JsonKey(ignore: true)
  _$$_DateFilterAppliedCopyWith<_$_DateFilterApplied> get copyWith =>
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
    extends _$EventsEventCopyWithImpl<$Res, _$_CityFilterApplied>
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
    return 'EventsEvent.cityFilterApplied(filter: $filter)';
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
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function(DateRangeFilter filter) dateFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() eventsRefreshed,
    required TResult Function() nextPageEventsFetched,
  }) {
    return cityFilterApplied(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function(DateRangeFilter filter)? dateFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? eventsRefreshed,
    TResult? Function()? nextPageEventsFetched,
  }) {
    return cityFilterApplied?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function(DateRangeFilter filter)? dateFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? eventsRefreshed,
    TResult Function()? nextPageEventsFetched,
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
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_DateFilterApplied value) dateFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
  }) {
    return cityFilterApplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_DateFilterApplied value)? dateFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
  }) {
    return cityFilterApplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_DateFilterApplied value)? dateFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (cityFilterApplied != null) {
      return cityFilterApplied(this);
    }
    return orElse();
  }
}

abstract class _CityFilterApplied implements EventsEvent {
  const factory _CityFilterApplied(final CityFilter filter) =
      _$_CityFilterApplied;

  CityFilter get filter;
  @JsonKey(ignore: true)
  _$$_CityFilterAppliedCopyWith<_$_CityFilterApplied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventsRefreshedCopyWith<$Res> {
  factory _$$_EventsRefreshedCopyWith(
          _$_EventsRefreshed value, $Res Function(_$_EventsRefreshed) then) =
      __$$_EventsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventsRefreshedCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_EventsRefreshed>
    implements _$$_EventsRefreshedCopyWith<$Res> {
  __$$_EventsRefreshedCopyWithImpl(
      _$_EventsRefreshed _value, $Res Function(_$_EventsRefreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventsRefreshed implements _EventsRefreshed {
  const _$_EventsRefreshed();

  @override
  String toString() {
    return 'EventsEvent.eventsRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventsRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function(DateRangeFilter filter) dateFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() eventsRefreshed,
    required TResult Function() nextPageEventsFetched,
  }) {
    return eventsRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function(DateRangeFilter filter)? dateFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? eventsRefreshed,
    TResult? Function()? nextPageEventsFetched,
  }) {
    return eventsRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function(DateRangeFilter filter)? dateFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? eventsRefreshed,
    TResult Function()? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (eventsRefreshed != null) {
      return eventsRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_DateFilterApplied value) dateFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
  }) {
    return eventsRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_DateFilterApplied value)? dateFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
  }) {
    return eventsRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_DateFilterApplied value)? dateFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (eventsRefreshed != null) {
      return eventsRefreshed(this);
    }
    return orElse();
  }
}

abstract class _EventsRefreshed implements EventsEvent {
  const factory _EventsRefreshed() = _$_EventsRefreshed;
}

/// @nodoc
abstract class _$$_NextPageEventsFetchedCopyWith<$Res> {
  factory _$$_NextPageEventsFetchedCopyWith(_$_NextPageEventsFetched value,
          $Res Function(_$_NextPageEventsFetched) then) =
      __$$_NextPageEventsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageEventsFetchedCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_NextPageEventsFetched>
    implements _$$_NextPageEventsFetchedCopyWith<$Res> {
  __$$_NextPageEventsFetchedCopyWithImpl(_$_NextPageEventsFetched _value,
      $Res Function(_$_NextPageEventsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPageEventsFetched implements _NextPageEventsFetched {
  const _$_NextPageEventsFetched();

  @override
  String toString() {
    return 'EventsEvent.nextPageEventsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NextPageEventsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function(String phrase) phraseFilterApplied,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function(DateRangeFilter filter) dateFilterApplied,
    required TResult Function(CityFilter filter) cityFilterApplied,
    required TResult Function() eventsRefreshed,
    required TResult Function() nextPageEventsFetched,
  }) {
    return nextPageEventsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function(String phrase)? phraseFilterApplied,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function(DateRangeFilter filter)? dateFilterApplied,
    TResult? Function(CityFilter filter)? cityFilterApplied,
    TResult? Function()? eventsRefreshed,
    TResult? Function()? nextPageEventsFetched,
  }) {
    return nextPageEventsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function(String phrase)? phraseFilterApplied,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function(DateRangeFilter filter)? dateFilterApplied,
    TResult Function(CityFilter filter)? cityFilterApplied,
    TResult Function()? eventsRefreshed,
    TResult Function()? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (nextPageEventsFetched != null) {
      return nextPageEventsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_PhraseFilterApplied value) phraseFilterApplied,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_DateFilterApplied value) dateFilterApplied,
    required TResult Function(_CityFilterApplied value) cityFilterApplied,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
  }) {
    return nextPageEventsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_DateFilterApplied value)? dateFilterApplied,
    TResult? Function(_CityFilterApplied value)? cityFilterApplied,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
  }) {
    return nextPageEventsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_PhraseFilterApplied value)? phraseFilterApplied,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_DateFilterApplied value)? dateFilterApplied,
    TResult Function(_CityFilterApplied value)? cityFilterApplied,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    required TResult orElse(),
  }) {
    if (nextPageEventsFetched != null) {
      return nextPageEventsFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageEventsFetched implements EventsEvent {
  const factory _NextPageEventsFetched() = _$_NextPageEventsFetched;
}

/// @nodoc
mixin _$EventsState {
  CubitStatus get getEventsStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  List<Event> get events => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  EventFilters get eventFilters => throw _privateConstructorUsedError;
  EventSortModel get sortModel => throw _privateConstructorUsedError;
  Map<MenuEventFilter, IFilter> get appliedMenuFilters =>
      throw _privateConstructorUsedError;
  Option<CommonEventFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsStateCopyWith<EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
  @useResult
  $Res call(
      {CubitStatus getEventsStatus,
      CubitStatus nextPageStatus,
      Option<String> errorMessage,
      List<Event> events,
      bool hasReachedMax,
      EventFilters eventFilters,
      EventSortModel sortModel,
      Map<MenuEventFilter, IFilter> appliedMenuFilters,
      Option<CommonEventFailure> failure});

  $EventFiltersCopyWith<$Res> get eventFilters;
  $EventSortModelCopyWith<$Res> get sortModel;
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getEventsStatus = null,
    Object? nextPageStatus = null,
    Object? errorMessage = null,
    Object? events = null,
    Object? hasReachedMax = null,
    Object? eventFilters = null,
    Object? sortModel = null,
    Object? appliedMenuFilters = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      getEventsStatus: null == getEventsStatus
          ? _value.getEventsStatus
          : getEventsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      eventFilters: null == eventFilters
          ? _value.eventFilters
          : eventFilters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      sortModel: null == sortModel
          ? _value.sortModel
          : sortModel // ignore: cast_nullable_to_non_nullable
              as EventSortModel,
      appliedMenuFilters: null == appliedMenuFilters
          ? _value.appliedMenuFilters
          : appliedMenuFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuEventFilter, IFilter>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<CommonEventFailure>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventFiltersCopyWith<$Res> get eventFilters {
    return $EventFiltersCopyWith<$Res>(_value.eventFilters, (value) {
      return _then(_value.copyWith(eventFilters: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventSortModelCopyWith<$Res> get sortModel {
    return $EventSortModelCopyWith<$Res>(_value.sortModel, (value) {
      return _then(_value.copyWith(sortModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventsStateCopyWith<$Res>
    implements $EventsStateCopyWith<$Res> {
  factory _$$_EventsStateCopyWith(
          _$_EventsState value, $Res Function(_$_EventsState) then) =
      __$$_EventsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getEventsStatus,
      CubitStatus nextPageStatus,
      Option<String> errorMessage,
      List<Event> events,
      bool hasReachedMax,
      EventFilters eventFilters,
      EventSortModel sortModel,
      Map<MenuEventFilter, IFilter> appliedMenuFilters,
      Option<CommonEventFailure> failure});

  @override
  $EventFiltersCopyWith<$Res> get eventFilters;
  @override
  $EventSortModelCopyWith<$Res> get sortModel;
}

/// @nodoc
class __$$_EventsStateCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$_EventsState>
    implements _$$_EventsStateCopyWith<$Res> {
  __$$_EventsStateCopyWithImpl(
      _$_EventsState _value, $Res Function(_$_EventsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getEventsStatus = null,
    Object? nextPageStatus = null,
    Object? errorMessage = null,
    Object? events = null,
    Object? hasReachedMax = null,
    Object? eventFilters = null,
    Object? sortModel = null,
    Object? appliedMenuFilters = null,
    Object? failure = null,
  }) {
    return _then(_$_EventsState(
      getEventsStatus: null == getEventsStatus
          ? _value.getEventsStatus
          : getEventsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      eventFilters: null == eventFilters
          ? _value.eventFilters
          : eventFilters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      sortModel: null == sortModel
          ? _value.sortModel
          : sortModel // ignore: cast_nullable_to_non_nullable
              as EventSortModel,
      appliedMenuFilters: null == appliedMenuFilters
          ? _value._appliedMenuFilters
          : appliedMenuFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuEventFilter, IFilter>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<CommonEventFailure>,
    ));
  }
}

/// @nodoc

class _$_EventsState implements _EventsState {
  const _$_EventsState(
      {required this.getEventsStatus,
      required this.nextPageStatus,
      required this.errorMessage,
      required final List<Event> events,
      required this.hasReachedMax,
      required this.eventFilters,
      required this.sortModel,
      required final Map<MenuEventFilter, IFilter> appliedMenuFilters,
      required this.failure})
      : _events = events,
        _appliedMenuFilters = appliedMenuFilters;

  @override
  final CubitStatus getEventsStatus;
  @override
  final CubitStatus nextPageStatus;
  @override
  final Option<String> errorMessage;
  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final bool hasReachedMax;
  @override
  final EventFilters eventFilters;
  @override
  final EventSortModel sortModel;
  final Map<MenuEventFilter, IFilter> _appliedMenuFilters;
  @override
  Map<MenuEventFilter, IFilter> get appliedMenuFilters {
    if (_appliedMenuFilters is EqualUnmodifiableMapView)
      return _appliedMenuFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appliedMenuFilters);
  }

  @override
  final Option<CommonEventFailure> failure;

  @override
  String toString() {
    return 'EventsState(getEventsStatus: $getEventsStatus, nextPageStatus: $nextPageStatus, errorMessage: $errorMessage, events: $events, hasReachedMax: $hasReachedMax, eventFilters: $eventFilters, sortModel: $sortModel, appliedMenuFilters: $appliedMenuFilters, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsState &&
            (identical(other.getEventsStatus, getEventsStatus) ||
                other.getEventsStatus == getEventsStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.eventFilters, eventFilters) ||
                other.eventFilters == eventFilters) &&
            (identical(other.sortModel, sortModel) ||
                other.sortModel == sortModel) &&
            const DeepCollectionEquality()
                .equals(other._appliedMenuFilters, _appliedMenuFilters) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getEventsStatus,
      nextPageStatus,
      errorMessage,
      const DeepCollectionEquality().hash(_events),
      hasReachedMax,
      eventFilters,
      sortModel,
      const DeepCollectionEquality().hash(_appliedMenuFilters),
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsStateCopyWith<_$_EventsState> get copyWith =>
      __$$_EventsStateCopyWithImpl<_$_EventsState>(this, _$identity);
}

abstract class _EventsState implements EventsState {
  const factory _EventsState(
      {required final CubitStatus getEventsStatus,
      required final CubitStatus nextPageStatus,
      required final Option<String> errorMessage,
      required final List<Event> events,
      required final bool hasReachedMax,
      required final EventFilters eventFilters,
      required final EventSortModel sortModel,
      required final Map<MenuEventFilter, IFilter> appliedMenuFilters,
      required final Option<CommonEventFailure> failure}) = _$_EventsState;

  @override
  CubitStatus get getEventsStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  Option<String> get errorMessage;
  @override
  List<Event> get events;
  @override
  bool get hasReachedMax;
  @override
  EventFilters get eventFilters;
  @override
  EventSortModel get sortModel;
  @override
  Map<MenuEventFilter, IFilter> get appliedMenuFilters;
  @override
  Option<CommonEventFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$_EventsStateCopyWith<_$_EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

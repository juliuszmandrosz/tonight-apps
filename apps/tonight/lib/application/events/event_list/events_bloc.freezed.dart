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
abstract class _$$EventsFetchedImplCopyWith<$Res> {
  factory _$$EventsFetchedImplCopyWith(
          _$EventsFetchedImpl value, $Res Function(_$EventsFetchedImpl) then) =
      __$$EventsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<LatLng> userLocation});
}

/// @nodoc
class __$$EventsFetchedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$EventsFetchedImpl>
    implements _$$EventsFetchedImplCopyWith<$Res> {
  __$$EventsFetchedImplCopyWithImpl(
      _$EventsFetchedImpl _value, $Res Function(_$EventsFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
  }) {
    return _then(_$EventsFetchedImpl(
      null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
    ));
  }
}

/// @nodoc

class _$EventsFetchedImpl implements _EventsFetched {
  const _$EventsFetchedImpl(this.userLocation);

  @override
  final Option<LatLng> userLocation;

  @override
  String toString() {
    return 'EventsEvent.eventsFetched(userLocation: $userLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsFetchedImpl &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsFetchedImplCopyWith<_$EventsFetchedImpl> get copyWith =>
      __$$EventsFetchedImplCopyWithImpl<_$EventsFetchedImpl>(this, _$identity);

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
      _$EventsFetchedImpl;

  Option<LatLng> get userLocation;
  @JsonKey(ignore: true)
  _$$EventsFetchedImplCopyWith<_$EventsFetchedImpl> get copyWith =>
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
    extends _$EventsEventCopyWithImpl<$Res, _$PhraseFilterAppliedImpl>
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
    return 'EventsEvent.phraseFilterApplied(phrase: $phrase)';
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
      _$PhraseFilterAppliedImpl;

  String get phrase;
  @JsonKey(ignore: true)
  _$$PhraseFilterAppliedImplCopyWith<_$PhraseFilterAppliedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MenuFiltersAppliedImplCopyWith<$Res> {
  factory _$$MenuFiltersAppliedImplCopyWith(_$MenuFiltersAppliedImpl value,
          $Res Function(_$MenuFiltersAppliedImpl) then) =
      __$$MenuFiltersAppliedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters});

  $EventFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$MenuFiltersAppliedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$MenuFiltersAppliedImpl>
    implements _$$MenuFiltersAppliedImplCopyWith<$Res> {
  __$$MenuFiltersAppliedImplCopyWithImpl(_$MenuFiltersAppliedImpl _value,
      $Res Function(_$MenuFiltersAppliedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? appliedFilters = null,
  }) {
    return _then(_$MenuFiltersAppliedImpl(
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

class _$MenuFiltersAppliedImpl implements _MenuFiltersApplied {
  const _$MenuFiltersAppliedImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuFiltersAppliedImpl &&
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
  _$$MenuFiltersAppliedImplCopyWith<_$MenuFiltersAppliedImpl> get copyWith =>
      __$$MenuFiltersAppliedImplCopyWithImpl<_$MenuFiltersAppliedImpl>(
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
      _$MenuFiltersAppliedImpl;

  EventFilters get filters;
  Map<MenuEventFilter, IFilter> get appliedFilters;
  @JsonKey(ignore: true)
  _$$MenuFiltersAppliedImplCopyWith<_$MenuFiltersAppliedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MenuFilterRemovedImplCopyWith<$Res> {
  factory _$$MenuFilterRemovedImplCopyWith(_$MenuFilterRemovedImpl value,
          $Res Function(_$MenuFilterRemovedImpl) then) =
      __$$MenuFilterRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MenuEventFilter filter});
}

/// @nodoc
class __$$MenuFilterRemovedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$MenuFilterRemovedImpl>
    implements _$$MenuFilterRemovedImplCopyWith<$Res> {
  __$$MenuFilterRemovedImplCopyWithImpl(_$MenuFilterRemovedImpl _value,
      $Res Function(_$MenuFilterRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$MenuFilterRemovedImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as MenuEventFilter,
    ));
  }
}

/// @nodoc

class _$MenuFilterRemovedImpl implements _MenuFilterRemoved {
  const _$MenuFilterRemovedImpl(this.filter);

  @override
  final MenuEventFilter filter;

  @override
  String toString() {
    return 'EventsEvent.menuFilterRemoved(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuFilterRemovedImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuFilterRemovedImplCopyWith<_$MenuFilterRemovedImpl> get copyWith =>
      __$$MenuFilterRemovedImplCopyWithImpl<_$MenuFilterRemovedImpl>(
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
      _$MenuFilterRemovedImpl;

  MenuEventFilter get filter;
  @JsonKey(ignore: true)
  _$$MenuFilterRemovedImplCopyWith<_$MenuFilterRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateFilterAppliedImplCopyWith<$Res> {
  factory _$$DateFilterAppliedImplCopyWith(_$DateFilterAppliedImpl value,
          $Res Function(_$DateFilterAppliedImpl) then) =
      __$$DateFilterAppliedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateRangeFilter filter});
}

/// @nodoc
class __$$DateFilterAppliedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$DateFilterAppliedImpl>
    implements _$$DateFilterAppliedImplCopyWith<$Res> {
  __$$DateFilterAppliedImplCopyWithImpl(_$DateFilterAppliedImpl _value,
      $Res Function(_$DateFilterAppliedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$DateFilterAppliedImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as DateRangeFilter,
    ));
  }
}

/// @nodoc

class _$DateFilterAppliedImpl implements _DateFilterApplied {
  const _$DateFilterAppliedImpl(this.filter);

  @override
  final DateRangeFilter filter;

  @override
  String toString() {
    return 'EventsEvent.dateFilterApplied(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateFilterAppliedImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateFilterAppliedImplCopyWith<_$DateFilterAppliedImpl> get copyWith =>
      __$$DateFilterAppliedImplCopyWithImpl<_$DateFilterAppliedImpl>(
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
      _$DateFilterAppliedImpl;

  DateRangeFilter get filter;
  @JsonKey(ignore: true)
  _$$DateFilterAppliedImplCopyWith<_$DateFilterAppliedImpl> get copyWith =>
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
    extends _$EventsEventCopyWithImpl<$Res, _$CityFilterAppliedImpl>
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
    return 'EventsEvent.cityFilterApplied(filter: $filter)';
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
      _$CityFilterAppliedImpl;

  CityFilter get filter;
  @JsonKey(ignore: true)
  _$$CityFilterAppliedImplCopyWith<_$CityFilterAppliedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventsRefreshedImplCopyWith<$Res> {
  factory _$$EventsRefreshedImplCopyWith(_$EventsRefreshedImpl value,
          $Res Function(_$EventsRefreshedImpl) then) =
      __$$EventsRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventsRefreshedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$EventsRefreshedImpl>
    implements _$$EventsRefreshedImplCopyWith<$Res> {
  __$$EventsRefreshedImplCopyWithImpl(
      _$EventsRefreshedImpl _value, $Res Function(_$EventsRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventsRefreshedImpl implements _EventsRefreshed {
  const _$EventsRefreshedImpl();

  @override
  String toString() {
    return 'EventsEvent.eventsRefreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventsRefreshedImpl);
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
  const factory _EventsRefreshed() = _$EventsRefreshedImpl;
}

/// @nodoc
abstract class _$$NextPageEventsFetchedImplCopyWith<$Res> {
  factory _$$NextPageEventsFetchedImplCopyWith(
          _$NextPageEventsFetchedImpl value,
          $Res Function(_$NextPageEventsFetchedImpl) then) =
      __$$NextPageEventsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageEventsFetchedImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$NextPageEventsFetchedImpl>
    implements _$$NextPageEventsFetchedImplCopyWith<$Res> {
  __$$NextPageEventsFetchedImplCopyWithImpl(_$NextPageEventsFetchedImpl _value,
      $Res Function(_$NextPageEventsFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageEventsFetchedImpl implements _NextPageEventsFetched {
  const _$NextPageEventsFetchedImpl();

  @override
  String toString() {
    return 'EventsEvent.nextPageEventsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPageEventsFetchedImpl);
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
  const factory _NextPageEventsFetched() = _$NextPageEventsFetchedImpl;
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
abstract class _$$EventsStateImplCopyWith<$Res>
    implements $EventsStateCopyWith<$Res> {
  factory _$$EventsStateImplCopyWith(
          _$EventsStateImpl value, $Res Function(_$EventsStateImpl) then) =
      __$$EventsStateImplCopyWithImpl<$Res>;
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
class __$$EventsStateImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$EventsStateImpl>
    implements _$$EventsStateImplCopyWith<$Res> {
  __$$EventsStateImplCopyWithImpl(
      _$EventsStateImpl _value, $Res Function(_$EventsStateImpl) _then)
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
    return _then(_$EventsStateImpl(
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

class _$EventsStateImpl implements _EventsState {
  const _$EventsStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsStateImpl &&
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
  _$$EventsStateImplCopyWith<_$EventsStateImpl> get copyWith =>
      __$$EventsStateImplCopyWithImpl<_$EventsStateImpl>(this, _$identity);
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
      required final Option<CommonEventFailure> failure}) = _$EventsStateImpl;

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
  _$$EventsStateImplCopyWith<_$EventsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

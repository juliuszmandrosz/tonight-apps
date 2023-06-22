// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tonight_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TonightEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function() nextPageEventsFetched,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function() eventsRefreshed,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function()? nextPageEventsFetched,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function()? eventsRefreshed,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function()? nextPageEventsFetched,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function()? eventsRefreshed,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonightEventsEventCopyWith<$Res> {
  factory $TonightEventsEventCopyWith(
          TonightEventsEvent value, $Res Function(TonightEventsEvent) then) =
      _$TonightEventsEventCopyWithImpl<$Res, TonightEventsEvent>;
}

/// @nodoc
class _$TonightEventsEventCopyWithImpl<$Res, $Val extends TonightEventsEvent>
    implements $TonightEventsEventCopyWith<$Res> {
  _$TonightEventsEventCopyWithImpl(this._value, this._then);

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
    extends _$TonightEventsEventCopyWithImpl<$Res, _$_EventsFetched>
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
    return 'TonightEventsEvent.eventsFetched(userLocation: $userLocation)';
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
    required TResult Function() nextPageEventsFetched,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function() eventsRefreshed,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
  }) {
    return eventsFetched(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function()? nextPageEventsFetched,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function()? eventsRefreshed,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
  }) {
    return eventsFetched?.call(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function()? nextPageEventsFetched,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function()? eventsRefreshed,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
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
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
  }) {
    return eventsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
  }) {
    return eventsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    required TResult orElse(),
  }) {
    if (eventsFetched != null) {
      return eventsFetched(this);
    }
    return orElse();
  }
}

abstract class _EventsFetched implements TonightEventsEvent {
  const factory _EventsFetched(final Option<LatLng> userLocation) =
      _$_EventsFetched;

  Option<LatLng> get userLocation;
  @JsonKey(ignore: true)
  _$$_EventsFetchedCopyWith<_$_EventsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextPageEventsFetchedCopyWith<$Res> {
  factory _$$_NextPageEventsFetchedCopyWith(_$_NextPageEventsFetched value,
          $Res Function(_$_NextPageEventsFetched) then) =
      __$$_NextPageEventsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageEventsFetchedCopyWithImpl<$Res>
    extends _$TonightEventsEventCopyWithImpl<$Res, _$_NextPageEventsFetched>
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
    return 'TonightEventsEvent.nextPageEventsFetched()';
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
    required TResult Function() nextPageEventsFetched,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function() eventsRefreshed,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
  }) {
    return nextPageEventsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function()? nextPageEventsFetched,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function()? eventsRefreshed,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
  }) {
    return nextPageEventsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function()? nextPageEventsFetched,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function()? eventsRefreshed,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
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
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
  }) {
    return nextPageEventsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
  }) {
    return nextPageEventsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    required TResult orElse(),
  }) {
    if (nextPageEventsFetched != null) {
      return nextPageEventsFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageEventsFetched implements TonightEventsEvent {
  const factory _NextPageEventsFetched() = _$_NextPageEventsFetched;
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
    extends _$TonightEventsEventCopyWithImpl<$Res, _$_MenuFiltersApplied>
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
    return 'TonightEventsEvent.menuFiltersApplied(filters: $filters, appliedFilters: $appliedFilters)';
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
    required TResult Function() nextPageEventsFetched,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function() eventsRefreshed,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
  }) {
    return menuFiltersApplied(filters, appliedFilters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function()? nextPageEventsFetched,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function()? eventsRefreshed,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
  }) {
    return menuFiltersApplied?.call(filters, appliedFilters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function()? nextPageEventsFetched,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function()? eventsRefreshed,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
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
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
  }) {
    return menuFiltersApplied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
  }) {
    return menuFiltersApplied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    required TResult orElse(),
  }) {
    if (menuFiltersApplied != null) {
      return menuFiltersApplied(this);
    }
    return orElse();
  }
}

abstract class _MenuFiltersApplied implements TonightEventsEvent {
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
    extends _$TonightEventsEventCopyWithImpl<$Res, _$_MenuFilterRemoved>
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
    return 'TonightEventsEvent.menuFilterRemoved(filter: $filter)';
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
    required TResult Function() nextPageEventsFetched,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function() eventsRefreshed,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
  }) {
    return menuFilterRemoved(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function()? nextPageEventsFetched,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function()? eventsRefreshed,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
  }) {
    return menuFilterRemoved?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function()? nextPageEventsFetched,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function()? eventsRefreshed,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
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
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
  }) {
    return menuFilterRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
  }) {
    return menuFilterRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    required TResult orElse(),
  }) {
    if (menuFilterRemoved != null) {
      return menuFilterRemoved(this);
    }
    return orElse();
  }
}

abstract class _MenuFilterRemoved implements TonightEventsEvent {
  const factory _MenuFilterRemoved(final MenuEventFilter filter) =
      _$_MenuFilterRemoved;

  MenuEventFilter get filter;
  @JsonKey(ignore: true)
  _$$_MenuFilterRemovedCopyWith<_$_MenuFilterRemoved> get copyWith =>
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
    extends _$TonightEventsEventCopyWithImpl<$Res, _$_EventsRefreshed>
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
    return 'TonightEventsEvent.eventsRefreshed()';
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
    required TResult Function() nextPageEventsFetched,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function() eventsRefreshed,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
  }) {
    return eventsRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function()? nextPageEventsFetched,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function()? eventsRefreshed,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
  }) {
    return eventsRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function()? nextPageEventsFetched,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function()? eventsRefreshed,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
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
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
  }) {
    return eventsRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
  }) {
    return eventsRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    required TResult orElse(),
  }) {
    if (eventsRefreshed != null) {
      return eventsRefreshed(this);
    }
    return orElse();
  }
}

abstract class _EventsRefreshed implements TonightEventsEvent {
  const factory _EventsRefreshed() = _$_EventsRefreshed;
}

/// @nodoc
abstract class _$$_EventVoucherUsedCopyWith<$Res> {
  factory _$$_EventVoucherUsedCopyWith(
          _$_EventVoucherUsed value, $Res Function(_$_EventVoucherUsed) then) =
      __$$_EventVoucherUsedCopyWithImpl<$Res>;
  @useResult
  $Res call({EventVoucher voucher});

  $EventVoucherCopyWith<$Res> get voucher;
}

/// @nodoc
class __$$_EventVoucherUsedCopyWithImpl<$Res>
    extends _$TonightEventsEventCopyWithImpl<$Res, _$_EventVoucherUsed>
    implements _$$_EventVoucherUsedCopyWith<$Res> {
  __$$_EventVoucherUsedCopyWithImpl(
      _$_EventVoucherUsed _value, $Res Function(_$_EventVoucherUsed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucher = null,
  }) {
    return _then(_$_EventVoucherUsed(
      null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as EventVoucher,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventVoucherCopyWith<$Res> get voucher {
    return $EventVoucherCopyWith<$Res>(_value.voucher, (value) {
      return _then(_value.copyWith(voucher: value));
    });
  }
}

/// @nodoc

class _$_EventVoucherUsed implements _EventVoucherUsed {
  const _$_EventVoucherUsed(this.voucher);

  @override
  final EventVoucher voucher;

  @override
  String toString() {
    return 'TonightEventsEvent.eventVoucherUsed(voucher: $voucher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventVoucherUsed &&
            (identical(other.voucher, voucher) || other.voucher == voucher));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voucher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventVoucherUsedCopyWith<_$_EventVoucherUsed> get copyWith =>
      __$$_EventVoucherUsedCopyWithImpl<_$_EventVoucherUsed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) eventsFetched,
    required TResult Function() nextPageEventsFetched,
    required TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)
        menuFiltersApplied,
    required TResult Function(MenuEventFilter filter) menuFilterRemoved,
    required TResult Function() eventsRefreshed,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
  }) {
    return eventVoucherUsed(voucher);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? eventsFetched,
    TResult? Function()? nextPageEventsFetched,
    TResult? Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult? Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult? Function()? eventsRefreshed,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
  }) {
    return eventVoucherUsed?.call(voucher);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? eventsFetched,
    TResult Function()? nextPageEventsFetched,
    TResult Function(
            EventFilters filters, Map<MenuEventFilter, IFilter> appliedFilters)?
        menuFiltersApplied,
    TResult Function(MenuEventFilter filter)? menuFilterRemoved,
    TResult Function()? eventsRefreshed,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
    required TResult orElse(),
  }) {
    if (eventVoucherUsed != null) {
      return eventVoucherUsed(voucher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_NextPageEventsFetched value)
        nextPageEventsFetched,
    required TResult Function(_MenuFiltersApplied value) menuFiltersApplied,
    required TResult Function(_MenuFilterRemoved value) menuFilterRemoved,
    required TResult Function(_EventsRefreshed value) eventsRefreshed,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
  }) {
    return eventVoucherUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult? Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult? Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult? Function(_EventsRefreshed value)? eventsRefreshed,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
  }) {
    return eventVoucherUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextPageEventsFetched value)? nextPageEventsFetched,
    TResult Function(_MenuFiltersApplied value)? menuFiltersApplied,
    TResult Function(_MenuFilterRemoved value)? menuFilterRemoved,
    TResult Function(_EventsRefreshed value)? eventsRefreshed,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    required TResult orElse(),
  }) {
    if (eventVoucherUsed != null) {
      return eventVoucherUsed(this);
    }
    return orElse();
  }
}

abstract class _EventVoucherUsed implements TonightEventsEvent {
  const factory _EventVoucherUsed(final EventVoucher voucher) =
      _$_EventVoucherUsed;

  EventVoucher get voucher;
  @JsonKey(ignore: true)
  _$$_EventVoucherUsedCopyWith<_$_EventVoucherUsed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TonightEventsState {
  CubitStatus get getEventsStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  CubitStatus get useVoucherStatus => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  List<TonightEvent> get events => throw _privateConstructorUsedError;
  Option<DateTime?> get nearestEventStartDateTime =>
      throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String get filterPhrase => throw _privateConstructorUsedError;
  EventFilters get eventFilters => throw _privateConstructorUsedError;
  Map<MenuEventFilter, IFilter> get appliedMenuFilters =>
      throw _privateConstructorUsedError;
  Option<TonightEventsFailure> get failure =>
      throw _privateConstructorUsedError;
  Option<EventVoucher> get usedVoucher => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TonightEventsStateCopyWith<TonightEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonightEventsStateCopyWith<$Res> {
  factory $TonightEventsStateCopyWith(
          TonightEventsState value, $Res Function(TonightEventsState) then) =
      _$TonightEventsStateCopyWithImpl<$Res, TonightEventsState>;
  @useResult
  $Res call(
      {CubitStatus getEventsStatus,
      CubitStatus nextPageStatus,
      CubitStatus useVoucherStatus,
      Option<String> errorMessage,
      List<TonightEvent> events,
      Option<DateTime?> nearestEventStartDateTime,
      bool hasReachedMax,
      String filterPhrase,
      EventFilters eventFilters,
      Map<MenuEventFilter, IFilter> appliedMenuFilters,
      Option<TonightEventsFailure> failure,
      Option<EventVoucher> usedVoucher});

  $EventFiltersCopyWith<$Res> get eventFilters;
}

/// @nodoc
class _$TonightEventsStateCopyWithImpl<$Res, $Val extends TonightEventsState>
    implements $TonightEventsStateCopyWith<$Res> {
  _$TonightEventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getEventsStatus = null,
    Object? nextPageStatus = null,
    Object? useVoucherStatus = null,
    Object? errorMessage = null,
    Object? events = null,
    Object? nearestEventStartDateTime = null,
    Object? hasReachedMax = null,
    Object? filterPhrase = null,
    Object? eventFilters = null,
    Object? appliedMenuFilters = null,
    Object? failure = null,
    Object? usedVoucher = null,
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
      useVoucherStatus: null == useVoucherStatus
          ? _value.useVoucherStatus
          : useVoucherStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TonightEvent>,
      nearestEventStartDateTime: null == nearestEventStartDateTime
          ? _value.nearestEventStartDateTime
          : nearestEventStartDateTime // ignore: cast_nullable_to_non_nullable
              as Option<DateTime?>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      filterPhrase: null == filterPhrase
          ? _value.filterPhrase
          : filterPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      eventFilters: null == eventFilters
          ? _value.eventFilters
          : eventFilters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      appliedMenuFilters: null == appliedMenuFilters
          ? _value.appliedMenuFilters
          : appliedMenuFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuEventFilter, IFilter>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<TonightEventsFailure>,
      usedVoucher: null == usedVoucher
          ? _value.usedVoucher
          : usedVoucher // ignore: cast_nullable_to_non_nullable
              as Option<EventVoucher>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventFiltersCopyWith<$Res> get eventFilters {
    return $EventFiltersCopyWith<$Res>(_value.eventFilters, (value) {
      return _then(_value.copyWith(eventFilters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TonightEventsStateCopyWith<$Res>
    implements $TonightEventsStateCopyWith<$Res> {
  factory _$$_TonightEventsStateCopyWith(_$_TonightEventsState value,
          $Res Function(_$_TonightEventsState) then) =
      __$$_TonightEventsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getEventsStatus,
      CubitStatus nextPageStatus,
      CubitStatus useVoucherStatus,
      Option<String> errorMessage,
      List<TonightEvent> events,
      Option<DateTime?> nearestEventStartDateTime,
      bool hasReachedMax,
      String filterPhrase,
      EventFilters eventFilters,
      Map<MenuEventFilter, IFilter> appliedMenuFilters,
      Option<TonightEventsFailure> failure,
      Option<EventVoucher> usedVoucher});

  @override
  $EventFiltersCopyWith<$Res> get eventFilters;
}

/// @nodoc
class __$$_TonightEventsStateCopyWithImpl<$Res>
    extends _$TonightEventsStateCopyWithImpl<$Res, _$_TonightEventsState>
    implements _$$_TonightEventsStateCopyWith<$Res> {
  __$$_TonightEventsStateCopyWithImpl(
      _$_TonightEventsState _value, $Res Function(_$_TonightEventsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getEventsStatus = null,
    Object? nextPageStatus = null,
    Object? useVoucherStatus = null,
    Object? errorMessage = null,
    Object? events = null,
    Object? nearestEventStartDateTime = null,
    Object? hasReachedMax = null,
    Object? filterPhrase = null,
    Object? eventFilters = null,
    Object? appliedMenuFilters = null,
    Object? failure = null,
    Object? usedVoucher = null,
  }) {
    return _then(_$_TonightEventsState(
      getEventsStatus: null == getEventsStatus
          ? _value.getEventsStatus
          : getEventsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      useVoucherStatus: null == useVoucherStatus
          ? _value.useVoucherStatus
          : useVoucherStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TonightEvent>,
      nearestEventStartDateTime: null == nearestEventStartDateTime
          ? _value.nearestEventStartDateTime
          : nearestEventStartDateTime // ignore: cast_nullable_to_non_nullable
              as Option<DateTime?>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      filterPhrase: null == filterPhrase
          ? _value.filterPhrase
          : filterPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      eventFilters: null == eventFilters
          ? _value.eventFilters
          : eventFilters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      appliedMenuFilters: null == appliedMenuFilters
          ? _value._appliedMenuFilters
          : appliedMenuFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuEventFilter, IFilter>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<TonightEventsFailure>,
      usedVoucher: null == usedVoucher
          ? _value.usedVoucher
          : usedVoucher // ignore: cast_nullable_to_non_nullable
              as Option<EventVoucher>,
    ));
  }
}

/// @nodoc

class _$_TonightEventsState implements _TonightEventsState {
  const _$_TonightEventsState(
      {required this.getEventsStatus,
      required this.nextPageStatus,
      required this.useVoucherStatus,
      required this.errorMessage,
      required final List<TonightEvent> events,
      required this.nearestEventStartDateTime,
      required this.hasReachedMax,
      required this.filterPhrase,
      required this.eventFilters,
      required final Map<MenuEventFilter, IFilter> appliedMenuFilters,
      required this.failure,
      required this.usedVoucher})
      : _events = events,
        _appliedMenuFilters = appliedMenuFilters;

  @override
  final CubitStatus getEventsStatus;
  @override
  final CubitStatus nextPageStatus;
  @override
  final CubitStatus useVoucherStatus;
  @override
  final Option<String> errorMessage;
  final List<TonightEvent> _events;
  @override
  List<TonightEvent> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final Option<DateTime?> nearestEventStartDateTime;
  @override
  final bool hasReachedMax;
  @override
  final String filterPhrase;
  @override
  final EventFilters eventFilters;
  final Map<MenuEventFilter, IFilter> _appliedMenuFilters;
  @override
  Map<MenuEventFilter, IFilter> get appliedMenuFilters {
    if (_appliedMenuFilters is EqualUnmodifiableMapView)
      return _appliedMenuFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appliedMenuFilters);
  }

  @override
  final Option<TonightEventsFailure> failure;
  @override
  final Option<EventVoucher> usedVoucher;

  @override
  String toString() {
    return 'TonightEventsState(getEventsStatus: $getEventsStatus, nextPageStatus: $nextPageStatus, useVoucherStatus: $useVoucherStatus, errorMessage: $errorMessage, events: $events, nearestEventStartDateTime: $nearestEventStartDateTime, hasReachedMax: $hasReachedMax, filterPhrase: $filterPhrase, eventFilters: $eventFilters, appliedMenuFilters: $appliedMenuFilters, failure: $failure, usedVoucher: $usedVoucher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TonightEventsState &&
            (identical(other.getEventsStatus, getEventsStatus) ||
                other.getEventsStatus == getEventsStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            (identical(other.useVoucherStatus, useVoucherStatus) ||
                other.useVoucherStatus == useVoucherStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.nearestEventStartDateTime,
                    nearestEventStartDateTime) ||
                other.nearestEventStartDateTime == nearestEventStartDateTime) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.filterPhrase, filterPhrase) ||
                other.filterPhrase == filterPhrase) &&
            (identical(other.eventFilters, eventFilters) ||
                other.eventFilters == eventFilters) &&
            const DeepCollectionEquality()
                .equals(other._appliedMenuFilters, _appliedMenuFilters) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.usedVoucher, usedVoucher) ||
                other.usedVoucher == usedVoucher));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getEventsStatus,
      nextPageStatus,
      useVoucherStatus,
      errorMessage,
      const DeepCollectionEquality().hash(_events),
      nearestEventStartDateTime,
      hasReachedMax,
      filterPhrase,
      eventFilters,
      const DeepCollectionEquality().hash(_appliedMenuFilters),
      failure,
      usedVoucher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TonightEventsStateCopyWith<_$_TonightEventsState> get copyWith =>
      __$$_TonightEventsStateCopyWithImpl<_$_TonightEventsState>(
          this, _$identity);
}

abstract class _TonightEventsState implements TonightEventsState {
  const factory _TonightEventsState(
      {required final CubitStatus getEventsStatus,
      required final CubitStatus nextPageStatus,
      required final CubitStatus useVoucherStatus,
      required final Option<String> errorMessage,
      required final List<TonightEvent> events,
      required final Option<DateTime?> nearestEventStartDateTime,
      required final bool hasReachedMax,
      required final String filterPhrase,
      required final EventFilters eventFilters,
      required final Map<MenuEventFilter, IFilter> appliedMenuFilters,
      required final Option<TonightEventsFailure> failure,
      required final Option<EventVoucher> usedVoucher}) = _$_TonightEventsState;

  @override
  CubitStatus get getEventsStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  CubitStatus get useVoucherStatus;
  @override
  Option<String> get errorMessage;
  @override
  List<TonightEvent> get events;
  @override
  Option<DateTime?> get nearestEventStartDateTime;
  @override
  bool get hasReachedMax;
  @override
  String get filterPhrase;
  @override
  EventFilters get eventFilters;
  @override
  Map<MenuEventFilter, IFilter> get appliedMenuFilters;
  @override
  Option<TonightEventsFailure> get failure;
  @override
  Option<EventVoucher> get usedVoucher;
  @override
  @JsonKey(ignore: true)
  _$$_TonightEventsStateCopyWith<_$_TonightEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tonight_events_from_venues_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TonightEventsFromVenuesEvent {
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
abstract class $TonightEventsFromVenuesEventCopyWith<$Res> {
  factory $TonightEventsFromVenuesEventCopyWith(
          TonightEventsFromVenuesEvent value,
          $Res Function(TonightEventsFromVenuesEvent) then) =
      _$TonightEventsFromVenuesEventCopyWithImpl<$Res,
          TonightEventsFromVenuesEvent>;
}

/// @nodoc
class _$TonightEventsFromVenuesEventCopyWithImpl<$Res,
        $Val extends TonightEventsFromVenuesEvent>
    implements $TonightEventsFromVenuesEventCopyWith<$Res> {
  _$TonightEventsFromVenuesEventCopyWithImpl(this._value, this._then);

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
    extends _$TonightEventsFromVenuesEventCopyWithImpl<$Res,
        _$EventsFetchedImpl> implements _$$EventsFetchedImplCopyWith<$Res> {
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
    return 'TonightEventsFromVenuesEvent.eventsFetched(userLocation: $userLocation)';
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

abstract class _EventsFetched implements TonightEventsFromVenuesEvent {
  const factory _EventsFetched(final Option<LatLng> userLocation) =
      _$EventsFetchedImpl;

  Option<LatLng> get userLocation;
  @JsonKey(ignore: true)
  _$$EventsFetchedImplCopyWith<_$EventsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$TonightEventsFromVenuesEventCopyWithImpl<$Res,
        _$NextPageEventsFetchedImpl>
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
    return 'TonightEventsFromVenuesEvent.nextPageEventsFetched()';
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

abstract class _NextPageEventsFetched implements TonightEventsFromVenuesEvent {
  const factory _NextPageEventsFetched() = _$NextPageEventsFetchedImpl;
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
    extends _$TonightEventsFromVenuesEventCopyWithImpl<$Res,
        _$MenuFiltersAppliedImpl>
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
    return 'TonightEventsFromVenuesEvent.menuFiltersApplied(filters: $filters, appliedFilters: $appliedFilters)';
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

abstract class _MenuFiltersApplied implements TonightEventsFromVenuesEvent {
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
    extends _$TonightEventsFromVenuesEventCopyWithImpl<$Res,
        _$MenuFilterRemovedImpl>
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
    return 'TonightEventsFromVenuesEvent.menuFilterRemoved(filter: $filter)';
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

abstract class _MenuFilterRemoved implements TonightEventsFromVenuesEvent {
  const factory _MenuFilterRemoved(final MenuEventFilter filter) =
      _$MenuFilterRemovedImpl;

  MenuEventFilter get filter;
  @JsonKey(ignore: true)
  _$$MenuFilterRemovedImplCopyWith<_$MenuFilterRemovedImpl> get copyWith =>
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
    extends _$TonightEventsFromVenuesEventCopyWithImpl<$Res,
        _$EventsRefreshedImpl> implements _$$EventsRefreshedImplCopyWith<$Res> {
  __$$EventsRefreshedImplCopyWithImpl(
      _$EventsRefreshedImpl _value, $Res Function(_$EventsRefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventsRefreshedImpl implements _EventsRefreshed {
  const _$EventsRefreshedImpl();

  @override
  String toString() {
    return 'TonightEventsFromVenuesEvent.eventsRefreshed()';
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

abstract class _EventsRefreshed implements TonightEventsFromVenuesEvent {
  const factory _EventsRefreshed() = _$EventsRefreshedImpl;
}

/// @nodoc
abstract class _$$EventVoucherUsedImplCopyWith<$Res> {
  factory _$$EventVoucherUsedImplCopyWith(_$EventVoucherUsedImpl value,
          $Res Function(_$EventVoucherUsedImpl) then) =
      __$$EventVoucherUsedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventVoucher voucher});

  $EventVoucherCopyWith<$Res> get voucher;
}

/// @nodoc
class __$$EventVoucherUsedImplCopyWithImpl<$Res>
    extends _$TonightEventsFromVenuesEventCopyWithImpl<$Res,
        _$EventVoucherUsedImpl>
    implements _$$EventVoucherUsedImplCopyWith<$Res> {
  __$$EventVoucherUsedImplCopyWithImpl(_$EventVoucherUsedImpl _value,
      $Res Function(_$EventVoucherUsedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucher = null,
  }) {
    return _then(_$EventVoucherUsedImpl(
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

class _$EventVoucherUsedImpl implements _EventVoucherUsed {
  const _$EventVoucherUsedImpl(this.voucher);

  @override
  final EventVoucher voucher;

  @override
  String toString() {
    return 'TonightEventsFromVenuesEvent.eventVoucherUsed(voucher: $voucher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventVoucherUsedImpl &&
            (identical(other.voucher, voucher) || other.voucher == voucher));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voucher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventVoucherUsedImplCopyWith<_$EventVoucherUsedImpl> get copyWith =>
      __$$EventVoucherUsedImplCopyWithImpl<_$EventVoucherUsedImpl>(
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

abstract class _EventVoucherUsed implements TonightEventsFromVenuesEvent {
  const factory _EventVoucherUsed(final EventVoucher voucher) =
      _$EventVoucherUsedImpl;

  EventVoucher get voucher;
  @JsonKey(ignore: true)
  _$$EventVoucherUsedImplCopyWith<_$EventVoucherUsedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TonightEventsFromVenuesState {
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
  Option<DashboardFailure> get failure => throw _privateConstructorUsedError;
  Option<EventVoucher> get usedVoucher => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TonightEventsFromVenuesStateCopyWith<TonightEventsFromVenuesState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonightEventsFromVenuesStateCopyWith<$Res> {
  factory $TonightEventsFromVenuesStateCopyWith(
          TonightEventsFromVenuesState value,
          $Res Function(TonightEventsFromVenuesState) then) =
      _$TonightEventsFromVenuesStateCopyWithImpl<$Res,
          TonightEventsFromVenuesState>;
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
      Option<DashboardFailure> failure,
      Option<EventVoucher> usedVoucher});

  $EventFiltersCopyWith<$Res> get eventFilters;
}

/// @nodoc
class _$TonightEventsFromVenuesStateCopyWithImpl<$Res,
        $Val extends TonightEventsFromVenuesState>
    implements $TonightEventsFromVenuesStateCopyWith<$Res> {
  _$TonightEventsFromVenuesStateCopyWithImpl(this._value, this._then);

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
              as Option<DashboardFailure>,
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
abstract class _$$TonightEventsFromVenuesStateImplCopyWith<$Res>
    implements $TonightEventsFromVenuesStateCopyWith<$Res> {
  factory _$$TonightEventsFromVenuesStateImplCopyWith(
          _$TonightEventsFromVenuesStateImpl value,
          $Res Function(_$TonightEventsFromVenuesStateImpl) then) =
      __$$TonightEventsFromVenuesStateImplCopyWithImpl<$Res>;
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
      Option<DashboardFailure> failure,
      Option<EventVoucher> usedVoucher});

  @override
  $EventFiltersCopyWith<$Res> get eventFilters;
}

/// @nodoc
class __$$TonightEventsFromVenuesStateImplCopyWithImpl<$Res>
    extends _$TonightEventsFromVenuesStateCopyWithImpl<$Res,
        _$TonightEventsFromVenuesStateImpl>
    implements _$$TonightEventsFromVenuesStateImplCopyWith<$Res> {
  __$$TonightEventsFromVenuesStateImplCopyWithImpl(
      _$TonightEventsFromVenuesStateImpl _value,
      $Res Function(_$TonightEventsFromVenuesStateImpl) _then)
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
    return _then(_$TonightEventsFromVenuesStateImpl(
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
              as Option<DashboardFailure>,
      usedVoucher: null == usedVoucher
          ? _value.usedVoucher
          : usedVoucher // ignore: cast_nullable_to_non_nullable
              as Option<EventVoucher>,
    ));
  }
}

/// @nodoc

class _$TonightEventsFromVenuesStateImpl
    implements _TonightEventsFromVenuesState {
  const _$TonightEventsFromVenuesStateImpl(
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
  final Option<DashboardFailure> failure;
  @override
  final Option<EventVoucher> usedVoucher;

  @override
  String toString() {
    return 'TonightEventsFromVenuesState(getEventsStatus: $getEventsStatus, nextPageStatus: $nextPageStatus, useVoucherStatus: $useVoucherStatus, errorMessage: $errorMessage, events: $events, nearestEventStartDateTime: $nearestEventStartDateTime, hasReachedMax: $hasReachedMax, filterPhrase: $filterPhrase, eventFilters: $eventFilters, appliedMenuFilters: $appliedMenuFilters, failure: $failure, usedVoucher: $usedVoucher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TonightEventsFromVenuesStateImpl &&
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
  _$$TonightEventsFromVenuesStateImplCopyWith<
          _$TonightEventsFromVenuesStateImpl>
      get copyWith => __$$TonightEventsFromVenuesStateImplCopyWithImpl<
          _$TonightEventsFromVenuesStateImpl>(this, _$identity);
}

abstract class _TonightEventsFromVenuesState
    implements TonightEventsFromVenuesState {
  const factory _TonightEventsFromVenuesState(
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
          required final Option<DashboardFailure> failure,
          required final Option<EventVoucher> usedVoucher}) =
      _$TonightEventsFromVenuesStateImpl;

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
  Option<DashboardFailure> get failure;
  @override
  Option<EventVoucher> get usedVoucher;
  @override
  @JsonKey(ignore: true)
  _$$TonightEventsFromVenuesStateImplCopyWith<
          _$TonightEventsFromVenuesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

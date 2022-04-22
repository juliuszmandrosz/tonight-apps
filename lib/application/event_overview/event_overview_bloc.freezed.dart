// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventOverviewEventTearOff {
  const _$EventOverviewEventTearOff();

  _EventsFetched eventsFetched(EventFilters filters, SortModel sortModel) {
    return _EventsFetched(
      filters,
      sortModel,
    );
  }

  _NextEventsPageFetched nextEventsPageFetched() {
    return const _NextEventsPageFetched();
  }

  _EventToStateAdded eventToStateAdded(Event event) {
    return _EventToStateAdded(
      event,
    );
  }
}

/// @nodoc
const $EventOverviewEvent = _$EventOverviewEventTearOff();

/// @nodoc
mixin _$EventOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, SortModel sortModel)
        eventsFetched,
    required TResult Function() nextEventsPageFetched,
    required TResult Function(Event event) eventToStateAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_NextEventsPageFetched value)
        nextEventsPageFetched,
    required TResult Function(_EventToStateAdded value) eventToStateAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventOverviewEventCopyWith<$Res> {
  factory $EventOverviewEventCopyWith(
          EventOverviewEvent value, $Res Function(EventOverviewEvent) then) =
      _$EventOverviewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventOverviewEventCopyWithImpl<$Res>
    implements $EventOverviewEventCopyWith<$Res> {
  _$EventOverviewEventCopyWithImpl(this._value, this._then);

  final EventOverviewEvent _value;
  // ignore: unused_field
  final $Res Function(EventOverviewEvent) _then;
}

/// @nodoc
abstract class _$EventsFetchedCopyWith<$Res> {
  factory _$EventsFetchedCopyWith(
          _EventsFetched value, $Res Function(_EventsFetched) then) =
      __$EventsFetchedCopyWithImpl<$Res>;
  $Res call({EventFilters filters, SortModel sortModel});

  $EventFiltersCopyWith<$Res> get filters;
  $SortModelCopyWith<$Res> get sortModel;
}

/// @nodoc
class __$EventsFetchedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res>
    implements _$EventsFetchedCopyWith<$Res> {
  __$EventsFetchedCopyWithImpl(
      _EventsFetched _value, $Res Function(_EventsFetched) _then)
      : super(_value, (v) => _then(v as _EventsFetched));

  @override
  _EventsFetched get _value => super._value as _EventsFetched;

  @override
  $Res call({
    Object? filters = freezed,
    Object? sortModel = freezed,
  }) {
    return _then(_EventsFetched(
      filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      sortModel == freezed
          ? _value.sortModel
          : sortModel // ignore: cast_nullable_to_non_nullable
              as SortModel,
    ));
  }

  @override
  $EventFiltersCopyWith<$Res> get filters {
    return $EventFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }

  @override
  $SortModelCopyWith<$Res> get sortModel {
    return $SortModelCopyWith<$Res>(_value.sortModel, (value) {
      return _then(_value.copyWith(sortModel: value));
    });
  }
}

/// @nodoc

class _$_EventsFetched implements _EventsFetched {
  const _$_EventsFetched(this.filters, this.sortModel);

  @override
  final EventFilters filters;
  @override
  final SortModel sortModel;

  @override
  String toString() {
    return 'EventOverviewEvent.eventsFetched(filters: $filters, sortModel: $sortModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventsFetched &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            const DeepCollectionEquality().equals(other.sortModel, sortModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filters),
      const DeepCollectionEquality().hash(sortModel));

  @JsonKey(ignore: true)
  @override
  _$EventsFetchedCopyWith<_EventsFetched> get copyWith =>
      __$EventsFetchedCopyWithImpl<_EventsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, SortModel sortModel)
        eventsFetched,
    required TResult Function() nextEventsPageFetched,
    required TResult Function(Event event) eventToStateAdded,
  }) {
    return eventsFetched(filters, sortModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
  }) {
    return eventsFetched?.call(filters, sortModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    required TResult orElse(),
  }) {
    if (eventsFetched != null) {
      return eventsFetched(filters, sortModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_NextEventsPageFetched value)
        nextEventsPageFetched,
    required TResult Function(_EventToStateAdded value) eventToStateAdded,
  }) {
    return eventsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
  }) {
    return eventsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    required TResult orElse(),
  }) {
    if (eventsFetched != null) {
      return eventsFetched(this);
    }
    return orElse();
  }
}

abstract class _EventsFetched implements EventOverviewEvent {
  const factory _EventsFetched(EventFilters filters, SortModel sortModel) =
      _$_EventsFetched;

  EventFilters get filters;
  SortModel get sortModel;
  @JsonKey(ignore: true)
  _$EventsFetchedCopyWith<_EventsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NextEventsPageFetchedCopyWith<$Res> {
  factory _$NextEventsPageFetchedCopyWith(_NextEventsPageFetched value,
          $Res Function(_NextEventsPageFetched) then) =
      __$NextEventsPageFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextEventsPageFetchedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res>
    implements _$NextEventsPageFetchedCopyWith<$Res> {
  __$NextEventsPageFetchedCopyWithImpl(_NextEventsPageFetched _value,
      $Res Function(_NextEventsPageFetched) _then)
      : super(_value, (v) => _then(v as _NextEventsPageFetched));

  @override
  _NextEventsPageFetched get _value => super._value as _NextEventsPageFetched;
}

/// @nodoc

class _$_NextEventsPageFetched implements _NextEventsPageFetched {
  const _$_NextEventsPageFetched();

  @override
  String toString() {
    return 'EventOverviewEvent.nextEventsPageFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NextEventsPageFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, SortModel sortModel)
        eventsFetched,
    required TResult Function() nextEventsPageFetched,
    required TResult Function(Event event) eventToStateAdded,
  }) {
    return nextEventsPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
  }) {
    return nextEventsPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    required TResult orElse(),
  }) {
    if (nextEventsPageFetched != null) {
      return nextEventsPageFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_NextEventsPageFetched value)
        nextEventsPageFetched,
    required TResult Function(_EventToStateAdded value) eventToStateAdded,
  }) {
    return nextEventsPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
  }) {
    return nextEventsPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    required TResult orElse(),
  }) {
    if (nextEventsPageFetched != null) {
      return nextEventsPageFetched(this);
    }
    return orElse();
  }
}

abstract class _NextEventsPageFetched implements EventOverviewEvent {
  const factory _NextEventsPageFetched() = _$_NextEventsPageFetched;
}

/// @nodoc
abstract class _$EventToStateAddedCopyWith<$Res> {
  factory _$EventToStateAddedCopyWith(
          _EventToStateAdded value, $Res Function(_EventToStateAdded) then) =
      __$EventToStateAddedCopyWithImpl<$Res>;
  $Res call({Event event});
}

/// @nodoc
class __$EventToStateAddedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res>
    implements _$EventToStateAddedCopyWith<$Res> {
  __$EventToStateAddedCopyWithImpl(
      _EventToStateAdded _value, $Res Function(_EventToStateAdded) _then)
      : super(_value, (v) => _then(v as _EventToStateAdded));

  @override
  _EventToStateAdded get _value => super._value as _EventToStateAdded;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_EventToStateAdded(
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc

class _$_EventToStateAdded implements _EventToStateAdded {
  const _$_EventToStateAdded(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventOverviewEvent.eventToStateAdded(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventToStateAdded &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$EventToStateAddedCopyWith<_EventToStateAdded> get copyWith =>
      __$EventToStateAddedCopyWithImpl<_EventToStateAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, SortModel sortModel)
        eventsFetched,
    required TResult Function() nextEventsPageFetched,
    required TResult Function(Event event) eventToStateAdded,
  }) {
    return eventToStateAdded(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
  }) {
    return eventToStateAdded?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    required TResult orElse(),
  }) {
    if (eventToStateAdded != null) {
      return eventToStateAdded(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_NextEventsPageFetched value)
        nextEventsPageFetched,
    required TResult Function(_EventToStateAdded value) eventToStateAdded,
  }) {
    return eventToStateAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
  }) {
    return eventToStateAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    required TResult orElse(),
  }) {
    if (eventToStateAdded != null) {
      return eventToStateAdded(this);
    }
    return orElse();
  }
}

abstract class _EventToStateAdded implements EventOverviewEvent {
  const factory _EventToStateAdded(Event event) = _$_EventToStateAdded;

  Event get event;
  @JsonKey(ignore: true)
  _$EventToStateAddedCopyWith<_EventToStateAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EventOverviewStateTearOff {
  const _$EventOverviewStateTearOff();

  _EventOverviewState call(
      {required List<Event> events,
      required bool hasReachedMax,
      required CubitStatus status,
      required EventFilters eventFilters,
      required SortModel sortModel}) {
    return _EventOverviewState(
      events: events,
      hasReachedMax: hasReachedMax,
      status: status,
      eventFilters: eventFilters,
      sortModel: sortModel,
    );
  }
}

/// @nodoc
const $EventOverviewState = _$EventOverviewStateTearOff();

/// @nodoc
mixin _$EventOverviewState {
  List<Event> get events => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  EventFilters get eventFilters => throw _privateConstructorUsedError;
  SortModel get sortModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventOverviewStateCopyWith<EventOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventOverviewStateCopyWith<$Res> {
  factory $EventOverviewStateCopyWith(
          EventOverviewState value, $Res Function(EventOverviewState) then) =
      _$EventOverviewStateCopyWithImpl<$Res>;
  $Res call(
      {List<Event> events,
      bool hasReachedMax,
      CubitStatus status,
      EventFilters eventFilters,
      SortModel sortModel});

  $EventFiltersCopyWith<$Res> get eventFilters;
  $SortModelCopyWith<$Res> get sortModel;
}

/// @nodoc
class _$EventOverviewStateCopyWithImpl<$Res>
    implements $EventOverviewStateCopyWith<$Res> {
  _$EventOverviewStateCopyWithImpl(this._value, this._then);

  final EventOverviewState _value;
  // ignore: unused_field
  final $Res Function(EventOverviewState) _then;

  @override
  $Res call({
    Object? events = freezed,
    Object? hasReachedMax = freezed,
    Object? status = freezed,
    Object? eventFilters = freezed,
    Object? sortModel = freezed,
  }) {
    return _then(_value.copyWith(
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      eventFilters: eventFilters == freezed
          ? _value.eventFilters
          : eventFilters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      sortModel: sortModel == freezed
          ? _value.sortModel
          : sortModel // ignore: cast_nullable_to_non_nullable
              as SortModel,
    ));
  }

  @override
  $EventFiltersCopyWith<$Res> get eventFilters {
    return $EventFiltersCopyWith<$Res>(_value.eventFilters, (value) {
      return _then(_value.copyWith(eventFilters: value));
    });
  }

  @override
  $SortModelCopyWith<$Res> get sortModel {
    return $SortModelCopyWith<$Res>(_value.sortModel, (value) {
      return _then(_value.copyWith(sortModel: value));
    });
  }
}

/// @nodoc
abstract class _$EventOverviewStateCopyWith<$Res>
    implements $EventOverviewStateCopyWith<$Res> {
  factory _$EventOverviewStateCopyWith(
          _EventOverviewState value, $Res Function(_EventOverviewState) then) =
      __$EventOverviewStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Event> events,
      bool hasReachedMax,
      CubitStatus status,
      EventFilters eventFilters,
      SortModel sortModel});

  @override
  $EventFiltersCopyWith<$Res> get eventFilters;
  @override
  $SortModelCopyWith<$Res> get sortModel;
}

/// @nodoc
class __$EventOverviewStateCopyWithImpl<$Res>
    extends _$EventOverviewStateCopyWithImpl<$Res>
    implements _$EventOverviewStateCopyWith<$Res> {
  __$EventOverviewStateCopyWithImpl(
      _EventOverviewState _value, $Res Function(_EventOverviewState) _then)
      : super(_value, (v) => _then(v as _EventOverviewState));

  @override
  _EventOverviewState get _value => super._value as _EventOverviewState;

  @override
  $Res call({
    Object? events = freezed,
    Object? hasReachedMax = freezed,
    Object? status = freezed,
    Object? eventFilters = freezed,
    Object? sortModel = freezed,
  }) {
    return _then(_EventOverviewState(
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      eventFilters: eventFilters == freezed
          ? _value.eventFilters
          : eventFilters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      sortModel: sortModel == freezed
          ? _value.sortModel
          : sortModel // ignore: cast_nullable_to_non_nullable
              as SortModel,
    ));
  }
}

/// @nodoc

class _$_EventOverviewState extends _EventOverviewState {
  _$_EventOverviewState(
      {required this.events,
      required this.hasReachedMax,
      required this.status,
      required this.eventFilters,
      required this.sortModel})
      : super._();

  @override
  final List<Event> events;
  @override
  final bool hasReachedMax;
  @override
  final CubitStatus status;
  @override
  final EventFilters eventFilters;
  @override
  final SortModel sortModel;

  @override
  String toString() {
    return 'EventOverviewState(events: $events, hasReachedMax: $hasReachedMax, status: $status, eventFilters: $eventFilters, sortModel: $sortModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventOverviewState &&
            const DeepCollectionEquality().equals(other.events, events) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.eventFilters, eventFilters) &&
            const DeepCollectionEquality().equals(other.sortModel, sortModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(events),
      const DeepCollectionEquality().hash(hasReachedMax),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(eventFilters),
      const DeepCollectionEquality().hash(sortModel));

  @JsonKey(ignore: true)
  @override
  _$EventOverviewStateCopyWith<_EventOverviewState> get copyWith =>
      __$EventOverviewStateCopyWithImpl<_EventOverviewState>(this, _$identity);
}

abstract class _EventOverviewState extends EventOverviewState {
  factory _EventOverviewState(
      {required List<Event> events,
      required bool hasReachedMax,
      required CubitStatus status,
      required EventFilters eventFilters,
      required SortModel sortModel}) = _$_EventOverviewState;
  _EventOverviewState._() : super._();

  @override
  List<Event> get events;
  @override
  bool get hasReachedMax;
  @override
  CubitStatus get status;
  @override
  EventFilters get eventFilters;
  @override
  SortModel get sortModel;
  @override
  @JsonKey(ignore: true)
  _$EventOverviewStateCopyWith<_EventOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

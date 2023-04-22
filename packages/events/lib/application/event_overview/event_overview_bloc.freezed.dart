// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, EventSortModel sortModel)
        eventsFetched,
    required TResult Function() nextEventsPageFetched,
    required TResult Function(Event event) eventToStateAdded,
    required TResult Function(Event oldEvent, Event updatedEvent)
        eventInStateUpdated,
    required TResult Function(Event event) eventInStateDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult? Function()? nextEventsPageFetched,
    TResult? Function(Event event)? eventToStateAdded,
    TResult? Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult? Function(Event event)? eventInStateDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventsFetched value) eventsFetched,
    required TResult Function(_NextEventsPageFetched value)
        nextEventsPageFetched,
    required TResult Function(_EventToStateAdded value) eventToStateAdded,
    required TResult Function(_EventInStateUpdated value) eventInStateUpdated,
    required TResult Function(_EventInStateDeleted value) eventInStateDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult? Function(_EventToStateAdded value)? eventToStateAdded,
    TResult? Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult? Function(_EventInStateDeleted value)? eventInStateDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventOverviewEventCopyWith<$Res> {
  factory $EventOverviewEventCopyWith(
          EventOverviewEvent value, $Res Function(EventOverviewEvent) then) =
      _$EventOverviewEventCopyWithImpl<$Res, EventOverviewEvent>;
}

/// @nodoc
class _$EventOverviewEventCopyWithImpl<$Res, $Val extends EventOverviewEvent>
    implements $EventOverviewEventCopyWith<$Res> {
  _$EventOverviewEventCopyWithImpl(this._value, this._then);

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
  $Res call({EventFilters filters, EventSortModel sortModel});

  $EventFiltersCopyWith<$Res> get filters;
  $EventSortModelCopyWith<$Res> get sortModel;
}

/// @nodoc
class __$$_EventsFetchedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res, _$_EventsFetched>
    implements _$$_EventsFetchedCopyWith<$Res> {
  __$$_EventsFetchedCopyWithImpl(
      _$_EventsFetched _value, $Res Function(_$_EventsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? sortModel = null,
  }) {
    return _then(_$_EventsFetched(
      null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      null == sortModel
          ? _value.sortModel
          : sortModel // ignore: cast_nullable_to_non_nullable
              as EventSortModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventFiltersCopyWith<$Res> get filters {
    return $EventFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventSortModelCopyWith<$Res> get sortModel {
    return $EventSortModelCopyWith<$Res>(_value.sortModel, (value) {
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
  final EventSortModel sortModel;

  @override
  String toString() {
    return 'EventOverviewEvent.eventsFetched(filters: $filters, sortModel: $sortModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsFetched &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.sortModel, sortModel) ||
                other.sortModel == sortModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters, sortModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsFetchedCopyWith<_$_EventsFetched> get copyWith =>
      __$$_EventsFetchedCopyWithImpl<_$_EventsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, EventSortModel sortModel)
        eventsFetched,
    required TResult Function() nextEventsPageFetched,
    required TResult Function(Event event) eventToStateAdded,
    required TResult Function(Event oldEvent, Event updatedEvent)
        eventInStateUpdated,
    required TResult Function(Event event) eventInStateDeleted,
  }) {
    return eventsFetched(filters, sortModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult? Function()? nextEventsPageFetched,
    TResult? Function(Event event)? eventToStateAdded,
    TResult? Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult? Function(Event event)? eventInStateDeleted,
  }) {
    return eventsFetched?.call(filters, sortModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
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
    required TResult Function(_EventInStateUpdated value) eventInStateUpdated,
    required TResult Function(_EventInStateDeleted value) eventInStateDeleted,
  }) {
    return eventsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult? Function(_EventToStateAdded value)? eventToStateAdded,
    TResult? Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult? Function(_EventInStateDeleted value)? eventInStateDeleted,
  }) {
    return eventsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
    required TResult orElse(),
  }) {
    if (eventsFetched != null) {
      return eventsFetched(this);
    }
    return orElse();
  }
}

abstract class _EventsFetched implements EventOverviewEvent {
  const factory _EventsFetched(
          final EventFilters filters, final EventSortModel sortModel) =
      _$_EventsFetched;

  EventFilters get filters;
  EventSortModel get sortModel;
  @JsonKey(ignore: true)
  _$$_EventsFetchedCopyWith<_$_EventsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextEventsPageFetchedCopyWith<$Res> {
  factory _$$_NextEventsPageFetchedCopyWith(_$_NextEventsPageFetched value,
          $Res Function(_$_NextEventsPageFetched) then) =
      __$$_NextEventsPageFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextEventsPageFetchedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res, _$_NextEventsPageFetched>
    implements _$$_NextEventsPageFetchedCopyWith<$Res> {
  __$$_NextEventsPageFetchedCopyWithImpl(_$_NextEventsPageFetched _value,
      $Res Function(_$_NextEventsPageFetched) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_NextEventsPageFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, EventSortModel sortModel)
        eventsFetched,
    required TResult Function() nextEventsPageFetched,
    required TResult Function(Event event) eventToStateAdded,
    required TResult Function(Event oldEvent, Event updatedEvent)
        eventInStateUpdated,
    required TResult Function(Event event) eventInStateDeleted,
  }) {
    return nextEventsPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult? Function()? nextEventsPageFetched,
    TResult? Function(Event event)? eventToStateAdded,
    TResult? Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult? Function(Event event)? eventInStateDeleted,
  }) {
    return nextEventsPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
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
    required TResult Function(_EventInStateUpdated value) eventInStateUpdated,
    required TResult Function(_EventInStateDeleted value) eventInStateDeleted,
  }) {
    return nextEventsPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult? Function(_EventToStateAdded value)? eventToStateAdded,
    TResult? Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult? Function(_EventInStateDeleted value)? eventInStateDeleted,
  }) {
    return nextEventsPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
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
abstract class _$$_EventToStateAddedCopyWith<$Res> {
  factory _$$_EventToStateAddedCopyWith(_$_EventToStateAdded value,
          $Res Function(_$_EventToStateAdded) then) =
      __$$_EventToStateAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});
}

/// @nodoc
class __$$_EventToStateAddedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res, _$_EventToStateAdded>
    implements _$$_EventToStateAddedCopyWith<$Res> {
  __$$_EventToStateAddedCopyWithImpl(
      _$_EventToStateAdded _value, $Res Function(_$_EventToStateAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_EventToStateAdded(
      null == event
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
            other is _$_EventToStateAdded &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventToStateAddedCopyWith<_$_EventToStateAdded> get copyWith =>
      __$$_EventToStateAddedCopyWithImpl<_$_EventToStateAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, EventSortModel sortModel)
        eventsFetched,
    required TResult Function() nextEventsPageFetched,
    required TResult Function(Event event) eventToStateAdded,
    required TResult Function(Event oldEvent, Event updatedEvent)
        eventInStateUpdated,
    required TResult Function(Event event) eventInStateDeleted,
  }) {
    return eventToStateAdded(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult? Function()? nextEventsPageFetched,
    TResult? Function(Event event)? eventToStateAdded,
    TResult? Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult? Function(Event event)? eventInStateDeleted,
  }) {
    return eventToStateAdded?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
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
    required TResult Function(_EventInStateUpdated value) eventInStateUpdated,
    required TResult Function(_EventInStateDeleted value) eventInStateDeleted,
  }) {
    return eventToStateAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult? Function(_EventToStateAdded value)? eventToStateAdded,
    TResult? Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult? Function(_EventInStateDeleted value)? eventInStateDeleted,
  }) {
    return eventToStateAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
    required TResult orElse(),
  }) {
    if (eventToStateAdded != null) {
      return eventToStateAdded(this);
    }
    return orElse();
  }
}

abstract class _EventToStateAdded implements EventOverviewEvent {
  const factory _EventToStateAdded(final Event event) = _$_EventToStateAdded;

  Event get event;
  @JsonKey(ignore: true)
  _$$_EventToStateAddedCopyWith<_$_EventToStateAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventInStateUpdatedCopyWith<$Res> {
  factory _$$_EventInStateUpdatedCopyWith(_$_EventInStateUpdated value,
          $Res Function(_$_EventInStateUpdated) then) =
      __$$_EventInStateUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Event oldEvent, Event updatedEvent});
}

/// @nodoc
class __$$_EventInStateUpdatedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res, _$_EventInStateUpdated>
    implements _$$_EventInStateUpdatedCopyWith<$Res> {
  __$$_EventInStateUpdatedCopyWithImpl(_$_EventInStateUpdated _value,
      $Res Function(_$_EventInStateUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldEvent = null,
    Object? updatedEvent = null,
  }) {
    return _then(_$_EventInStateUpdated(
      null == oldEvent
          ? _value.oldEvent
          : oldEvent // ignore: cast_nullable_to_non_nullable
              as Event,
      null == updatedEvent
          ? _value.updatedEvent
          : updatedEvent // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc

class _$_EventInStateUpdated implements _EventInStateUpdated {
  const _$_EventInStateUpdated(this.oldEvent, this.updatedEvent);

  @override
  final Event oldEvent;
  @override
  final Event updatedEvent;

  @override
  String toString() {
    return 'EventOverviewEvent.eventInStateUpdated(oldEvent: $oldEvent, updatedEvent: $updatedEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventInStateUpdated &&
            (identical(other.oldEvent, oldEvent) ||
                other.oldEvent == oldEvent) &&
            (identical(other.updatedEvent, updatedEvent) ||
                other.updatedEvent == updatedEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldEvent, updatedEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventInStateUpdatedCopyWith<_$_EventInStateUpdated> get copyWith =>
      __$$_EventInStateUpdatedCopyWithImpl<_$_EventInStateUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, EventSortModel sortModel)
        eventsFetched,
    required TResult Function() nextEventsPageFetched,
    required TResult Function(Event event) eventToStateAdded,
    required TResult Function(Event oldEvent, Event updatedEvent)
        eventInStateUpdated,
    required TResult Function(Event event) eventInStateDeleted,
  }) {
    return eventInStateUpdated(oldEvent, updatedEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult? Function()? nextEventsPageFetched,
    TResult? Function(Event event)? eventToStateAdded,
    TResult? Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult? Function(Event event)? eventInStateDeleted,
  }) {
    return eventInStateUpdated?.call(oldEvent, updatedEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
    required TResult orElse(),
  }) {
    if (eventInStateUpdated != null) {
      return eventInStateUpdated(oldEvent, updatedEvent);
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
    required TResult Function(_EventInStateUpdated value) eventInStateUpdated,
    required TResult Function(_EventInStateDeleted value) eventInStateDeleted,
  }) {
    return eventInStateUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult? Function(_EventToStateAdded value)? eventToStateAdded,
    TResult? Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult? Function(_EventInStateDeleted value)? eventInStateDeleted,
  }) {
    return eventInStateUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
    required TResult orElse(),
  }) {
    if (eventInStateUpdated != null) {
      return eventInStateUpdated(this);
    }
    return orElse();
  }
}

abstract class _EventInStateUpdated implements EventOverviewEvent {
  const factory _EventInStateUpdated(
      final Event oldEvent, final Event updatedEvent) = _$_EventInStateUpdated;

  Event get oldEvent;
  Event get updatedEvent;
  @JsonKey(ignore: true)
  _$$_EventInStateUpdatedCopyWith<_$_EventInStateUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventInStateDeletedCopyWith<$Res> {
  factory _$$_EventInStateDeletedCopyWith(_$_EventInStateDeleted value,
          $Res Function(_$_EventInStateDeleted) then) =
      __$$_EventInStateDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});
}

/// @nodoc
class __$$_EventInStateDeletedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res, _$_EventInStateDeleted>
    implements _$$_EventInStateDeletedCopyWith<$Res> {
  __$$_EventInStateDeletedCopyWithImpl(_$_EventInStateDeleted _value,
      $Res Function(_$_EventInStateDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_EventInStateDeleted(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc

class _$_EventInStateDeleted implements _EventInStateDeleted {
  const _$_EventInStateDeleted(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventOverviewEvent.eventInStateDeleted(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventInStateDeleted &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventInStateDeletedCopyWith<_$_EventInStateDeleted> get copyWith =>
      __$$_EventInStateDeletedCopyWithImpl<_$_EventInStateDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, EventSortModel sortModel)
        eventsFetched,
    required TResult Function() nextEventsPageFetched,
    required TResult Function(Event event) eventToStateAdded,
    required TResult Function(Event oldEvent, Event updatedEvent)
        eventInStateUpdated,
    required TResult Function(Event event) eventInStateDeleted,
  }) {
    return eventInStateDeleted(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult? Function()? nextEventsPageFetched,
    TResult? Function(Event event)? eventToStateAdded,
    TResult? Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult? Function(Event event)? eventInStateDeleted,
  }) {
    return eventInStateDeleted?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, EventSortModel sortModel)?
        eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
    required TResult orElse(),
  }) {
    if (eventInStateDeleted != null) {
      return eventInStateDeleted(event);
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
    required TResult Function(_EventInStateUpdated value) eventInStateUpdated,
    required TResult Function(_EventInStateDeleted value) eventInStateDeleted,
  }) {
    return eventInStateDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventsFetched value)? eventsFetched,
    TResult? Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult? Function(_EventToStateAdded value)? eventToStateAdded,
    TResult? Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult? Function(_EventInStateDeleted value)? eventInStateDeleted,
  }) {
    return eventInStateDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
    required TResult orElse(),
  }) {
    if (eventInStateDeleted != null) {
      return eventInStateDeleted(this);
    }
    return orElse();
  }
}

abstract class _EventInStateDeleted implements EventOverviewEvent {
  const factory _EventInStateDeleted(final Event event) =
      _$_EventInStateDeleted;

  Event get event;
  @JsonKey(ignore: true)
  _$$_EventInStateDeletedCopyWith<_$_EventInStateDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventOverviewState {
  List<Event> get events => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;
  EventFilters get eventFilters => throw _privateConstructorUsedError;
  EventSortModel get sortModel => throw _privateConstructorUsedError;
  Option<CommonEventFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventOverviewStateCopyWith<EventOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventOverviewStateCopyWith<$Res> {
  factory $EventOverviewStateCopyWith(
          EventOverviewState value, $Res Function(EventOverviewState) then) =
      _$EventOverviewStateCopyWithImpl<$Res, EventOverviewState>;
  @useResult
  $Res call(
      {List<Event> events,
      bool hasReachedMax,
      CubitStatus status,
      CubitStatus nextPageStatus,
      EventFilters eventFilters,
      EventSortModel sortModel,
      Option<CommonEventFailure> failure});

  $EventFiltersCopyWith<$Res> get eventFilters;
  $EventSortModelCopyWith<$Res> get sortModel;
}

/// @nodoc
class _$EventOverviewStateCopyWithImpl<$Res, $Val extends EventOverviewState>
    implements $EventOverviewStateCopyWith<$Res> {
  _$EventOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? hasReachedMax = null,
    Object? status = null,
    Object? nextPageStatus = null,
    Object? eventFilters = null,
    Object? sortModel = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      eventFilters: null == eventFilters
          ? _value.eventFilters
          : eventFilters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      sortModel: null == sortModel
          ? _value.sortModel
          : sortModel // ignore: cast_nullable_to_non_nullable
              as EventSortModel,
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
abstract class _$$_EventOverviewStateCopyWith<$Res>
    implements $EventOverviewStateCopyWith<$Res> {
  factory _$$_EventOverviewStateCopyWith(_$_EventOverviewState value,
          $Res Function(_$_EventOverviewState) then) =
      __$$_EventOverviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Event> events,
      bool hasReachedMax,
      CubitStatus status,
      CubitStatus nextPageStatus,
      EventFilters eventFilters,
      EventSortModel sortModel,
      Option<CommonEventFailure> failure});

  @override
  $EventFiltersCopyWith<$Res> get eventFilters;
  @override
  $EventSortModelCopyWith<$Res> get sortModel;
}

/// @nodoc
class __$$_EventOverviewStateCopyWithImpl<$Res>
    extends _$EventOverviewStateCopyWithImpl<$Res, _$_EventOverviewState>
    implements _$$_EventOverviewStateCopyWith<$Res> {
  __$$_EventOverviewStateCopyWithImpl(
      _$_EventOverviewState _value, $Res Function(_$_EventOverviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? hasReachedMax = null,
    Object? status = null,
    Object? nextPageStatus = null,
    Object? eventFilters = null,
    Object? sortModel = null,
    Object? failure = null,
  }) {
    return _then(_$_EventOverviewState(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      eventFilters: null == eventFilters
          ? _value.eventFilters
          : eventFilters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      sortModel: null == sortModel
          ? _value.sortModel
          : sortModel // ignore: cast_nullable_to_non_nullable
              as EventSortModel,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<CommonEventFailure>,
    ));
  }
}

/// @nodoc

class _$_EventOverviewState extends _EventOverviewState {
  _$_EventOverviewState(
      {required final List<Event> events,
      required this.hasReachedMax,
      required this.status,
      required this.nextPageStatus,
      required this.eventFilters,
      required this.sortModel,
      required this.failure})
      : _events = events,
        super._();

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
  final CubitStatus status;
  @override
  final CubitStatus nextPageStatus;
  @override
  final EventFilters eventFilters;
  @override
  final EventSortModel sortModel;
  @override
  final Option<CommonEventFailure> failure;

  @override
  String toString() {
    return 'EventOverviewState(events: $events, hasReachedMax: $hasReachedMax, status: $status, nextPageStatus: $nextPageStatus, eventFilters: $eventFilters, sortModel: $sortModel, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOverviewState &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus) &&
            (identical(other.eventFilters, eventFilters) ||
                other.eventFilters == eventFilters) &&
            (identical(other.sortModel, sortModel) ||
                other.sortModel == sortModel) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      hasReachedMax,
      status,
      nextPageStatus,
      eventFilters,
      sortModel,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOverviewStateCopyWith<_$_EventOverviewState> get copyWith =>
      __$$_EventOverviewStateCopyWithImpl<_$_EventOverviewState>(
          this, _$identity);
}

abstract class _EventOverviewState extends EventOverviewState {
  factory _EventOverviewState(
          {required final List<Event> events,
          required final bool hasReachedMax,
          required final CubitStatus status,
          required final CubitStatus nextPageStatus,
          required final EventFilters eventFilters,
          required final EventSortModel sortModel,
          required final Option<CommonEventFailure> failure}) =
      _$_EventOverviewState;
  _EventOverviewState._() : super._();

  @override
  List<Event> get events;
  @override
  bool get hasReachedMax;
  @override
  CubitStatus get status;
  @override
  CubitStatus get nextPageStatus;
  @override
  EventFilters get eventFilters;
  @override
  EventSortModel get sortModel;
  @override
  Option<CommonEventFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$_EventOverviewStateCopyWith<_$_EventOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

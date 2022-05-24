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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, SortModel sortModel)
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
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
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
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
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
abstract class _$$_EventsFetchedCopyWith<$Res> {
  factory _$$_EventsFetchedCopyWith(
          _$_EventsFetched value, $Res Function(_$_EventsFetched) then) =
      __$$_EventsFetchedCopyWithImpl<$Res>;
  $Res call({EventFilters filters, SortModel sortModel});

  $EventFiltersCopyWith<$Res> get filters;
  $SortModelCopyWith<$Res> get sortModel;
}

/// @nodoc
class __$$_EventsFetchedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res>
    implements _$$_EventsFetchedCopyWith<$Res> {
  __$$_EventsFetchedCopyWithImpl(
      _$_EventsFetched _value, $Res Function(_$_EventsFetched) _then)
      : super(_value, (v) => _then(v as _$_EventsFetched));

  @override
  _$_EventsFetched get _value => super._value as _$_EventsFetched;

  @override
  $Res call({
    Object? filters = freezed,
    Object? sortModel = freezed,
  }) {
    return _then(_$_EventsFetched(
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
            other is _$_EventsFetched &&
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
  _$$_EventsFetchedCopyWith<_$_EventsFetched> get copyWith =>
      __$$_EventsFetchedCopyWithImpl<_$_EventsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, SortModel sortModel)
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
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
  }) {
    return eventsFetched?.call(filters, sortModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
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
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
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
      final EventFilters filters, final SortModel sortModel) = _$_EventsFetched;

  EventFilters get filters => throw _privateConstructorUsedError;
  SortModel get sortModel => throw _privateConstructorUsedError;
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
    extends _$EventOverviewEventCopyWithImpl<$Res>
    implements _$$_NextEventsPageFetchedCopyWith<$Res> {
  __$$_NextEventsPageFetchedCopyWithImpl(_$_NextEventsPageFetched _value,
      $Res Function(_$_NextEventsPageFetched) _then)
      : super(_value, (v) => _then(v as _$_NextEventsPageFetched));

  @override
  _$_NextEventsPageFetched get _value =>
      super._value as _$_NextEventsPageFetched;
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
    required TResult Function(EventFilters filters, SortModel sortModel)
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
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
  }) {
    return nextEventsPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
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
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
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
  $Res call({Event event});
}

/// @nodoc
class __$$_EventToStateAddedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res>
    implements _$$_EventToStateAddedCopyWith<$Res> {
  __$$_EventToStateAddedCopyWithImpl(
      _$_EventToStateAdded _value, $Res Function(_$_EventToStateAdded) _then)
      : super(_value, (v) => _then(v as _$_EventToStateAdded));

  @override
  _$_EventToStateAdded get _value => super._value as _$_EventToStateAdded;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$_EventToStateAdded(
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
            other is _$_EventToStateAdded &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$_EventToStateAddedCopyWith<_$_EventToStateAdded> get copyWith =>
      __$$_EventToStateAddedCopyWithImpl<_$_EventToStateAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, SortModel sortModel)
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
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
  }) {
    return eventToStateAdded?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
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
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
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

  Event get event => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EventToStateAddedCopyWith<_$_EventToStateAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventInStateUpdatedCopyWith<$Res> {
  factory _$$_EventInStateUpdatedCopyWith(_$_EventInStateUpdated value,
          $Res Function(_$_EventInStateUpdated) then) =
      __$$_EventInStateUpdatedCopyWithImpl<$Res>;
  $Res call({Event oldEvent, Event updatedEvent});
}

/// @nodoc
class __$$_EventInStateUpdatedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res>
    implements _$$_EventInStateUpdatedCopyWith<$Res> {
  __$$_EventInStateUpdatedCopyWithImpl(_$_EventInStateUpdated _value,
      $Res Function(_$_EventInStateUpdated) _then)
      : super(_value, (v) => _then(v as _$_EventInStateUpdated));

  @override
  _$_EventInStateUpdated get _value => super._value as _$_EventInStateUpdated;

  @override
  $Res call({
    Object? oldEvent = freezed,
    Object? updatedEvent = freezed,
  }) {
    return _then(_$_EventInStateUpdated(
      oldEvent == freezed
          ? _value.oldEvent
          : oldEvent // ignore: cast_nullable_to_non_nullable
              as Event,
      updatedEvent == freezed
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
            const DeepCollectionEquality().equals(other.oldEvent, oldEvent) &&
            const DeepCollectionEquality()
                .equals(other.updatedEvent, updatedEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldEvent),
      const DeepCollectionEquality().hash(updatedEvent));

  @JsonKey(ignore: true)
  @override
  _$$_EventInStateUpdatedCopyWith<_$_EventInStateUpdated> get copyWith =>
      __$$_EventInStateUpdatedCopyWithImpl<_$_EventInStateUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, SortModel sortModel)
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
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
  }) {
    return eventInStateUpdated?.call(oldEvent, updatedEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
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
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
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

  Event get oldEvent => throw _privateConstructorUsedError;
  Event get updatedEvent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EventInStateUpdatedCopyWith<_$_EventInStateUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventInStateDeletedCopyWith<$Res> {
  factory _$$_EventInStateDeletedCopyWith(_$_EventInStateDeleted value,
          $Res Function(_$_EventInStateDeleted) then) =
      __$$_EventInStateDeletedCopyWithImpl<$Res>;
  $Res call({Event event});
}

/// @nodoc
class __$$_EventInStateDeletedCopyWithImpl<$Res>
    extends _$EventOverviewEventCopyWithImpl<$Res>
    implements _$$_EventInStateDeletedCopyWith<$Res> {
  __$$_EventInStateDeletedCopyWithImpl(_$_EventInStateDeleted _value,
      $Res Function(_$_EventInStateDeleted) _then)
      : super(_value, (v) => _then(v as _$_EventInStateDeleted));

  @override
  _$_EventInStateDeleted get _value => super._value as _$_EventInStateDeleted;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$_EventInStateDeleted(
      event == freezed
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
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$_EventInStateDeletedCopyWith<_$_EventInStateDeleted> get copyWith =>
      __$$_EventInStateDeletedCopyWithImpl<_$_EventInStateDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventFilters filters, SortModel sortModel)
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
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
    TResult Function()? nextEventsPageFetched,
    TResult Function(Event event)? eventToStateAdded,
    TResult Function(Event oldEvent, Event updatedEvent)? eventInStateUpdated,
    TResult Function(Event event)? eventInStateDeleted,
  }) {
    return eventInStateDeleted?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventFilters filters, SortModel sortModel)? eventsFetched,
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
    TResult Function(_EventsFetched value)? eventsFetched,
    TResult Function(_NextEventsPageFetched value)? nextEventsPageFetched,
    TResult Function(_EventToStateAdded value)? eventToStateAdded,
    TResult Function(_EventInStateUpdated value)? eventInStateUpdated,
    TResult Function(_EventInStateDeleted value)? eventInStateDeleted,
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

  Event get event => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EventInStateDeletedCopyWith<_$_EventInStateDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_EventOverviewStateCopyWith<$Res>
    implements $EventOverviewStateCopyWith<$Res> {
  factory _$$_EventOverviewStateCopyWith(_$_EventOverviewState value,
          $Res Function(_$_EventOverviewState) then) =
      __$$_EventOverviewStateCopyWithImpl<$Res>;
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
class __$$_EventOverviewStateCopyWithImpl<$Res>
    extends _$EventOverviewStateCopyWithImpl<$Res>
    implements _$$_EventOverviewStateCopyWith<$Res> {
  __$$_EventOverviewStateCopyWithImpl(
      _$_EventOverviewState _value, $Res Function(_$_EventOverviewState) _then)
      : super(_value, (v) => _then(v as _$_EventOverviewState));

  @override
  _$_EventOverviewState get _value => super._value as _$_EventOverviewState;

  @override
  $Res call({
    Object? events = freezed,
    Object? hasReachedMax = freezed,
    Object? status = freezed,
    Object? eventFilters = freezed,
    Object? sortModel = freezed,
  }) {
    return _then(_$_EventOverviewState(
      events: events == freezed
          ? _value._events
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
      {required final List<Event> events,
      required this.hasReachedMax,
      required this.status,
      required this.eventFilters,
      required this.sortModel})
      : _events = events,
        super._();

  final List<Event> _events;
  @override
  List<Event> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

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
            other is _$_EventOverviewState &&
            const DeepCollectionEquality().equals(other._events, _events) &&
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
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(hasReachedMax),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(eventFilters),
      const DeepCollectionEquality().hash(sortModel));

  @JsonKey(ignore: true)
  @override
  _$$_EventOverviewStateCopyWith<_$_EventOverviewState> get copyWith =>
      __$$_EventOverviewStateCopyWithImpl<_$_EventOverviewState>(
          this, _$identity);
}

abstract class _EventOverviewState extends EventOverviewState {
  factory _EventOverviewState(
      {required final List<Event> events,
      required final bool hasReachedMax,
      required final CubitStatus status,
      required final EventFilters eventFilters,
      required final SortModel sortModel}) = _$_EventOverviewState;
  _EventOverviewState._() : super._();

  @override
  List<Event> get events => throw _privateConstructorUsedError;
  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  CubitStatus get status => throw _privateConstructorUsedError;
  @override
  EventFilters get eventFilters => throw _privateConstructorUsedError;
  @override
  SortModel get sortModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EventOverviewStateCopyWith<_$_EventOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

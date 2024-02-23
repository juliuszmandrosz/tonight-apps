// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArtistDetailsState {
  CubitStatus get getEventsStatus => throw _privateConstructorUsedError;
  CubitStatus get getCollectivesStatus => throw _privateConstructorUsedError;
  List<Event> get events => throw _privateConstructorUsedError;
  List<Collective> get collectives => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistDetailsStateCopyWith<ArtistDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistDetailsStateCopyWith<$Res> {
  factory $ArtistDetailsStateCopyWith(
          ArtistDetailsState value, $Res Function(ArtistDetailsState) then) =
      _$ArtistDetailsStateCopyWithImpl<$Res, ArtistDetailsState>;
  @useResult
  $Res call(
      {CubitStatus getEventsStatus,
      CubitStatus getCollectivesStatus,
      List<Event> events,
      List<Collective> collectives});
}

/// @nodoc
class _$ArtistDetailsStateCopyWithImpl<$Res, $Val extends ArtistDetailsState>
    implements $ArtistDetailsStateCopyWith<$Res> {
  _$ArtistDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getEventsStatus = null,
    Object? getCollectivesStatus = null,
    Object? events = null,
    Object? collectives = null,
  }) {
    return _then(_value.copyWith(
      getEventsStatus: null == getEventsStatus
          ? _value.getEventsStatus
          : getEventsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      getCollectivesStatus: null == getCollectivesStatus
          ? _value.getCollectivesStatus
          : getCollectivesStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      collectives: null == collectives
          ? _value.collectives
          : collectives // ignore: cast_nullable_to_non_nullable
              as List<Collective>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistDetailsStateImplCopyWith<$Res>
    implements $ArtistDetailsStateCopyWith<$Res> {
  factory _$$ArtistDetailsStateImplCopyWith(_$ArtistDetailsStateImpl value,
          $Res Function(_$ArtistDetailsStateImpl) then) =
      __$$ArtistDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getEventsStatus,
      CubitStatus getCollectivesStatus,
      List<Event> events,
      List<Collective> collectives});
}

/// @nodoc
class __$$ArtistDetailsStateImplCopyWithImpl<$Res>
    extends _$ArtistDetailsStateCopyWithImpl<$Res, _$ArtistDetailsStateImpl>
    implements _$$ArtistDetailsStateImplCopyWith<$Res> {
  __$$ArtistDetailsStateImplCopyWithImpl(_$ArtistDetailsStateImpl _value,
      $Res Function(_$ArtistDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getEventsStatus = null,
    Object? getCollectivesStatus = null,
    Object? events = null,
    Object? collectives = null,
  }) {
    return _then(_$ArtistDetailsStateImpl(
      getEventsStatus: null == getEventsStatus
          ? _value.getEventsStatus
          : getEventsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      getCollectivesStatus: null == getCollectivesStatus
          ? _value.getCollectivesStatus
          : getCollectivesStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      collectives: null == collectives
          ? _value._collectives
          : collectives // ignore: cast_nullable_to_non_nullable
              as List<Collective>,
    ));
  }
}

/// @nodoc

class _$ArtistDetailsStateImpl implements _ArtistDetailsState {
  const _$ArtistDetailsStateImpl(
      {required this.getEventsStatus,
      required this.getCollectivesStatus,
      required final List<Event> events,
      required final List<Collective> collectives})
      : _events = events,
        _collectives = collectives;

  @override
  final CubitStatus getEventsStatus;
  @override
  final CubitStatus getCollectivesStatus;
  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<Collective> _collectives;
  @override
  List<Collective> get collectives {
    if (_collectives is EqualUnmodifiableListView) return _collectives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectives);
  }

  @override
  String toString() {
    return 'ArtistDetailsState(getEventsStatus: $getEventsStatus, getCollectivesStatus: $getCollectivesStatus, events: $events, collectives: $collectives)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistDetailsStateImpl &&
            (identical(other.getEventsStatus, getEventsStatus) ||
                other.getEventsStatus == getEventsStatus) &&
            (identical(other.getCollectivesStatus, getCollectivesStatus) ||
                other.getCollectivesStatus == getCollectivesStatus) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._collectives, _collectives));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getEventsStatus,
      getCollectivesStatus,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_collectives));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistDetailsStateImplCopyWith<_$ArtistDetailsStateImpl> get copyWith =>
      __$$ArtistDetailsStateImplCopyWithImpl<_$ArtistDetailsStateImpl>(
          this, _$identity);
}

abstract class _ArtistDetailsState implements ArtistDetailsState {
  const factory _ArtistDetailsState(
      {required final CubitStatus getEventsStatus,
      required final CubitStatus getCollectivesStatus,
      required final List<Event> events,
      required final List<Collective> collectives}) = _$ArtistDetailsStateImpl;

  @override
  CubitStatus get getEventsStatus;
  @override
  CubitStatus get getCollectivesStatus;
  @override
  List<Event> get events;
  @override
  List<Collective> get collectives;
  @override
  @JsonKey(ignore: true)
  _$$ArtistDetailsStateImplCopyWith<_$ArtistDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

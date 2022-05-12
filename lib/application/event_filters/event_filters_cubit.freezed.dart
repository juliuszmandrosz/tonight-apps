// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_filters_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventFiltersState {
  EventFilters get filters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventFiltersStateCopyWith<EventFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFiltersStateCopyWith<$Res> {
  factory $EventFiltersStateCopyWith(
          EventFiltersState value, $Res Function(EventFiltersState) then) =
      _$EventFiltersStateCopyWithImpl<$Res>;
  $Res call({EventFilters filters});

  $EventFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class _$EventFiltersStateCopyWithImpl<$Res>
    implements $EventFiltersStateCopyWith<$Res> {
  _$EventFiltersStateCopyWithImpl(this._value, this._then);

  final EventFiltersState _value;
  // ignore: unused_field
  final $Res Function(EventFiltersState) _then;

  @override
  $Res call({
    Object? filters = freezed,
  }) {
    return _then(_value.copyWith(
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
    ));
  }

  @override
  $EventFiltersCopyWith<$Res> get filters {
    return $EventFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc
abstract class _$$_EventFiltersStateCopyWith<$Res>
    implements $EventFiltersStateCopyWith<$Res> {
  factory _$$_EventFiltersStateCopyWith(_$_EventFiltersState value,
          $Res Function(_$_EventFiltersState) then) =
      __$$_EventFiltersStateCopyWithImpl<$Res>;
  @override
  $Res call({EventFilters filters});

  @override
  $EventFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_EventFiltersStateCopyWithImpl<$Res>
    extends _$EventFiltersStateCopyWithImpl<$Res>
    implements _$$_EventFiltersStateCopyWith<$Res> {
  __$$_EventFiltersStateCopyWithImpl(
      _$_EventFiltersState _value, $Res Function(_$_EventFiltersState) _then)
      : super(_value, (v) => _then(v as _$_EventFiltersState));

  @override
  _$_EventFiltersState get _value => super._value as _$_EventFiltersState;

  @override
  $Res call({
    Object? filters = freezed,
  }) {
    return _then(_$_EventFiltersState(
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
    ));
  }
}

/// @nodoc

class _$_EventFiltersState extends _EventFiltersState {
  _$_EventFiltersState({required this.filters}) : super._();

  @override
  final EventFilters filters;

  @override
  String toString() {
    return 'EventFiltersState(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventFiltersState &&
            const DeepCollectionEquality().equals(other.filters, filters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filters));

  @JsonKey(ignore: true)
  @override
  _$$_EventFiltersStateCopyWith<_$_EventFiltersState> get copyWith =>
      __$$_EventFiltersStateCopyWithImpl<_$_EventFiltersState>(
          this, _$identity);
}

abstract class _EventFiltersState extends EventFiltersState {
  factory _EventFiltersState({required final EventFilters filters}) =
      _$_EventFiltersState;
  _EventFiltersState._() : super._();

  @override
  EventFilters get filters => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EventFiltersStateCopyWith<_$_EventFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

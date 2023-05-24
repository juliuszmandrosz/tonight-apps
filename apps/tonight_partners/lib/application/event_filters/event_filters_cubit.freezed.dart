// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$EventFiltersStateCopyWithImpl<$Res, EventFiltersState>;
  @useResult
  $Res call({EventFilters filters});

  $EventFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class _$EventFiltersStateCopyWithImpl<$Res, $Val extends EventFiltersState>
    implements $EventFiltersStateCopyWith<$Res> {
  _$EventFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventFiltersCopyWith<$Res> get filters {
    return $EventFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
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
  @useResult
  $Res call({EventFilters filters});

  @override
  $EventFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_EventFiltersStateCopyWithImpl<$Res>
    extends _$EventFiltersStateCopyWithImpl<$Res, _$_EventFiltersState>
    implements _$$_EventFiltersStateCopyWith<$Res> {
  __$$_EventFiltersStateCopyWithImpl(
      _$_EventFiltersState _value, $Res Function(_$_EventFiltersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$_EventFiltersState(
      filters: null == filters
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
            (identical(other.filters, filters) || other.filters == filters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventFiltersStateCopyWith<_$_EventFiltersState> get copyWith =>
      __$$_EventFiltersStateCopyWithImpl<_$_EventFiltersState>(
          this, _$identity);
}

abstract class _EventFiltersState extends EventFiltersState {
  factory _EventFiltersState({required final EventFilters filters}) =
      _$_EventFiltersState;
  _EventFiltersState._() : super._();

  @override
  EventFilters get filters;
  @override
  @JsonKey(ignore: true)
  _$$_EventFiltersStateCopyWith<_$_EventFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

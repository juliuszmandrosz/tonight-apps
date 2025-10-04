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
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  Map<MenuEventFilter, IFilter> get appliedFilters =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

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
  $Res call(
      {EventFilters filters,
      Option<String> snackbarMessage,
      Map<MenuEventFilter, IFilter> appliedFilters,
      bool isSubmitting});

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
    Object? snackbarMessage = null,
    Object? appliedFilters = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      appliedFilters: null == appliedFilters
          ? _value.appliedFilters
          : appliedFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuEventFilter, IFilter>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$EventFiltersStateImplCopyWith<$Res>
    implements $EventFiltersStateCopyWith<$Res> {
  factory _$$EventFiltersStateImplCopyWith(_$EventFiltersStateImpl value,
          $Res Function(_$EventFiltersStateImpl) then) =
      __$$EventFiltersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventFilters filters,
      Option<String> snackbarMessage,
      Map<MenuEventFilter, IFilter> appliedFilters,
      bool isSubmitting});

  @override
  $EventFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$EventFiltersStateImplCopyWithImpl<$Res>
    extends _$EventFiltersStateCopyWithImpl<$Res, _$EventFiltersStateImpl>
    implements _$$EventFiltersStateImplCopyWith<$Res> {
  __$$EventFiltersStateImplCopyWithImpl(_$EventFiltersStateImpl _value,
      $Res Function(_$EventFiltersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? snackbarMessage = null,
    Object? appliedFilters = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$EventFiltersStateImpl(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as EventFilters,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      appliedFilters: null == appliedFilters
          ? _value._appliedFilters
          : appliedFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuEventFilter, IFilter>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EventFiltersStateImpl extends _EventFiltersState {
  _$EventFiltersStateImpl(
      {required this.filters,
      required this.snackbarMessage,
      required final Map<MenuEventFilter, IFilter> appliedFilters,
      required this.isSubmitting})
      : _appliedFilters = appliedFilters,
        super._();

  @override
  final EventFilters filters;
  @override
  final Option<String> snackbarMessage;
  final Map<MenuEventFilter, IFilter> _appliedFilters;
  @override
  Map<MenuEventFilter, IFilter> get appliedFilters {
    if (_appliedFilters is EqualUnmodifiableMapView) return _appliedFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appliedFilters);
  }

  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'EventFiltersState(filters: $filters, snackbarMessage: $snackbarMessage, appliedFilters: $appliedFilters, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventFiltersStateImpl &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            const DeepCollectionEquality()
                .equals(other._appliedFilters, _appliedFilters) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters, snackbarMessage,
      const DeepCollectionEquality().hash(_appliedFilters), isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventFiltersStateImplCopyWith<_$EventFiltersStateImpl> get copyWith =>
      __$$EventFiltersStateImplCopyWithImpl<_$EventFiltersStateImpl>(
          this, _$identity);
}

abstract class _EventFiltersState extends EventFiltersState {
  factory _EventFiltersState(
      {required final EventFilters filters,
      required final Option<String> snackbarMessage,
      required final Map<MenuEventFilter, IFilter> appliedFilters,
      required final bool isSubmitting}) = _$EventFiltersStateImpl;
  _EventFiltersState._() : super._();

  @override
  EventFilters get filters;
  @override
  Option<String> get snackbarMessage;
  @override
  Map<MenuEventFilter, IFilter> get appliedFilters;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$EventFiltersStateImplCopyWith<_$EventFiltersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

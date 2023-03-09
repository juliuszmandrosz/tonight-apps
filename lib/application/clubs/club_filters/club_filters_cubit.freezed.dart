// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_filters_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubFiltersState {
  ClubFilters get filters => throw _privateConstructorUsedError;
  bool get isFilterApplied => throw _privateConstructorUsedError;
  bool get isMenuFilterApplied => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubFiltersStateCopyWith<ClubFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFiltersStateCopyWith<$Res> {
  factory $ClubFiltersStateCopyWith(
          ClubFiltersState value, $Res Function(ClubFiltersState) then) =
      _$ClubFiltersStateCopyWithImpl<$Res, ClubFiltersState>;
  @useResult
  $Res call(
      {ClubFilters filters, bool isFilterApplied, bool isMenuFilterApplied});

  $ClubFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class _$ClubFiltersStateCopyWithImpl<$Res, $Val extends ClubFiltersState>
    implements $ClubFiltersStateCopyWith<$Res> {
  _$ClubFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? isFilterApplied = null,
    Object? isMenuFilterApplied = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
      isFilterApplied: null == isFilterApplied
          ? _value.isFilterApplied
          : isFilterApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      isMenuFilterApplied: null == isMenuFilterApplied
          ? _value.isMenuFilterApplied
          : isMenuFilterApplied // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubFiltersCopyWith<$Res> get filters {
    return $ClubFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClubFiltersStateCopyWith<$Res>
    implements $ClubFiltersStateCopyWith<$Res> {
  factory _$$_ClubFiltersStateCopyWith(
          _$_ClubFiltersState value, $Res Function(_$_ClubFiltersState) then) =
      __$$_ClubFiltersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ClubFilters filters, bool isFilterApplied, bool isMenuFilterApplied});

  @override
  $ClubFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_ClubFiltersStateCopyWithImpl<$Res>
    extends _$ClubFiltersStateCopyWithImpl<$Res, _$_ClubFiltersState>
    implements _$$_ClubFiltersStateCopyWith<$Res> {
  __$$_ClubFiltersStateCopyWithImpl(
      _$_ClubFiltersState _value, $Res Function(_$_ClubFiltersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? isFilterApplied = null,
    Object? isMenuFilterApplied = null,
  }) {
    return _then(_$_ClubFiltersState(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
      isFilterApplied: null == isFilterApplied
          ? _value.isFilterApplied
          : isFilterApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      isMenuFilterApplied: null == isMenuFilterApplied
          ? _value.isMenuFilterApplied
          : isMenuFilterApplied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClubFiltersState extends _ClubFiltersState {
  _$_ClubFiltersState(
      {required this.filters,
      required this.isFilterApplied,
      required this.isMenuFilterApplied})
      : super._();

  @override
  final ClubFilters filters;
  @override
  final bool isFilterApplied;
  @override
  final bool isMenuFilterApplied;

  @override
  String toString() {
    return 'ClubFiltersState(filters: $filters, isFilterApplied: $isFilterApplied, isMenuFilterApplied: $isMenuFilterApplied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubFiltersState &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.isFilterApplied, isFilterApplied) ||
                other.isFilterApplied == isFilterApplied) &&
            (identical(other.isMenuFilterApplied, isMenuFilterApplied) ||
                other.isMenuFilterApplied == isMenuFilterApplied));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, filters, isFilterApplied, isMenuFilterApplied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubFiltersStateCopyWith<_$_ClubFiltersState> get copyWith =>
      __$$_ClubFiltersStateCopyWithImpl<_$_ClubFiltersState>(this, _$identity);
}

abstract class _ClubFiltersState extends ClubFiltersState {
  factory _ClubFiltersState(
      {required final ClubFilters filters,
      required final bool isFilterApplied,
      required final bool isMenuFilterApplied}) = _$_ClubFiltersState;
  _ClubFiltersState._() : super._();

  @override
  ClubFilters get filters;
  @override
  bool get isFilterApplied;
  @override
  bool get isMenuFilterApplied;
  @override
  @JsonKey(ignore: true)
  _$$_ClubFiltersStateCopyWith<_$_ClubFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

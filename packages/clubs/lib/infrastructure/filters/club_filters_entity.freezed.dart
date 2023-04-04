// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_filters_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubFilters {
  PhraseFilter get phraseFilter => throw _privateConstructorUsedError;
  MaxDistanceFilter get maxDistanceFilter => throw _privateConstructorUsedError;
  CurrencyFilter get currencyFilter => throw _privateConstructorUsedError;
  CityFilter get cityFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubFiltersCopyWith<ClubFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFiltersCopyWith<$Res> {
  factory $ClubFiltersCopyWith(
          ClubFilters value, $Res Function(ClubFilters) then) =
      _$ClubFiltersCopyWithImpl<$Res, ClubFilters>;
  @useResult
  $Res call(
      {PhraseFilter phraseFilter,
      MaxDistanceFilter maxDistanceFilter,
      CurrencyFilter currencyFilter,
      CityFilter cityFilter});
}

/// @nodoc
class _$ClubFiltersCopyWithImpl<$Res, $Val extends ClubFilters>
    implements $ClubFiltersCopyWith<$Res> {
  _$ClubFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phraseFilter = null,
    Object? maxDistanceFilter = null,
    Object? currencyFilter = null,
    Object? cityFilter = null,
  }) {
    return _then(_value.copyWith(
      phraseFilter: null == phraseFilter
          ? _value.phraseFilter
          : phraseFilter // ignore: cast_nullable_to_non_nullable
              as PhraseFilter,
      maxDistanceFilter: null == maxDistanceFilter
          ? _value.maxDistanceFilter
          : maxDistanceFilter // ignore: cast_nullable_to_non_nullable
              as MaxDistanceFilter,
      currencyFilter: null == currencyFilter
          ? _value.currencyFilter
          : currencyFilter // ignore: cast_nullable_to_non_nullable
              as CurrencyFilter,
      cityFilter: null == cityFilter
          ? _value.cityFilter
          : cityFilter // ignore: cast_nullable_to_non_nullable
              as CityFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubFilterCopyWith<$Res>
    implements $ClubFiltersCopyWith<$Res> {
  factory _$$_ClubFilterCopyWith(
          _$_ClubFilter value, $Res Function(_$_ClubFilter) then) =
      __$$_ClubFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PhraseFilter phraseFilter,
      MaxDistanceFilter maxDistanceFilter,
      CurrencyFilter currencyFilter,
      CityFilter cityFilter});
}

/// @nodoc
class __$$_ClubFilterCopyWithImpl<$Res>
    extends _$ClubFiltersCopyWithImpl<$Res, _$_ClubFilter>
    implements _$$_ClubFilterCopyWith<$Res> {
  __$$_ClubFilterCopyWithImpl(
      _$_ClubFilter _value, $Res Function(_$_ClubFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phraseFilter = null,
    Object? maxDistanceFilter = null,
    Object? currencyFilter = null,
    Object? cityFilter = null,
  }) {
    return _then(_$_ClubFilter(
      phraseFilter: null == phraseFilter
          ? _value.phraseFilter
          : phraseFilter // ignore: cast_nullable_to_non_nullable
              as PhraseFilter,
      maxDistanceFilter: null == maxDistanceFilter
          ? _value.maxDistanceFilter
          : maxDistanceFilter // ignore: cast_nullable_to_non_nullable
              as MaxDistanceFilter,
      currencyFilter: null == currencyFilter
          ? _value.currencyFilter
          : currencyFilter // ignore: cast_nullable_to_non_nullable
              as CurrencyFilter,
      cityFilter: null == cityFilter
          ? _value.cityFilter
          : cityFilter // ignore: cast_nullable_to_non_nullable
              as CityFilter,
    ));
  }
}

/// @nodoc

class _$_ClubFilter extends _ClubFilter {
  _$_ClubFilter(
      {required this.phraseFilter,
      required this.maxDistanceFilter,
      required this.currencyFilter,
      required this.cityFilter})
      : super._();

  @override
  final PhraseFilter phraseFilter;
  @override
  final MaxDistanceFilter maxDistanceFilter;
  @override
  final CurrencyFilter currencyFilter;
  @override
  final CityFilter cityFilter;

  @override
  String toString() {
    return 'ClubFilters(phraseFilter: $phraseFilter, maxDistanceFilter: $maxDistanceFilter, currencyFilter: $currencyFilter, cityFilter: $cityFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubFilter &&
            (identical(other.phraseFilter, phraseFilter) ||
                other.phraseFilter == phraseFilter) &&
            (identical(other.maxDistanceFilter, maxDistanceFilter) ||
                other.maxDistanceFilter == maxDistanceFilter) &&
            (identical(other.currencyFilter, currencyFilter) ||
                other.currencyFilter == currencyFilter) &&
            (identical(other.cityFilter, cityFilter) ||
                other.cityFilter == cityFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, phraseFilter, maxDistanceFilter, currencyFilter, cityFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubFilterCopyWith<_$_ClubFilter> get copyWith =>
      __$$_ClubFilterCopyWithImpl<_$_ClubFilter>(this, _$identity);
}

abstract class _ClubFilter extends ClubFilters {
  factory _ClubFilter(
      {required final PhraseFilter phraseFilter,
      required final MaxDistanceFilter maxDistanceFilter,
      required final CurrencyFilter currencyFilter,
      required final CityFilter cityFilter}) = _$_ClubFilter;
  _ClubFilter._() : super._();

  @override
  PhraseFilter get phraseFilter;
  @override
  MaxDistanceFilter get maxDistanceFilter;
  @override
  CurrencyFilter get currencyFilter;
  @override
  CityFilter get cityFilter;
  @override
  @JsonKey(ignore: true)
  _$$_ClubFilterCopyWith<_$_ClubFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

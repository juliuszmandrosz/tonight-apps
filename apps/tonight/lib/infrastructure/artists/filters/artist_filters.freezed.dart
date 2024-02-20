// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArtistFilters {
  PhraseFilter get phraseFilter => throw _privateConstructorUsedError;
  CityFilter get cityFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistFiltersCopyWith<ArtistFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistFiltersCopyWith<$Res> {
  factory $ArtistFiltersCopyWith(
          ArtistFilters value, $Res Function(ArtistFilters) then) =
      _$ArtistFiltersCopyWithImpl<$Res, ArtistFilters>;
  @useResult
  $Res call({PhraseFilter phraseFilter, CityFilter cityFilter});
}

/// @nodoc
class _$ArtistFiltersCopyWithImpl<$Res, $Val extends ArtistFilters>
    implements $ArtistFiltersCopyWith<$Res> {
  _$ArtistFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phraseFilter = null,
    Object? cityFilter = null,
  }) {
    return _then(_value.copyWith(
      phraseFilter: null == phraseFilter
          ? _value.phraseFilter
          : phraseFilter // ignore: cast_nullable_to_non_nullable
              as PhraseFilter,
      cityFilter: null == cityFilter
          ? _value.cityFilter
          : cityFilter // ignore: cast_nullable_to_non_nullable
              as CityFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistFiltersImplCopyWith<$Res>
    implements $ArtistFiltersCopyWith<$Res> {
  factory _$$ArtistFiltersImplCopyWith(
          _$ArtistFiltersImpl value, $Res Function(_$ArtistFiltersImpl) then) =
      __$$ArtistFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PhraseFilter phraseFilter, CityFilter cityFilter});
}

/// @nodoc
class __$$ArtistFiltersImplCopyWithImpl<$Res>
    extends _$ArtistFiltersCopyWithImpl<$Res, _$ArtistFiltersImpl>
    implements _$$ArtistFiltersImplCopyWith<$Res> {
  __$$ArtistFiltersImplCopyWithImpl(
      _$ArtistFiltersImpl _value, $Res Function(_$ArtistFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phraseFilter = null,
    Object? cityFilter = null,
  }) {
    return _then(_$ArtistFiltersImpl(
      phraseFilter: null == phraseFilter
          ? _value.phraseFilter
          : phraseFilter // ignore: cast_nullable_to_non_nullable
              as PhraseFilter,
      cityFilter: null == cityFilter
          ? _value.cityFilter
          : cityFilter // ignore: cast_nullable_to_non_nullable
              as CityFilter,
    ));
  }
}

/// @nodoc

class _$ArtistFiltersImpl extends _ArtistFilters {
  _$ArtistFiltersImpl({required this.phraseFilter, required this.cityFilter})
      : super._();

  @override
  final PhraseFilter phraseFilter;
  @override
  final CityFilter cityFilter;

  @override
  String toString() {
    return 'ArtistFilters(phraseFilter: $phraseFilter, cityFilter: $cityFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistFiltersImpl &&
            (identical(other.phraseFilter, phraseFilter) ||
                other.phraseFilter == phraseFilter) &&
            (identical(other.cityFilter, cityFilter) ||
                other.cityFilter == cityFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phraseFilter, cityFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistFiltersImplCopyWith<_$ArtistFiltersImpl> get copyWith =>
      __$$ArtistFiltersImplCopyWithImpl<_$ArtistFiltersImpl>(this, _$identity);
}

abstract class _ArtistFilters extends ArtistFilters {
  factory _ArtistFilters(
      {required final PhraseFilter phraseFilter,
      required final CityFilter cityFilter}) = _$ArtistFiltersImpl;
  _ArtistFilters._() : super._();

  @override
  PhraseFilter get phraseFilter;
  @override
  CityFilter get cityFilter;
  @override
  @JsonKey(ignore: true)
  _$$ArtistFiltersImplCopyWith<_$ArtistFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

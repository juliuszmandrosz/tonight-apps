// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collective_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectiveFilters {
  PhraseFilter get phraseFilter => throw _privateConstructorUsedError;
  CitiesFilter get citiesFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectiveFiltersCopyWith<CollectiveFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectiveFiltersCopyWith<$Res> {
  factory $CollectiveFiltersCopyWith(
          CollectiveFilters value, $Res Function(CollectiveFilters) then) =
      _$CollectiveFiltersCopyWithImpl<$Res, CollectiveFilters>;
  @useResult
  $Res call({PhraseFilter phraseFilter, CitiesFilter citiesFilter});
}

/// @nodoc
class _$CollectiveFiltersCopyWithImpl<$Res, $Val extends CollectiveFilters>
    implements $CollectiveFiltersCopyWith<$Res> {
  _$CollectiveFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phraseFilter = null,
    Object? citiesFilter = null,
  }) {
    return _then(_value.copyWith(
      phraseFilter: null == phraseFilter
          ? _value.phraseFilter
          : phraseFilter // ignore: cast_nullable_to_non_nullable
              as PhraseFilter,
      citiesFilter: null == citiesFilter
          ? _value.citiesFilter
          : citiesFilter // ignore: cast_nullable_to_non_nullable
              as CitiesFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectiveFiltersImplCopyWith<$Res>
    implements $CollectiveFiltersCopyWith<$Res> {
  factory _$$CollectiveFiltersImplCopyWith(_$CollectiveFiltersImpl value,
          $Res Function(_$CollectiveFiltersImpl) then) =
      __$$CollectiveFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PhraseFilter phraseFilter, CitiesFilter citiesFilter});
}

/// @nodoc
class __$$CollectiveFiltersImplCopyWithImpl<$Res>
    extends _$CollectiveFiltersCopyWithImpl<$Res, _$CollectiveFiltersImpl>
    implements _$$CollectiveFiltersImplCopyWith<$Res> {
  __$$CollectiveFiltersImplCopyWithImpl(_$CollectiveFiltersImpl _value,
      $Res Function(_$CollectiveFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phraseFilter = null,
    Object? citiesFilter = null,
  }) {
    return _then(_$CollectiveFiltersImpl(
      phraseFilter: null == phraseFilter
          ? _value.phraseFilter
          : phraseFilter // ignore: cast_nullable_to_non_nullable
              as PhraseFilter,
      citiesFilter: null == citiesFilter
          ? _value.citiesFilter
          : citiesFilter // ignore: cast_nullable_to_non_nullable
              as CitiesFilter,
    ));
  }
}

/// @nodoc

class _$CollectiveFiltersImpl extends _CollectiveFilters {
  _$CollectiveFiltersImpl(
      {required this.phraseFilter, required this.citiesFilter})
      : super._();

  @override
  final PhraseFilter phraseFilter;
  @override
  final CitiesFilter citiesFilter;

  @override
  String toString() {
    return 'CollectiveFilters(phraseFilter: $phraseFilter, citiesFilter: $citiesFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectiveFiltersImpl &&
            (identical(other.phraseFilter, phraseFilter) ||
                other.phraseFilter == phraseFilter) &&
            (identical(other.citiesFilter, citiesFilter) ||
                other.citiesFilter == citiesFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phraseFilter, citiesFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectiveFiltersImplCopyWith<_$CollectiveFiltersImpl> get copyWith =>
      __$$CollectiveFiltersImplCopyWithImpl<_$CollectiveFiltersImpl>(
          this, _$identity);
}

abstract class _CollectiveFilters extends CollectiveFilters {
  factory _CollectiveFilters(
      {required final PhraseFilter phraseFilter,
      required final CitiesFilter citiesFilter}) = _$CollectiveFiltersImpl;
  _CollectiveFilters._() : super._();

  @override
  PhraseFilter get phraseFilter;
  @override
  CitiesFilter get citiesFilter;
  @override
  @JsonKey(ignore: true)
  _$$CollectiveFiltersImplCopyWith<_$CollectiveFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

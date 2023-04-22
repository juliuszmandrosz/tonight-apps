// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_filters_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvailableFiltersDto _$AvailableFiltersDtoFromJson(Map<String, dynamic> json) {
  return _AvailableFiltersDto.fromJson(json);
}

/// @nodoc
mixin _$AvailableFiltersDto {
  List<String> get allowedOutfits => throw _privateConstructorUsedError;
  List<String> get musicalGenres => throw _privateConstructorUsedError;
  List<String> get currencies => throw _privateConstructorUsedError;
  List<int> get minAges => throw _privateConstructorUsedError;
  List<CityDto> get cities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableFiltersDtoCopyWith<AvailableFiltersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableFiltersDtoCopyWith<$Res> {
  factory $AvailableFiltersDtoCopyWith(
          AvailableFiltersDto value, $Res Function(AvailableFiltersDto) then) =
      _$AvailableFiltersDtoCopyWithImpl<$Res, AvailableFiltersDto>;
  @useResult
  $Res call(
      {List<String> allowedOutfits,
      List<String> musicalGenres,
      List<String> currencies,
      List<int> minAges,
      List<CityDto> cities});
}

/// @nodoc
class _$AvailableFiltersDtoCopyWithImpl<$Res, $Val extends AvailableFiltersDto>
    implements $AvailableFiltersDtoCopyWith<$Res> {
  _$AvailableFiltersDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowedOutfits = null,
    Object? musicalGenres = null,
    Object? currencies = null,
    Object? minAges = null,
    Object? cities = null,
  }) {
    return _then(_value.copyWith(
      allowedOutfits: null == allowedOutfits
          ? _value.allowedOutfits
          : allowedOutfits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      musicalGenres: null == musicalGenres
          ? _value.musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minAges: null == minAges
          ? _value.minAges
          : minAges // ignore: cast_nullable_to_non_nullable
              as List<int>,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AvailableFiltersDtoCopyWith<$Res>
    implements $AvailableFiltersDtoCopyWith<$Res> {
  factory _$$_AvailableFiltersDtoCopyWith(_$_AvailableFiltersDto value,
          $Res Function(_$_AvailableFiltersDto) then) =
      __$$_AvailableFiltersDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> allowedOutfits,
      List<String> musicalGenres,
      List<String> currencies,
      List<int> minAges,
      List<CityDto> cities});
}

/// @nodoc
class __$$_AvailableFiltersDtoCopyWithImpl<$Res>
    extends _$AvailableFiltersDtoCopyWithImpl<$Res, _$_AvailableFiltersDto>
    implements _$$_AvailableFiltersDtoCopyWith<$Res> {
  __$$_AvailableFiltersDtoCopyWithImpl(_$_AvailableFiltersDto _value,
      $Res Function(_$_AvailableFiltersDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowedOutfits = null,
    Object? musicalGenres = null,
    Object? currencies = null,
    Object? minAges = null,
    Object? cities = null,
  }) {
    return _then(_$_AvailableFiltersDto(
      allowedOutfits: null == allowedOutfits
          ? _value._allowedOutfits
          : allowedOutfits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      musicalGenres: null == musicalGenres
          ? _value._musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minAges: null == minAges
          ? _value._minAges
          : minAges // ignore: cast_nullable_to_non_nullable
              as List<int>,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityDto>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@JsonSerializable()
class _$_AvailableFiltersDto extends _AvailableFiltersDto {
  const _$_AvailableFiltersDto(
      {required final List<String> allowedOutfits,
      required final List<String> musicalGenres,
      required final List<String> currencies,
      required final List<int> minAges,
      required final List<CityDto> cities})
      : _allowedOutfits = allowedOutfits,
        _musicalGenres = musicalGenres,
        _currencies = currencies,
        _minAges = minAges,
        _cities = cities,
        super._();

  factory _$_AvailableFiltersDto.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableFiltersDtoFromJson(json);

  final List<String> _allowedOutfits;
  @override
  List<String> get allowedOutfits {
    if (_allowedOutfits is EqualUnmodifiableListView) return _allowedOutfits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedOutfits);
  }

  final List<String> _musicalGenres;
  @override
  List<String> get musicalGenres {
    if (_musicalGenres is EqualUnmodifiableListView) return _musicalGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musicalGenres);
  }

  final List<String> _currencies;
  @override
  List<String> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  final List<int> _minAges;
  @override
  List<int> get minAges {
    if (_minAges is EqualUnmodifiableListView) return _minAges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_minAges);
  }

  final List<CityDto> _cities;
  @override
  List<CityDto> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'AvailableFiltersDto(allowedOutfits: $allowedOutfits, musicalGenres: $musicalGenres, currencies: $currencies, minAges: $minAges, cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableFiltersDto &&
            const DeepCollectionEquality()
                .equals(other._allowedOutfits, _allowedOutfits) &&
            const DeepCollectionEquality()
                .equals(other._musicalGenres, _musicalGenres) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            const DeepCollectionEquality().equals(other._minAges, _minAges) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allowedOutfits),
      const DeepCollectionEquality().hash(_musicalGenres),
      const DeepCollectionEquality().hash(_currencies),
      const DeepCollectionEquality().hash(_minAges),
      const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailableFiltersDtoCopyWith<_$_AvailableFiltersDto> get copyWith =>
      __$$_AvailableFiltersDtoCopyWithImpl<_$_AvailableFiltersDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableFiltersDtoToJson(
      this,
    );
  }
}

abstract class _AvailableFiltersDto extends AvailableFiltersDto {
  const factory _AvailableFiltersDto(
      {required final List<String> allowedOutfits,
      required final List<String> musicalGenres,
      required final List<String> currencies,
      required final List<int> minAges,
      required final List<CityDto> cities}) = _$_AvailableFiltersDto;
  const _AvailableFiltersDto._() : super._();

  factory _AvailableFiltersDto.fromJson(Map<String, dynamic> json) =
      _$_AvailableFiltersDto.fromJson;

  @override
  List<String> get allowedOutfits;
  @override
  List<String> get musicalGenres;
  @override
  List<String> get currencies;
  @override
  List<int> get minAges;
  @override
  List<CityDto> get cities;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableFiltersDtoCopyWith<_$_AvailableFiltersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

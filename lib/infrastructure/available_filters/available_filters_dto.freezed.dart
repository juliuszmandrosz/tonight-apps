// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'available_filters_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvailableFiltersDto _$AvailableFiltersDtoFromJson(Map<String, dynamic> json) {
  return _AvailableFiltersDto.fromJson(json);
}

/// @nodoc
class _$AvailableFiltersDtoTearOff {
  const _$AvailableFiltersDtoTearOff();

  _AvailableFiltersDto call(
      {required List<String> allowedOutfits,
      required List<String> musicalGenres,
      required List<String> currencies,
      required List<int> minAges}) {
    return _AvailableFiltersDto(
      allowedOutfits: allowedOutfits,
      musicalGenres: musicalGenres,
      currencies: currencies,
      minAges: minAges,
    );
  }

  AvailableFiltersDto fromJson(Map<String, Object?> json) {
    return AvailableFiltersDto.fromJson(json);
  }
}

/// @nodoc
const $AvailableFiltersDto = _$AvailableFiltersDtoTearOff();

/// @nodoc
mixin _$AvailableFiltersDto {
  List<String> get allowedOutfits => throw _privateConstructorUsedError;
  List<String> get musicalGenres => throw _privateConstructorUsedError;
  List<String> get currencies => throw _privateConstructorUsedError;
  List<int> get minAges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableFiltersDtoCopyWith<AvailableFiltersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableFiltersDtoCopyWith<$Res> {
  factory $AvailableFiltersDtoCopyWith(
          AvailableFiltersDto value, $Res Function(AvailableFiltersDto) then) =
      _$AvailableFiltersDtoCopyWithImpl<$Res>;
  $Res call(
      {List<String> allowedOutfits,
      List<String> musicalGenres,
      List<String> currencies,
      List<int> minAges});
}

/// @nodoc
class _$AvailableFiltersDtoCopyWithImpl<$Res>
    implements $AvailableFiltersDtoCopyWith<$Res> {
  _$AvailableFiltersDtoCopyWithImpl(this._value, this._then);

  final AvailableFiltersDto _value;
  // ignore: unused_field
  final $Res Function(AvailableFiltersDto) _then;

  @override
  $Res call({
    Object? allowedOutfits = freezed,
    Object? musicalGenres = freezed,
    Object? currencies = freezed,
    Object? minAges = freezed,
  }) {
    return _then(_value.copyWith(
      allowedOutfits: allowedOutfits == freezed
          ? _value.allowedOutfits
          : allowedOutfits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      musicalGenres: musicalGenres == freezed
          ? _value.musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minAges: minAges == freezed
          ? _value.minAges
          : minAges // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$AvailableFiltersDtoCopyWith<$Res>
    implements $AvailableFiltersDtoCopyWith<$Res> {
  factory _$AvailableFiltersDtoCopyWith(_AvailableFiltersDto value,
          $Res Function(_AvailableFiltersDto) then) =
      __$AvailableFiltersDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> allowedOutfits,
      List<String> musicalGenres,
      List<String> currencies,
      List<int> minAges});
}

/// @nodoc
class __$AvailableFiltersDtoCopyWithImpl<$Res>
    extends _$AvailableFiltersDtoCopyWithImpl<$Res>
    implements _$AvailableFiltersDtoCopyWith<$Res> {
  __$AvailableFiltersDtoCopyWithImpl(
      _AvailableFiltersDto _value, $Res Function(_AvailableFiltersDto) _then)
      : super(_value, (v) => _then(v as _AvailableFiltersDto));

  @override
  _AvailableFiltersDto get _value => super._value as _AvailableFiltersDto;

  @override
  $Res call({
    Object? allowedOutfits = freezed,
    Object? musicalGenres = freezed,
    Object? currencies = freezed,
    Object? minAges = freezed,
  }) {
    return _then(_AvailableFiltersDto(
      allowedOutfits: allowedOutfits == freezed
          ? _value.allowedOutfits
          : allowedOutfits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      musicalGenres: musicalGenres == freezed
          ? _value.musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minAges: minAges == freezed
          ? _value.minAges
          : minAges // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_AvailableFiltersDto extends _AvailableFiltersDto {
  const _$_AvailableFiltersDto(
      {required this.allowedOutfits,
      required this.musicalGenres,
      required this.currencies,
      required this.minAges})
      : super._();

  factory _$_AvailableFiltersDto.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableFiltersDtoFromJson(json);

  @override
  final List<String> allowedOutfits;
  @override
  final List<String> musicalGenres;
  @override
  final List<String> currencies;
  @override
  final List<int> minAges;

  @override
  String toString() {
    return 'AvailableFiltersDto(allowedOutfits: $allowedOutfits, musicalGenres: $musicalGenres, currencies: $currencies, minAges: $minAges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AvailableFiltersDto &&
            const DeepCollectionEquality()
                .equals(other.allowedOutfits, allowedOutfits) &&
            const DeepCollectionEquality()
                .equals(other.musicalGenres, musicalGenres) &&
            const DeepCollectionEquality()
                .equals(other.currencies, currencies) &&
            const DeepCollectionEquality().equals(other.minAges, minAges));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allowedOutfits),
      const DeepCollectionEquality().hash(musicalGenres),
      const DeepCollectionEquality().hash(currencies),
      const DeepCollectionEquality().hash(minAges));

  @JsonKey(ignore: true)
  @override
  _$AvailableFiltersDtoCopyWith<_AvailableFiltersDto> get copyWith =>
      __$AvailableFiltersDtoCopyWithImpl<_AvailableFiltersDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableFiltersDtoToJson(this);
  }
}

abstract class _AvailableFiltersDto extends AvailableFiltersDto {
  const factory _AvailableFiltersDto(
      {required List<String> allowedOutfits,
      required List<String> musicalGenres,
      required List<String> currencies,
      required List<int> minAges}) = _$_AvailableFiltersDto;
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
  @JsonKey(ignore: true)
  _$AvailableFiltersDtoCopyWith<_AvailableFiltersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

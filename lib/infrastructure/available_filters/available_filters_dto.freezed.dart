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
abstract class _$$_AvailableFiltersDtoCopyWith<$Res>
    implements $AvailableFiltersDtoCopyWith<$Res> {
  factory _$$_AvailableFiltersDtoCopyWith(_$_AvailableFiltersDto value,
          $Res Function(_$_AvailableFiltersDto) then) =
      __$$_AvailableFiltersDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> allowedOutfits,
      List<String> musicalGenres,
      List<String> currencies,
      List<int> minAges});
}

/// @nodoc
class __$$_AvailableFiltersDtoCopyWithImpl<$Res>
    extends _$AvailableFiltersDtoCopyWithImpl<$Res>
    implements _$$_AvailableFiltersDtoCopyWith<$Res> {
  __$$_AvailableFiltersDtoCopyWithImpl(_$_AvailableFiltersDto _value,
      $Res Function(_$_AvailableFiltersDto) _then)
      : super(_value, (v) => _then(v as _$_AvailableFiltersDto));

  @override
  _$_AvailableFiltersDto get _value => super._value as _$_AvailableFiltersDto;

  @override
  $Res call({
    Object? allowedOutfits = freezed,
    Object? musicalGenres = freezed,
    Object? currencies = freezed,
    Object? minAges = freezed,
  }) {
    return _then(_$_AvailableFiltersDto(
      allowedOutfits: allowedOutfits == freezed
          ? _value._allowedOutfits
          : allowedOutfits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      musicalGenres: musicalGenres == freezed
          ? _value._musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currencies: currencies == freezed
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minAges: minAges == freezed
          ? _value._minAges
          : minAges // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_AvailableFiltersDto extends _AvailableFiltersDto {
  const _$_AvailableFiltersDto(
      {required final List<String> allowedOutfits,
      required final List<String> musicalGenres,
      required final List<String> currencies,
      required final List<int> minAges})
      : _allowedOutfits = allowedOutfits,
        _musicalGenres = musicalGenres,
        _currencies = currencies,
        _minAges = minAges,
        super._();

  factory _$_AvailableFiltersDto.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableFiltersDtoFromJson(json);

  final List<String> _allowedOutfits;
  @override
  List<String> get allowedOutfits {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedOutfits);
  }

  final List<String> _musicalGenres;
  @override
  List<String> get musicalGenres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musicalGenres);
  }

  final List<String> _currencies;
  @override
  List<String> get currencies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  final List<int> _minAges;
  @override
  List<int> get minAges {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_minAges);
  }

  @override
  String toString() {
    return 'AvailableFiltersDto(allowedOutfits: $allowedOutfits, musicalGenres: $musicalGenres, currencies: $currencies, minAges: $minAges)';
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
            const DeepCollectionEquality().equals(other._minAges, _minAges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allowedOutfits),
      const DeepCollectionEquality().hash(_musicalGenres),
      const DeepCollectionEquality().hash(_currencies),
      const DeepCollectionEquality().hash(_minAges));

  @JsonKey(ignore: true)
  @override
  _$$_AvailableFiltersDtoCopyWith<_$_AvailableFiltersDto> get copyWith =>
      __$$_AvailableFiltersDtoCopyWithImpl<_$_AvailableFiltersDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableFiltersDtoToJson(this);
  }
}

abstract class _AvailableFiltersDto extends AvailableFiltersDto {
  const factory _AvailableFiltersDto(
      {required final List<String> allowedOutfits,
      required final List<String> musicalGenres,
      required final List<String> currencies,
      required final List<int> minAges}) = _$_AvailableFiltersDto;
  const _AvailableFiltersDto._() : super._();

  factory _AvailableFiltersDto.fromJson(Map<String, dynamic> json) =
      _$_AvailableFiltersDto.fromJson;

  @override
  List<String> get allowedOutfits => throw _privateConstructorUsedError;
  @override
  List<String> get musicalGenres => throw _privateConstructorUsedError;
  @override
  List<String> get currencies => throw _privateConstructorUsedError;
  @override
  List<int> get minAges => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableFiltersDtoCopyWith<_$_AvailableFiltersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

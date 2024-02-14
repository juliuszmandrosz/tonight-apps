// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_discount_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketplaceDiscountDto _$MarketplaceDiscountDtoFromJson(
    Map<String, dynamic> json) {
  return _MarketplaceDiscountDto.fromJson(json);
}

/// @nodoc
mixin _$MarketplaceDiscountDto {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get marketplaceUrl => throw _privateConstructorUsedError;

  /// Price in raver coins
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketplaceDiscountDtoCopyWith<MarketplaceDiscountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceDiscountDtoCopyWith<$Res> {
  factory $MarketplaceDiscountDtoCopyWith(MarketplaceDiscountDto value,
          $Res Function(MarketplaceDiscountDto) then) =
      _$MarketplaceDiscountDtoCopyWithImpl<$Res, MarketplaceDiscountDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String name,
      String description,
      String imageUrl,
      String marketplaceUrl,
      int price});
}

/// @nodoc
class _$MarketplaceDiscountDtoCopyWithImpl<$Res,
        $Val extends MarketplaceDiscountDto>
    implements $MarketplaceDiscountDtoCopyWith<$Res> {
  _$MarketplaceDiscountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? marketplaceUrl = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      marketplaceUrl: null == marketplaceUrl
          ? _value.marketplaceUrl
          : marketplaceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarketplaceDiscountDtoCopyWith<$Res>
    implements $MarketplaceDiscountDtoCopyWith<$Res> {
  factory _$$_MarketplaceDiscountDtoCopyWith(_$_MarketplaceDiscountDto value,
          $Res Function(_$_MarketplaceDiscountDto) then) =
      __$$_MarketplaceDiscountDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String name,
      String description,
      String imageUrl,
      String marketplaceUrl,
      int price});
}

/// @nodoc
class __$$_MarketplaceDiscountDtoCopyWithImpl<$Res>
    extends _$MarketplaceDiscountDtoCopyWithImpl<$Res,
        _$_MarketplaceDiscountDto>
    implements _$$_MarketplaceDiscountDtoCopyWith<$Res> {
  __$$_MarketplaceDiscountDtoCopyWithImpl(_$_MarketplaceDiscountDto _value,
      $Res Function(_$_MarketplaceDiscountDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? marketplaceUrl = null,
    Object? price = null,
  }) {
    return _then(_$_MarketplaceDiscountDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      marketplaceUrl: null == marketplaceUrl
          ? _value.marketplaceUrl
          : marketplaceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarketplaceDiscountDto extends _MarketplaceDiscountDto {
  const _$_MarketplaceDiscountDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.marketplaceUrl,
      required this.price})
      : super._();

  factory _$_MarketplaceDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$$_MarketplaceDiscountDtoFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String marketplaceUrl;

  /// Price in raver coins
  @override
  final int price;

  @override
  String toString() {
    return 'MarketplaceDiscountDto(id: $id, name: $name, description: $description, imageUrl: $imageUrl, marketplaceUrl: $marketplaceUrl, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketplaceDiscountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.marketplaceUrl, marketplaceUrl) ||
                other.marketplaceUrl == marketplaceUrl) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, imageUrl, marketplaceUrl, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketplaceDiscountDtoCopyWith<_$_MarketplaceDiscountDto> get copyWith =>
      __$$_MarketplaceDiscountDtoCopyWithImpl<_$_MarketplaceDiscountDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarketplaceDiscountDtoToJson(
      this,
    );
  }
}

abstract class _MarketplaceDiscountDto extends MarketplaceDiscountDto {
  const factory _MarketplaceDiscountDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String? id,
      required final String name,
      required final String description,
      required final String imageUrl,
      required final String marketplaceUrl,
      required final int price}) = _$_MarketplaceDiscountDto;
  const _MarketplaceDiscountDto._() : super._();

  factory _MarketplaceDiscountDto.fromJson(Map<String, dynamic> json) =
      _$_MarketplaceDiscountDto.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  String get marketplaceUrl;
  @override

  /// Price in raver coins
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_MarketplaceDiscountDtoCopyWith<_$_MarketplaceDiscountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_marketplace_discount_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserMarketplaceDiscountDto _$UserMarketplaceDiscountDtoFromJson(
    Map<String, dynamic> json) {
  return _UserMarketplaceDiscountDto.fromJson(json);
}

/// @nodoc
mixin _$UserMarketplaceDiscountDto {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get marketplaceUrl => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get redeemedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMarketplaceDiscountDtoCopyWith<UserMarketplaceDiscountDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMarketplaceDiscountDtoCopyWith<$Res> {
  factory $UserMarketplaceDiscountDtoCopyWith(UserMarketplaceDiscountDto value,
          $Res Function(UserMarketplaceDiscountDto) then) =
      _$UserMarketplaceDiscountDtoCopyWithImpl<$Res,
          UserMarketplaceDiscountDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String name,
      String description,
      String imageUrl,
      String marketplaceUrl,
      String code,
      @FirebaseTimestampJsonConverter() DateTime redeemedAt});
}

/// @nodoc
class _$UserMarketplaceDiscountDtoCopyWithImpl<$Res,
        $Val extends UserMarketplaceDiscountDto>
    implements $UserMarketplaceDiscountDtoCopyWith<$Res> {
  _$UserMarketplaceDiscountDtoCopyWithImpl(this._value, this._then);

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
    Object? code = null,
    Object? redeemedAt = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      redeemedAt: null == redeemedAt
          ? _value.redeemedAt
          : redeemedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserMarketplaceDiscountDtoCopyWith<$Res>
    implements $UserMarketplaceDiscountDtoCopyWith<$Res> {
  factory _$$_UserMarketplaceDiscountDtoCopyWith(
          _$_UserMarketplaceDiscountDto value,
          $Res Function(_$_UserMarketplaceDiscountDto) then) =
      __$$_UserMarketplaceDiscountDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String name,
      String description,
      String imageUrl,
      String marketplaceUrl,
      String code,
      @FirebaseTimestampJsonConverter() DateTime redeemedAt});
}

/// @nodoc
class __$$_UserMarketplaceDiscountDtoCopyWithImpl<$Res>
    extends _$UserMarketplaceDiscountDtoCopyWithImpl<$Res,
        _$_UserMarketplaceDiscountDto>
    implements _$$_UserMarketplaceDiscountDtoCopyWith<$Res> {
  __$$_UserMarketplaceDiscountDtoCopyWithImpl(
      _$_UserMarketplaceDiscountDto _value,
      $Res Function(_$_UserMarketplaceDiscountDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? marketplaceUrl = null,
    Object? code = null,
    Object? redeemedAt = null,
  }) {
    return _then(_$_UserMarketplaceDiscountDto(
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      redeemedAt: null == redeemedAt
          ? _value.redeemedAt
          : redeemedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserMarketplaceDiscountDto extends _UserMarketplaceDiscountDto {
  const _$_UserMarketplaceDiscountDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.marketplaceUrl,
      required this.code,
      @FirebaseTimestampJsonConverter() required this.redeemedAt})
      : super._();

  factory _$_UserMarketplaceDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserMarketplaceDiscountDtoFromJson(json);

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
  @override
  final String code;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime redeemedAt;

  @override
  String toString() {
    return 'UserMarketplaceDiscountDto(id: $id, name: $name, description: $description, imageUrl: $imageUrl, marketplaceUrl: $marketplaceUrl, code: $code, redeemedAt: $redeemedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserMarketplaceDiscountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.marketplaceUrl, marketplaceUrl) ||
                other.marketplaceUrl == marketplaceUrl) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.redeemedAt, redeemedAt) ||
                other.redeemedAt == redeemedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, imageUrl,
      marketplaceUrl, code, redeemedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserMarketplaceDiscountDtoCopyWith<_$_UserMarketplaceDiscountDto>
      get copyWith => __$$_UserMarketplaceDiscountDtoCopyWithImpl<
          _$_UserMarketplaceDiscountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserMarketplaceDiscountDtoToJson(
      this,
    );
  }
}

abstract class _UserMarketplaceDiscountDto extends UserMarketplaceDiscountDto {
  const factory _UserMarketplaceDiscountDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String? id,
      required final String name,
      required final String description,
      required final String imageUrl,
      required final String marketplaceUrl,
      required final String code,
      @FirebaseTimestampJsonConverter()
      required final DateTime redeemedAt}) = _$_UserMarketplaceDiscountDto;
  const _UserMarketplaceDiscountDto._() : super._();

  factory _UserMarketplaceDiscountDto.fromJson(Map<String, dynamic> json) =
      _$_UserMarketplaceDiscountDto.fromJson;

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
  String get code;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get redeemedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserMarketplaceDiscountDtoCopyWith<_$_UserMarketplaceDiscountDto>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'promotion_code_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromotionCodeDto _$PromotionCodeDtoFromJson(Map<String, dynamic> json) {
  return _PromotionCodeDto.fromJson(json);
}

/// @nodoc
mixin _$PromotionCodeDto {
  @JsonKey(ignore: true)
  String? get code => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  int get amountOff => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int? get maxRedemptions => throw _privateConstructorUsedError;
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get expirationDateTime => throw _privateConstructorUsedError;
  int get timesRedeemed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionCodeDtoCopyWith<PromotionCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCodeDtoCopyWith<$Res> {
  factory $PromotionCodeDtoCopyWith(
          PromotionCodeDto value, $Res Function(PromotionCodeDto) then) =
      _$PromotionCodeDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? code,
      bool isValid,
      int amountOff,
      String currency,
      int? maxRedemptions,
      @FirebaseNullableTimestampJsonConverter() DateTime? expirationDateTime,
      int timesRedeemed});
}

/// @nodoc
class _$PromotionCodeDtoCopyWithImpl<$Res>
    implements $PromotionCodeDtoCopyWith<$Res> {
  _$PromotionCodeDtoCopyWithImpl(this._value, this._then);

  final PromotionCodeDto _value;
  // ignore: unused_field
  final $Res Function(PromotionCodeDto) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? isValid = freezed,
    Object? amountOff = freezed,
    Object? currency = freezed,
    Object? maxRedemptions = freezed,
    Object? expirationDateTime = freezed,
    Object? timesRedeemed = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      amountOff: amountOff == freezed
          ? _value.amountOff
          : amountOff // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      maxRedemptions: maxRedemptions == freezed
          ? _value.maxRedemptions
          : maxRedemptions // ignore: cast_nullable_to_non_nullable
              as int?,
      expirationDateTime: expirationDateTime == freezed
          ? _value.expirationDateTime
          : expirationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timesRedeemed: timesRedeemed == freezed
          ? _value.timesRedeemed
          : timesRedeemed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PromotionCodeDtoCopyWith<$Res>
    implements $PromotionCodeDtoCopyWith<$Res> {
  factory _$$_PromotionCodeDtoCopyWith(
          _$_PromotionCodeDto value, $Res Function(_$_PromotionCodeDto) then) =
      __$$_PromotionCodeDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? code,
      bool isValid,
      int amountOff,
      String currency,
      int? maxRedemptions,
      @FirebaseNullableTimestampJsonConverter() DateTime? expirationDateTime,
      int timesRedeemed});
}

/// @nodoc
class __$$_PromotionCodeDtoCopyWithImpl<$Res>
    extends _$PromotionCodeDtoCopyWithImpl<$Res>
    implements _$$_PromotionCodeDtoCopyWith<$Res> {
  __$$_PromotionCodeDtoCopyWithImpl(
      _$_PromotionCodeDto _value, $Res Function(_$_PromotionCodeDto) _then)
      : super(_value, (v) => _then(v as _$_PromotionCodeDto));

  @override
  _$_PromotionCodeDto get _value => super._value as _$_PromotionCodeDto;

  @override
  $Res call({
    Object? code = freezed,
    Object? isValid = freezed,
    Object? amountOff = freezed,
    Object? currency = freezed,
    Object? maxRedemptions = freezed,
    Object? expirationDateTime = freezed,
    Object? timesRedeemed = freezed,
  }) {
    return _then(_$_PromotionCodeDto(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      amountOff: amountOff == freezed
          ? _value.amountOff
          : amountOff // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      maxRedemptions: maxRedemptions == freezed
          ? _value.maxRedemptions
          : maxRedemptions // ignore: cast_nullable_to_non_nullable
              as int?,
      expirationDateTime: expirationDateTime == freezed
          ? _value.expirationDateTime
          : expirationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timesRedeemed: timesRedeemed == freezed
          ? _value.timesRedeemed
          : timesRedeemed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionCodeDto extends _PromotionCodeDto {
  const _$_PromotionCodeDto(
      {@JsonKey(ignore: true) this.code,
      required this.isValid,
      required this.amountOff,
      required this.currency,
      this.maxRedemptions,
      @FirebaseNullableTimestampJsonConverter() this.expirationDateTime,
      this.timesRedeemed = 0})
      : super._();

  factory _$_PromotionCodeDto.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionCodeDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? code;
  @override
  final bool isValid;
  @override
  final int amountOff;
  @override
  final String currency;
  @override
  final int? maxRedemptions;
  @override
  @FirebaseNullableTimestampJsonConverter()
  final DateTime? expirationDateTime;
  @override
  @JsonKey()
  final int timesRedeemed;

  @override
  String toString() {
    return 'PromotionCodeDto(code: $code, isValid: $isValid, amountOff: $amountOff, currency: $currency, maxRedemptions: $maxRedemptions, expirationDateTime: $expirationDateTime, timesRedeemed: $timesRedeemed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionCodeDto &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.isValid, isValid) &&
            const DeepCollectionEquality().equals(other.amountOff, amountOff) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.maxRedemptions, maxRedemptions) &&
            const DeepCollectionEquality()
                .equals(other.expirationDateTime, expirationDateTime) &&
            const DeepCollectionEquality()
                .equals(other.timesRedeemed, timesRedeemed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(isValid),
      const DeepCollectionEquality().hash(amountOff),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(maxRedemptions),
      const DeepCollectionEquality().hash(expirationDateTime),
      const DeepCollectionEquality().hash(timesRedeemed));

  @JsonKey(ignore: true)
  @override
  _$$_PromotionCodeDtoCopyWith<_$_PromotionCodeDto> get copyWith =>
      __$$_PromotionCodeDtoCopyWithImpl<_$_PromotionCodeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionCodeDtoToJson(this);
  }
}

abstract class _PromotionCodeDto extends PromotionCodeDto {
  const factory _PromotionCodeDto(
      {@JsonKey(ignore: true)
          final String? code,
      required final bool isValid,
      required final int amountOff,
      required final String currency,
      final int? maxRedemptions,
      @FirebaseNullableTimestampJsonConverter()
          final DateTime? expirationDateTime,
      final int timesRedeemed}) = _$_PromotionCodeDto;
  const _PromotionCodeDto._() : super._();

  factory _PromotionCodeDto.fromJson(Map<String, dynamic> json) =
      _$_PromotionCodeDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get code;
  @override
  bool get isValid;
  @override
  int get amountOff;
  @override
  String get currency;
  @override
  int? get maxRedemptions;
  @override
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get expirationDateTime;
  @override
  int get timesRedeemed;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionCodeDtoCopyWith<_$_PromotionCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

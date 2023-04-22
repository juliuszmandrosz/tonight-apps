// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_params_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyParamsDto _$CurrencyParamsDtoFromJson(Map<String, dynamic> json) {
  return _CurrencyParamsDto.fromJson(json);
}

/// @nodoc
mixin _$CurrencyParamsDto {
  int get minTicketPrice => throw _privateConstructorUsedError;
  int get maxTicketPrice => throw _privateConstructorUsedError;
  double get minServiceFeeAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyParamsDtoCopyWith<CurrencyParamsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyParamsDtoCopyWith<$Res> {
  factory $CurrencyParamsDtoCopyWith(
          CurrencyParamsDto value, $Res Function(CurrencyParamsDto) then) =
      _$CurrencyParamsDtoCopyWithImpl<$Res, CurrencyParamsDto>;
  @useResult
  $Res call(
      {int minTicketPrice, int maxTicketPrice, double minServiceFeeAmount});
}

/// @nodoc
class _$CurrencyParamsDtoCopyWithImpl<$Res, $Val extends CurrencyParamsDto>
    implements $CurrencyParamsDtoCopyWith<$Res> {
  _$CurrencyParamsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minTicketPrice = null,
    Object? maxTicketPrice = null,
    Object? minServiceFeeAmount = null,
  }) {
    return _then(_value.copyWith(
      minTicketPrice: null == minTicketPrice
          ? _value.minTicketPrice
          : minTicketPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxTicketPrice: null == maxTicketPrice
          ? _value.maxTicketPrice
          : maxTicketPrice // ignore: cast_nullable_to_non_nullable
              as int,
      minServiceFeeAmount: null == minServiceFeeAmount
          ? _value.minServiceFeeAmount
          : minServiceFeeAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyParamsDtoCopyWith<$Res>
    implements $CurrencyParamsDtoCopyWith<$Res> {
  factory _$$_CurrencyParamsDtoCopyWith(_$_CurrencyParamsDto value,
          $Res Function(_$_CurrencyParamsDto) then) =
      __$$_CurrencyParamsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int minTicketPrice, int maxTicketPrice, double minServiceFeeAmount});
}

/// @nodoc
class __$$_CurrencyParamsDtoCopyWithImpl<$Res>
    extends _$CurrencyParamsDtoCopyWithImpl<$Res, _$_CurrencyParamsDto>
    implements _$$_CurrencyParamsDtoCopyWith<$Res> {
  __$$_CurrencyParamsDtoCopyWithImpl(
      _$_CurrencyParamsDto _value, $Res Function(_$_CurrencyParamsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minTicketPrice = null,
    Object? maxTicketPrice = null,
    Object? minServiceFeeAmount = null,
  }) {
    return _then(_$_CurrencyParamsDto(
      minTicketPrice: null == minTicketPrice
          ? _value.minTicketPrice
          : minTicketPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxTicketPrice: null == maxTicketPrice
          ? _value.maxTicketPrice
          : maxTicketPrice // ignore: cast_nullable_to_non_nullable
              as int,
      minServiceFeeAmount: null == minServiceFeeAmount
          ? _value.minServiceFeeAmount
          : minServiceFeeAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_CurrencyParamsDto extends _CurrencyParamsDto {
  const _$_CurrencyParamsDto(
      {required this.minTicketPrice,
      required this.maxTicketPrice,
      required this.minServiceFeeAmount})
      : super._();

  factory _$_CurrencyParamsDto.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyParamsDtoFromJson(json);

  @override
  final int minTicketPrice;
  @override
  final int maxTicketPrice;
  @override
  final double minServiceFeeAmount;

  @override
  String toString() {
    return 'CurrencyParamsDto(minTicketPrice: $minTicketPrice, maxTicketPrice: $maxTicketPrice, minServiceFeeAmount: $minServiceFeeAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyParamsDto &&
            (identical(other.minTicketPrice, minTicketPrice) ||
                other.minTicketPrice == minTicketPrice) &&
            (identical(other.maxTicketPrice, maxTicketPrice) ||
                other.maxTicketPrice == maxTicketPrice) &&
            (identical(other.minServiceFeeAmount, minServiceFeeAmount) ||
                other.minServiceFeeAmount == minServiceFeeAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, minTicketPrice, maxTicketPrice, minServiceFeeAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyParamsDtoCopyWith<_$_CurrencyParamsDto> get copyWith =>
      __$$_CurrencyParamsDtoCopyWithImpl<_$_CurrencyParamsDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyParamsDtoToJson(
      this,
    );
  }
}

abstract class _CurrencyParamsDto extends CurrencyParamsDto {
  const factory _CurrencyParamsDto(
      {required final int minTicketPrice,
      required final int maxTicketPrice,
      required final double minServiceFeeAmount}) = _$_CurrencyParamsDto;
  const _CurrencyParamsDto._() : super._();

  factory _CurrencyParamsDto.fromJson(Map<String, dynamic> json) =
      _$_CurrencyParamsDto.fromJson;

  @override
  int get minTicketPrice;
  @override
  int get maxTicketPrice;
  @override
  double get minServiceFeeAmount;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyParamsDtoCopyWith<_$_CurrencyParamsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ticket_sales_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketSalesDto _$TicketSalesDtoFromJson(Map<String, dynamic> json) {
  return _TicketSalesDto.fromJson(json);
}

/// @nodoc
class _$TicketSalesDtoTearOff {
  const _$TicketSalesDtoTearOff();

  _TicketSalesDto call(
      {required String currency,
      double totalRevenue = 0,
      double clubIncome = 0,
      int ticketsSold = 0,
      int vipsSold = 0}) {
    return _TicketSalesDto(
      currency: currency,
      totalRevenue: totalRevenue,
      clubIncome: clubIncome,
      ticketsSold: ticketsSold,
      vipsSold: vipsSold,
    );
  }

  TicketSalesDto fromJson(Map<String, Object?> json) {
    return TicketSalesDto.fromJson(json);
  }
}

/// @nodoc
const $TicketSalesDto = _$TicketSalesDtoTearOff();

/// @nodoc
mixin _$TicketSalesDto {
  String get currency => throw _privateConstructorUsedError;
  double get totalRevenue => throw _privateConstructorUsedError;
  double get clubIncome => throw _privateConstructorUsedError;
  int get ticketsSold => throw _privateConstructorUsedError;
  int get vipsSold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketSalesDtoCopyWith<TicketSalesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketSalesDtoCopyWith<$Res> {
  factory $TicketSalesDtoCopyWith(
          TicketSalesDto value, $Res Function(TicketSalesDto) then) =
      _$TicketSalesDtoCopyWithImpl<$Res>;
  $Res call(
      {String currency,
      double totalRevenue,
      double clubIncome,
      int ticketsSold,
      int vipsSold});
}

/// @nodoc
class _$TicketSalesDtoCopyWithImpl<$Res>
    implements $TicketSalesDtoCopyWith<$Res> {
  _$TicketSalesDtoCopyWithImpl(this._value, this._then);

  final TicketSalesDto _value;
  // ignore: unused_field
  final $Res Function(TicketSalesDto) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? totalRevenue = freezed,
    Object? clubIncome = freezed,
    Object? ticketsSold = freezed,
    Object? vipsSold = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      totalRevenue: totalRevenue == freezed
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      clubIncome: clubIncome == freezed
          ? _value.clubIncome
          : clubIncome // ignore: cast_nullable_to_non_nullable
              as double,
      ticketsSold: ticketsSold == freezed
          ? _value.ticketsSold
          : ticketsSold // ignore: cast_nullable_to_non_nullable
              as int,
      vipsSold: vipsSold == freezed
          ? _value.vipsSold
          : vipsSold // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TicketSalesDtoCopyWith<$Res>
    implements $TicketSalesDtoCopyWith<$Res> {
  factory _$TicketSalesDtoCopyWith(
          _TicketSalesDto value, $Res Function(_TicketSalesDto) then) =
      __$TicketSalesDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String currency,
      double totalRevenue,
      double clubIncome,
      int ticketsSold,
      int vipsSold});
}

/// @nodoc
class __$TicketSalesDtoCopyWithImpl<$Res>
    extends _$TicketSalesDtoCopyWithImpl<$Res>
    implements _$TicketSalesDtoCopyWith<$Res> {
  __$TicketSalesDtoCopyWithImpl(
      _TicketSalesDto _value, $Res Function(_TicketSalesDto) _then)
      : super(_value, (v) => _then(v as _TicketSalesDto));

  @override
  _TicketSalesDto get _value => super._value as _TicketSalesDto;

  @override
  $Res call({
    Object? currency = freezed,
    Object? totalRevenue = freezed,
    Object? clubIncome = freezed,
    Object? ticketsSold = freezed,
    Object? vipsSold = freezed,
  }) {
    return _then(_TicketSalesDto(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      totalRevenue: totalRevenue == freezed
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      clubIncome: clubIncome == freezed
          ? _value.clubIncome
          : clubIncome // ignore: cast_nullable_to_non_nullable
              as double,
      ticketsSold: ticketsSold == freezed
          ? _value.ticketsSold
          : ticketsSold // ignore: cast_nullable_to_non_nullable
              as int,
      vipsSold: vipsSold == freezed
          ? _value.vipsSold
          : vipsSold // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_TicketSalesDto extends _TicketSalesDto {
  const _$_TicketSalesDto(
      {required this.currency,
      this.totalRevenue = 0,
      this.clubIncome = 0,
      this.ticketsSold = 0,
      this.vipsSold = 0})
      : super._();

  factory _$_TicketSalesDto.fromJson(Map<String, dynamic> json) =>
      _$$_TicketSalesDtoFromJson(json);

  @override
  final String currency;
  @JsonKey()
  @override
  final double totalRevenue;
  @JsonKey()
  @override
  final double clubIncome;
  @JsonKey()
  @override
  final int ticketsSold;
  @JsonKey()
  @override
  final int vipsSold;

  @override
  String toString() {
    return 'TicketSalesDto(currency: $currency, totalRevenue: $totalRevenue, clubIncome: $clubIncome, ticketsSold: $ticketsSold, vipsSold: $vipsSold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TicketSalesDto &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.totalRevenue, totalRevenue) &&
            const DeepCollectionEquality()
                .equals(other.clubIncome, clubIncome) &&
            const DeepCollectionEquality()
                .equals(other.ticketsSold, ticketsSold) &&
            const DeepCollectionEquality().equals(other.vipsSold, vipsSold));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(totalRevenue),
      const DeepCollectionEquality().hash(clubIncome),
      const DeepCollectionEquality().hash(ticketsSold),
      const DeepCollectionEquality().hash(vipsSold));

  @JsonKey(ignore: true)
  @override
  _$TicketSalesDtoCopyWith<_TicketSalesDto> get copyWith =>
      __$TicketSalesDtoCopyWithImpl<_TicketSalesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketSalesDtoToJson(this);
  }
}

abstract class _TicketSalesDto extends TicketSalesDto {
  const factory _TicketSalesDto(
      {required String currency,
      double totalRevenue,
      double clubIncome,
      int ticketsSold,
      int vipsSold}) = _$_TicketSalesDto;
  const _TicketSalesDto._() : super._();

  factory _TicketSalesDto.fromJson(Map<String, dynamic> json) =
      _$_TicketSalesDto.fromJson;

  @override
  String get currency;
  @override
  double get totalRevenue;
  @override
  double get clubIncome;
  @override
  int get ticketsSold;
  @override
  int get vipsSold;
  @override
  @JsonKey(ignore: true)
  _$TicketSalesDtoCopyWith<_TicketSalesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

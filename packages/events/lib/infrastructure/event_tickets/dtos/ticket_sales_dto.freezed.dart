// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_sales_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketSalesDto _$TicketSalesDtoFromJson(Map<String, dynamic> json) {
  return _TicketSalesDto.fromJson(json);
}

/// @nodoc
mixin _$TicketSalesDto {
  String get currency => throw _privateConstructorUsedError;
  double get eventFee => throw _privateConstructorUsedError;
  double get totalRevenue => throw _privateConstructorUsedError;
  double get clubIncome => throw _privateConstructorUsedError;
  int get ticketsSold => throw _privateConstructorUsedError;
  int get vipsSold => throw _privateConstructorUsedError;
  bool get isExclusiveEvent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketSalesDtoCopyWith<TicketSalesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketSalesDtoCopyWith<$Res> {
  factory $TicketSalesDtoCopyWith(
          TicketSalesDto value, $Res Function(TicketSalesDto) then) =
      _$TicketSalesDtoCopyWithImpl<$Res, TicketSalesDto>;
  @useResult
  $Res call(
      {String currency,
      double eventFee,
      double totalRevenue,
      double clubIncome,
      int ticketsSold,
      int vipsSold,
      bool isExclusiveEvent});
}

/// @nodoc
class _$TicketSalesDtoCopyWithImpl<$Res, $Val extends TicketSalesDto>
    implements $TicketSalesDtoCopyWith<$Res> {
  _$TicketSalesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? eventFee = null,
    Object? totalRevenue = null,
    Object? clubIncome = null,
    Object? ticketsSold = null,
    Object? vipsSold = null,
    Object? isExclusiveEvent = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      eventFee: null == eventFee
          ? _value.eventFee
          : eventFee // ignore: cast_nullable_to_non_nullable
              as double,
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      clubIncome: null == clubIncome
          ? _value.clubIncome
          : clubIncome // ignore: cast_nullable_to_non_nullable
              as double,
      ticketsSold: null == ticketsSold
          ? _value.ticketsSold
          : ticketsSold // ignore: cast_nullable_to_non_nullable
              as int,
      vipsSold: null == vipsSold
          ? _value.vipsSold
          : vipsSold // ignore: cast_nullable_to_non_nullable
              as int,
      isExclusiveEvent: null == isExclusiveEvent
          ? _value.isExclusiveEvent
          : isExclusiveEvent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketSalesDtoCopyWith<$Res>
    implements $TicketSalesDtoCopyWith<$Res> {
  factory _$$_TicketSalesDtoCopyWith(
          _$_TicketSalesDto value, $Res Function(_$_TicketSalesDto) then) =
      __$$_TicketSalesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currency,
      double eventFee,
      double totalRevenue,
      double clubIncome,
      int ticketsSold,
      int vipsSold,
      bool isExclusiveEvent});
}

/// @nodoc
class __$$_TicketSalesDtoCopyWithImpl<$Res>
    extends _$TicketSalesDtoCopyWithImpl<$Res, _$_TicketSalesDto>
    implements _$$_TicketSalesDtoCopyWith<$Res> {
  __$$_TicketSalesDtoCopyWithImpl(
      _$_TicketSalesDto _value, $Res Function(_$_TicketSalesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? eventFee = null,
    Object? totalRevenue = null,
    Object? clubIncome = null,
    Object? ticketsSold = null,
    Object? vipsSold = null,
    Object? isExclusiveEvent = null,
  }) {
    return _then(_$_TicketSalesDto(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      eventFee: null == eventFee
          ? _value.eventFee
          : eventFee // ignore: cast_nullable_to_non_nullable
              as double,
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      clubIncome: null == clubIncome
          ? _value.clubIncome
          : clubIncome // ignore: cast_nullable_to_non_nullable
              as double,
      ticketsSold: null == ticketsSold
          ? _value.ticketsSold
          : ticketsSold // ignore: cast_nullable_to_non_nullable
              as int,
      vipsSold: null == vipsSold
          ? _value.vipsSold
          : vipsSold // ignore: cast_nullable_to_non_nullable
              as int,
      isExclusiveEvent: null == isExclusiveEvent
          ? _value.isExclusiveEvent
          : isExclusiveEvent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_TicketSalesDto extends _TicketSalesDto {
  const _$_TicketSalesDto(
      {required this.currency,
      required this.eventFee,
      this.totalRevenue = 0,
      this.clubIncome = 0,
      this.ticketsSold = 0,
      this.vipsSold = 0,
      this.isExclusiveEvent = false})
      : super._();

  factory _$_TicketSalesDto.fromJson(Map<String, dynamic> json) =>
      _$$_TicketSalesDtoFromJson(json);

  @override
  final String currency;
  @override
  final double eventFee;
  @override
  @JsonKey()
  final double totalRevenue;
  @override
  @JsonKey()
  final double clubIncome;
  @override
  @JsonKey()
  final int ticketsSold;
  @override
  @JsonKey()
  final int vipsSold;
  @override
  @JsonKey()
  final bool isExclusiveEvent;

  @override
  String toString() {
    return 'TicketSalesDto(currency: $currency, eventFee: $eventFee, totalRevenue: $totalRevenue, clubIncome: $clubIncome, ticketsSold: $ticketsSold, vipsSold: $vipsSold, isExclusiveEvent: $isExclusiveEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketSalesDto &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.eventFee, eventFee) ||
                other.eventFee == eventFee) &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            (identical(other.clubIncome, clubIncome) ||
                other.clubIncome == clubIncome) &&
            (identical(other.ticketsSold, ticketsSold) ||
                other.ticketsSold == ticketsSold) &&
            (identical(other.vipsSold, vipsSold) ||
                other.vipsSold == vipsSold) &&
            (identical(other.isExclusiveEvent, isExclusiveEvent) ||
                other.isExclusiveEvent == isExclusiveEvent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currency, eventFee, totalRevenue,
      clubIncome, ticketsSold, vipsSold, isExclusiveEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketSalesDtoCopyWith<_$_TicketSalesDto> get copyWith =>
      __$$_TicketSalesDtoCopyWithImpl<_$_TicketSalesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketSalesDtoToJson(
      this,
    );
  }
}

abstract class _TicketSalesDto extends TicketSalesDto {
  const factory _TicketSalesDto(
      {required final String currency,
      required final double eventFee,
      final double totalRevenue,
      final double clubIncome,
      final int ticketsSold,
      final int vipsSold,
      final bool isExclusiveEvent}) = _$_TicketSalesDto;
  const _TicketSalesDto._() : super._();

  factory _TicketSalesDto.fromJson(Map<String, dynamic> json) =
      _$_TicketSalesDto.fromJson;

  @override
  String get currency;
  @override
  double get eventFee;
  @override
  double get totalRevenue;
  @override
  double get clubIncome;
  @override
  int get ticketsSold;
  @override
  int get vipsSold;
  @override
  bool get isExclusiveEvent;
  @override
  @JsonKey(ignore: true)
  _$$_TicketSalesDtoCopyWith<_$_TicketSalesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

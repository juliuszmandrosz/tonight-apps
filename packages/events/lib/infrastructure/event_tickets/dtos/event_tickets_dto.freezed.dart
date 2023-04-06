// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_tickets_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventTicketsDto _$EventTicketsDtoFromJson(Map<String, dynamic> json) {
  return _EventTicketsDto.fromJson(json);
}

/// @nodoc
mixin _$EventTicketsDto {
  @JsonKey(ignore: true)
  String? get eventId => throw _privateConstructorUsedError;
  List<TicketPoolDto> get ticketPools => throw _privateConstructorUsedError;
  TicketSalesDto get ticketSales => throw _privateConstructorUsedError;
  int get ticketQuantity => throw _privateConstructorUsedError;
  bool get isSoldOut => throw _privateConstructorUsedError;
  bool get isSaleOnlyAtGate => throw _privateConstructorUsedError;
  int? get priceAtGate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventTicketsDtoCopyWith<EventTicketsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventTicketsDtoCopyWith<$Res> {
  factory $EventTicketsDtoCopyWith(
          EventTicketsDto value, $Res Function(EventTicketsDto) then) =
      _$EventTicketsDtoCopyWithImpl<$Res, EventTicketsDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? eventId,
      List<TicketPoolDto> ticketPools,
      TicketSalesDto ticketSales,
      int ticketQuantity,
      bool isSoldOut,
      bool isSaleOnlyAtGate,
      int? priceAtGate});

  $TicketSalesDtoCopyWith<$Res> get ticketSales;
}

/// @nodoc
class _$EventTicketsDtoCopyWithImpl<$Res, $Val extends EventTicketsDto>
    implements $EventTicketsDtoCopyWith<$Res> {
  _$EventTicketsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = freezed,
    Object? ticketPools = null,
    Object? ticketSales = null,
    Object? ticketQuantity = null,
    Object? isSoldOut = null,
    Object? isSaleOnlyAtGate = null,
    Object? priceAtGate = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketPools: null == ticketPools
          ? _value.ticketPools
          : ticketPools // ignore: cast_nullable_to_non_nullable
              as List<TicketPoolDto>,
      ticketSales: null == ticketSales
          ? _value.ticketSales
          : ticketSales // ignore: cast_nullable_to_non_nullable
              as TicketSalesDto,
      ticketQuantity: null == ticketQuantity
          ? _value.ticketQuantity
          : ticketQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isSoldOut: null == isSoldOut
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaleOnlyAtGate: null == isSaleOnlyAtGate
          ? _value.isSaleOnlyAtGate
          : isSaleOnlyAtGate // ignore: cast_nullable_to_non_nullable
              as bool,
      priceAtGate: freezed == priceAtGate
          ? _value.priceAtGate
          : priceAtGate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketSalesDtoCopyWith<$Res> get ticketSales {
    return $TicketSalesDtoCopyWith<$Res>(_value.ticketSales, (value) {
      return _then(_value.copyWith(ticketSales: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventTicketsDtoCopyWith<$Res>
    implements $EventTicketsDtoCopyWith<$Res> {
  factory _$$_EventTicketsDtoCopyWith(
          _$_EventTicketsDto value, $Res Function(_$_EventTicketsDto) then) =
      __$$_EventTicketsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? eventId,
      List<TicketPoolDto> ticketPools,
      TicketSalesDto ticketSales,
      int ticketQuantity,
      bool isSoldOut,
      bool isSaleOnlyAtGate,
      int? priceAtGate});

  @override
  $TicketSalesDtoCopyWith<$Res> get ticketSales;
}

/// @nodoc
class __$$_EventTicketsDtoCopyWithImpl<$Res>
    extends _$EventTicketsDtoCopyWithImpl<$Res, _$_EventTicketsDto>
    implements _$$_EventTicketsDtoCopyWith<$Res> {
  __$$_EventTicketsDtoCopyWithImpl(
      _$_EventTicketsDto _value, $Res Function(_$_EventTicketsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = freezed,
    Object? ticketPools = null,
    Object? ticketSales = null,
    Object? ticketQuantity = null,
    Object? isSoldOut = null,
    Object? isSaleOnlyAtGate = null,
    Object? priceAtGate = freezed,
  }) {
    return _then(_$_EventTicketsDto(
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketPools: null == ticketPools
          ? _value._ticketPools
          : ticketPools // ignore: cast_nullable_to_non_nullable
              as List<TicketPoolDto>,
      ticketSales: null == ticketSales
          ? _value.ticketSales
          : ticketSales // ignore: cast_nullable_to_non_nullable
              as TicketSalesDto,
      ticketQuantity: null == ticketQuantity
          ? _value.ticketQuantity
          : ticketQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isSoldOut: null == isSoldOut
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaleOnlyAtGate: null == isSaleOnlyAtGate
          ? _value.isSaleOnlyAtGate
          : isSaleOnlyAtGate // ignore: cast_nullable_to_non_nullable
              as bool,
      priceAtGate: freezed == priceAtGate
          ? _value.priceAtGate
          : priceAtGate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_EventTicketsDto extends _EventTicketsDto {
  const _$_EventTicketsDto(
      {@JsonKey(ignore: true) this.eventId,
      required final List<TicketPoolDto> ticketPools,
      required this.ticketSales,
      required this.ticketQuantity,
      this.isSoldOut = false,
      this.isSaleOnlyAtGate = false,
      this.priceAtGate})
      : _ticketPools = ticketPools,
        super._();

  factory _$_EventTicketsDto.fromJson(Map<String, dynamic> json) =>
      _$$_EventTicketsDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? eventId;
  final List<TicketPoolDto> _ticketPools;
  @override
  List<TicketPoolDto> get ticketPools {
    if (_ticketPools is EqualUnmodifiableListView) return _ticketPools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticketPools);
  }

  @override
  final TicketSalesDto ticketSales;
  @override
  final int ticketQuantity;
  @override
  @JsonKey()
  final bool isSoldOut;
  @override
  @JsonKey()
  final bool isSaleOnlyAtGate;
  @override
  final int? priceAtGate;

  @override
  String toString() {
    return 'EventTicketsDto(eventId: $eventId, ticketPools: $ticketPools, ticketSales: $ticketSales, ticketQuantity: $ticketQuantity, isSoldOut: $isSoldOut, isSaleOnlyAtGate: $isSaleOnlyAtGate, priceAtGate: $priceAtGate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventTicketsDto &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality()
                .equals(other._ticketPools, _ticketPools) &&
            (identical(other.ticketSales, ticketSales) ||
                other.ticketSales == ticketSales) &&
            (identical(other.ticketQuantity, ticketQuantity) ||
                other.ticketQuantity == ticketQuantity) &&
            (identical(other.isSoldOut, isSoldOut) ||
                other.isSoldOut == isSoldOut) &&
            (identical(other.isSaleOnlyAtGate, isSaleOnlyAtGate) ||
                other.isSaleOnlyAtGate == isSaleOnlyAtGate) &&
            (identical(other.priceAtGate, priceAtGate) ||
                other.priceAtGate == priceAtGate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventId,
      const DeepCollectionEquality().hash(_ticketPools),
      ticketSales,
      ticketQuantity,
      isSoldOut,
      isSaleOnlyAtGate,
      priceAtGate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventTicketsDtoCopyWith<_$_EventTicketsDto> get copyWith =>
      __$$_EventTicketsDtoCopyWithImpl<_$_EventTicketsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventTicketsDtoToJson(
      this,
    );
  }
}

abstract class _EventTicketsDto extends EventTicketsDto {
  const factory _EventTicketsDto(
      {@JsonKey(ignore: true) final String? eventId,
      required final List<TicketPoolDto> ticketPools,
      required final TicketSalesDto ticketSales,
      required final int ticketQuantity,
      final bool isSoldOut,
      final bool isSaleOnlyAtGate,
      final int? priceAtGate}) = _$_EventTicketsDto;
  const _EventTicketsDto._() : super._();

  factory _EventTicketsDto.fromJson(Map<String, dynamic> json) =
      _$_EventTicketsDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get eventId;
  @override
  List<TicketPoolDto> get ticketPools;
  @override
  TicketSalesDto get ticketSales;
  @override
  int get ticketQuantity;
  @override
  bool get isSoldOut;
  @override
  bool get isSaleOnlyAtGate;
  @override
  int? get priceAtGate;
  @override
  @JsonKey(ignore: true)
  _$$_EventTicketsDtoCopyWith<_$_EventTicketsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

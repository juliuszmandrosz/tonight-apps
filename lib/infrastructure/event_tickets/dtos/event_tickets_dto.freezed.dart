// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_tickets_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventTicketsDto _$EventTicketsDtoFromJson(Map<String, dynamic> json) {
  return _EventTicketsDto.fromJson(json);
}

/// @nodoc
class _$EventTicketsDtoTearOff {
  const _$EventTicketsDtoTearOff();

  _EventTicketsDto call(
      {@JsonKey(ignore: true) String? eventId,
      required List<TicketPoolDto> ticketPools,
      required TicketSalesDto ticketSales,
      required int ticketQuantity,
      bool isSoldOut = false}) {
    return _EventTicketsDto(
      eventId: eventId,
      ticketPools: ticketPools,
      ticketSales: ticketSales,
      ticketQuantity: ticketQuantity,
      isSoldOut: isSoldOut,
    );
  }

  EventTicketsDto fromJson(Map<String, Object?> json) {
    return EventTicketsDto.fromJson(json);
  }
}

/// @nodoc
const $EventTicketsDto = _$EventTicketsDtoTearOff();

/// @nodoc
mixin _$EventTicketsDto {
  @JsonKey(ignore: true)
  String? get eventId => throw _privateConstructorUsedError;
  List<TicketPoolDto> get ticketPools => throw _privateConstructorUsedError;
  TicketSalesDto get ticketSales => throw _privateConstructorUsedError;
  int get ticketQuantity => throw _privateConstructorUsedError;
  bool get isSoldOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventTicketsDtoCopyWith<EventTicketsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventTicketsDtoCopyWith<$Res> {
  factory $EventTicketsDtoCopyWith(
          EventTicketsDto value, $Res Function(EventTicketsDto) then) =
      _$EventTicketsDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? eventId,
      List<TicketPoolDto> ticketPools,
      TicketSalesDto ticketSales,
      int ticketQuantity,
      bool isSoldOut});

  $TicketSalesDtoCopyWith<$Res> get ticketSales;
}

/// @nodoc
class _$EventTicketsDtoCopyWithImpl<$Res>
    implements $EventTicketsDtoCopyWith<$Res> {
  _$EventTicketsDtoCopyWithImpl(this._value, this._then);

  final EventTicketsDto _value;
  // ignore: unused_field
  final $Res Function(EventTicketsDto) _then;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? ticketPools = freezed,
    Object? ticketSales = freezed,
    Object? ticketQuantity = freezed,
    Object? isSoldOut = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketPools: ticketPools == freezed
          ? _value.ticketPools
          : ticketPools // ignore: cast_nullable_to_non_nullable
              as List<TicketPoolDto>,
      ticketSales: ticketSales == freezed
          ? _value.ticketSales
          : ticketSales // ignore: cast_nullable_to_non_nullable
              as TicketSalesDto,
      ticketQuantity: ticketQuantity == freezed
          ? _value.ticketQuantity
          : ticketQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isSoldOut: isSoldOut == freezed
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $TicketSalesDtoCopyWith<$Res> get ticketSales {
    return $TicketSalesDtoCopyWith<$Res>(_value.ticketSales, (value) {
      return _then(_value.copyWith(ticketSales: value));
    });
  }
}

/// @nodoc
abstract class _$EventTicketsDtoCopyWith<$Res>
    implements $EventTicketsDtoCopyWith<$Res> {
  factory _$EventTicketsDtoCopyWith(
          _EventTicketsDto value, $Res Function(_EventTicketsDto) then) =
      __$EventTicketsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? eventId,
      List<TicketPoolDto> ticketPools,
      TicketSalesDto ticketSales,
      int ticketQuantity,
      bool isSoldOut});

  @override
  $TicketSalesDtoCopyWith<$Res> get ticketSales;
}

/// @nodoc
class __$EventTicketsDtoCopyWithImpl<$Res>
    extends _$EventTicketsDtoCopyWithImpl<$Res>
    implements _$EventTicketsDtoCopyWith<$Res> {
  __$EventTicketsDtoCopyWithImpl(
      _EventTicketsDto _value, $Res Function(_EventTicketsDto) _then)
      : super(_value, (v) => _then(v as _EventTicketsDto));

  @override
  _EventTicketsDto get _value => super._value as _EventTicketsDto;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? ticketPools = freezed,
    Object? ticketSales = freezed,
    Object? ticketQuantity = freezed,
    Object? isSoldOut = freezed,
  }) {
    return _then(_EventTicketsDto(
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketPools: ticketPools == freezed
          ? _value.ticketPools
          : ticketPools // ignore: cast_nullable_to_non_nullable
              as List<TicketPoolDto>,
      ticketSales: ticketSales == freezed
          ? _value.ticketSales
          : ticketSales // ignore: cast_nullable_to_non_nullable
              as TicketSalesDto,
      ticketQuantity: ticketQuantity == freezed
          ? _value.ticketQuantity
          : ticketQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isSoldOut: isSoldOut == freezed
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_EventTicketsDto extends _EventTicketsDto {
  const _$_EventTicketsDto(
      {@JsonKey(ignore: true) this.eventId,
      required this.ticketPools,
      required this.ticketSales,
      required this.ticketQuantity,
      this.isSoldOut = false})
      : super._();

  factory _$_EventTicketsDto.fromJson(Map<String, dynamic> json) =>
      _$$_EventTicketsDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? eventId;
  @override
  final List<TicketPoolDto> ticketPools;
  @override
  final TicketSalesDto ticketSales;
  @override
  final int ticketQuantity;
  @JsonKey()
  @override
  final bool isSoldOut;

  @override
  String toString() {
    return 'EventTicketsDto(eventId: $eventId, ticketPools: $ticketPools, ticketSales: $ticketSales, ticketQuantity: $ticketQuantity, isSoldOut: $isSoldOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventTicketsDto &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality()
                .equals(other.ticketPools, ticketPools) &&
            const DeepCollectionEquality()
                .equals(other.ticketSales, ticketSales) &&
            const DeepCollectionEquality()
                .equals(other.ticketQuantity, ticketQuantity) &&
            const DeepCollectionEquality().equals(other.isSoldOut, isSoldOut));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventId),
      const DeepCollectionEquality().hash(ticketPools),
      const DeepCollectionEquality().hash(ticketSales),
      const DeepCollectionEquality().hash(ticketQuantity),
      const DeepCollectionEquality().hash(isSoldOut));

  @JsonKey(ignore: true)
  @override
  _$EventTicketsDtoCopyWith<_EventTicketsDto> get copyWith =>
      __$EventTicketsDtoCopyWithImpl<_EventTicketsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventTicketsDtoToJson(this);
  }
}

abstract class _EventTicketsDto extends EventTicketsDto {
  const factory _EventTicketsDto(
      {@JsonKey(ignore: true) String? eventId,
      required List<TicketPoolDto> ticketPools,
      required TicketSalesDto ticketSales,
      required int ticketQuantity,
      bool isSoldOut}) = _$_EventTicketsDto;
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
  @JsonKey(ignore: true)
  _$EventTicketsDtoCopyWith<_EventTicketsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

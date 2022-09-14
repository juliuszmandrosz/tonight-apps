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
  bool get isSaleActive => throw _privateConstructorUsedError;

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
      bool isSoldOut,
      bool isSaleActive});

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
    Object? isSaleActive = freezed,
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
      isSaleActive: isSaleActive == freezed
          ? _value.isSaleActive
          : isSaleActive // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_EventTicketsDtoCopyWith<$Res>
    implements $EventTicketsDtoCopyWith<$Res> {
  factory _$$_EventTicketsDtoCopyWith(
          _$_EventTicketsDto value, $Res Function(_$_EventTicketsDto) then) =
      __$$_EventTicketsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? eventId,
      List<TicketPoolDto> ticketPools,
      TicketSalesDto ticketSales,
      int ticketQuantity,
      bool isSoldOut,
      bool isSaleActive});

  @override
  $TicketSalesDtoCopyWith<$Res> get ticketSales;
}

/// @nodoc
class __$$_EventTicketsDtoCopyWithImpl<$Res>
    extends _$EventTicketsDtoCopyWithImpl<$Res>
    implements _$$_EventTicketsDtoCopyWith<$Res> {
  __$$_EventTicketsDtoCopyWithImpl(
      _$_EventTicketsDto _value, $Res Function(_$_EventTicketsDto) _then)
      : super(_value, (v) => _then(v as _$_EventTicketsDto));

  @override
  _$_EventTicketsDto get _value => super._value as _$_EventTicketsDto;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? ticketPools = freezed,
    Object? ticketSales = freezed,
    Object? ticketQuantity = freezed,
    Object? isSoldOut = freezed,
    Object? isSaleActive = freezed,
  }) {
    return _then(_$_EventTicketsDto(
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketPools: ticketPools == freezed
          ? _value._ticketPools
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
      isSaleActive: isSaleActive == freezed
          ? _value.isSaleActive
          : isSaleActive // ignore: cast_nullable_to_non_nullable
              as bool,
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
      this.isSaleActive = true})
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
  final bool isSaleActive;

  @override
  String toString() {
    return 'EventTicketsDto(eventId: $eventId, ticketPools: $ticketPools, ticketSales: $ticketSales, ticketQuantity: $ticketQuantity, isSoldOut: $isSoldOut, isSaleActive: $isSaleActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventTicketsDto &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality()
                .equals(other._ticketPools, _ticketPools) &&
            const DeepCollectionEquality()
                .equals(other.ticketSales, ticketSales) &&
            const DeepCollectionEquality()
                .equals(other.ticketQuantity, ticketQuantity) &&
            const DeepCollectionEquality().equals(other.isSoldOut, isSoldOut) &&
            const DeepCollectionEquality()
                .equals(other.isSaleActive, isSaleActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventId),
      const DeepCollectionEquality().hash(_ticketPools),
      const DeepCollectionEquality().hash(ticketSales),
      const DeepCollectionEquality().hash(ticketQuantity),
      const DeepCollectionEquality().hash(isSoldOut),
      const DeepCollectionEquality().hash(isSaleActive));

  @JsonKey(ignore: true)
  @override
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
      final bool isSaleActive}) = _$_EventTicketsDto;
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
  bool get isSaleActive;
  @override
  @JsonKey(ignore: true)
  _$$_EventTicketsDtoCopyWith<_$_EventTicketsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

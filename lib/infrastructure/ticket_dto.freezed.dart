// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ticket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketDto _$TicketDtoFromJson(Map<String, dynamic> json) {
  return _TicketDto.fromJson(json);
}

/// @nodoc
class _$TicketDtoTearOff {
  const _$TicketDtoTearOff();

  _TicketDto call(
      {@JsonKey(ignore: true) String? id,
      required String clubName,
      required String eventName,
      required String eventId,
      @FirebaseTimestampJsonConverter() required DateTime eventDateTime,
      required int price,
      required String currency,
      required bool isVip,
      required String ticketPaymentId,
      bool isExpired = false}) {
    return _TicketDto(
      id: id,
      clubName: clubName,
      eventName: eventName,
      eventId: eventId,
      eventDateTime: eventDateTime,
      price: price,
      currency: currency,
      isVip: isVip,
      ticketPaymentId: ticketPaymentId,
      isExpired: isExpired,
    );
  }

  TicketDto fromJson(Map<String, Object?> json) {
    return TicketDto.fromJson(json);
  }
}

/// @nodoc
const $TicketDto = _$TicketDtoTearOff();

/// @nodoc
mixin _$TicketDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get clubName => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get eventDateTime => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  bool get isVip => throw _privateConstructorUsedError;
  String get ticketPaymentId => throw _privateConstructorUsedError;
  bool get isExpired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketDtoCopyWith<TicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDtoCopyWith<$Res> {
  factory $TicketDtoCopyWith(TicketDto value, $Res Function(TicketDto) then) =
      _$TicketDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String clubName,
      String eventName,
      String eventId,
      @FirebaseTimestampJsonConverter() DateTime eventDateTime,
      int price,
      String currency,
      bool isVip,
      String ticketPaymentId,
      bool isExpired});
}

/// @nodoc
class _$TicketDtoCopyWithImpl<$Res> implements $TicketDtoCopyWith<$Res> {
  _$TicketDtoCopyWithImpl(this._value, this._then);

  final TicketDto _value;
  // ignore: unused_field
  final $Res Function(TicketDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? clubName = freezed,
    Object? eventName = freezed,
    Object? eventId = freezed,
    Object? eventDateTime = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? isVip = freezed,
    Object? ticketPaymentId = freezed,
    Object? isExpired = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: eventName == freezed
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventDateTime: eventDateTime == freezed
          ? _value.eventDateTime
          : eventDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isVip: isVip == freezed
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
      ticketPaymentId: ticketPaymentId == freezed
          ? _value.ticketPaymentId
          : ticketPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      isExpired: isExpired == freezed
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TicketDtoCopyWith<$Res> implements $TicketDtoCopyWith<$Res> {
  factory _$TicketDtoCopyWith(
          _TicketDto value, $Res Function(_TicketDto) then) =
      __$TicketDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String clubName,
      String eventName,
      String eventId,
      @FirebaseTimestampJsonConverter() DateTime eventDateTime,
      int price,
      String currency,
      bool isVip,
      String ticketPaymentId,
      bool isExpired});
}

/// @nodoc
class __$TicketDtoCopyWithImpl<$Res> extends _$TicketDtoCopyWithImpl<$Res>
    implements _$TicketDtoCopyWith<$Res> {
  __$TicketDtoCopyWithImpl(_TicketDto _value, $Res Function(_TicketDto) _then)
      : super(_value, (v) => _then(v as _TicketDto));

  @override
  _TicketDto get _value => super._value as _TicketDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? clubName = freezed,
    Object? eventName = freezed,
    Object? eventId = freezed,
    Object? eventDateTime = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? isVip = freezed,
    Object? ticketPaymentId = freezed,
    Object? isExpired = freezed,
  }) {
    return _then(_TicketDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: eventName == freezed
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventDateTime: eventDateTime == freezed
          ? _value.eventDateTime
          : eventDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isVip: isVip == freezed
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
      ticketPaymentId: ticketPaymentId == freezed
          ? _value.ticketPaymentId
          : ticketPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      isExpired: isExpired == freezed
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_TicketDto extends _TicketDto {
  const _$_TicketDto(
      {@JsonKey(ignore: true) this.id,
      required this.clubName,
      required this.eventName,
      required this.eventId,
      @FirebaseTimestampJsonConverter() required this.eventDateTime,
      required this.price,
      required this.currency,
      required this.isVip,
      required this.ticketPaymentId,
      this.isExpired = false})
      : super._();

  factory _$_TicketDto.fromJson(Map<String, dynamic> json) =>
      _$$_TicketDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String clubName;
  @override
  final String eventName;
  @override
  final String eventId;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime eventDateTime;
  @override
  final int price;
  @override
  final String currency;
  @override
  final bool isVip;
  @override
  final String ticketPaymentId;
  @JsonKey()
  @override
  final bool isExpired;

  @override
  String toString() {
    return 'TicketDto(id: $id, clubName: $clubName, eventName: $eventName, eventId: $eventId, eventDateTime: $eventDateTime, price: $price, currency: $currency, isVip: $isVip, ticketPaymentId: $ticketPaymentId, isExpired: $isExpired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TicketDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.clubName, clubName) &&
            const DeepCollectionEquality().equals(other.eventName, eventName) &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality()
                .equals(other.eventDateTime, eventDateTime) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.isVip, isVip) &&
            const DeepCollectionEquality()
                .equals(other.ticketPaymentId, ticketPaymentId) &&
            const DeepCollectionEquality().equals(other.isExpired, isExpired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(clubName),
      const DeepCollectionEquality().hash(eventName),
      const DeepCollectionEquality().hash(eventId),
      const DeepCollectionEquality().hash(eventDateTime),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(isVip),
      const DeepCollectionEquality().hash(ticketPaymentId),
      const DeepCollectionEquality().hash(isExpired));

  @JsonKey(ignore: true)
  @override
  _$TicketDtoCopyWith<_TicketDto> get copyWith =>
      __$TicketDtoCopyWithImpl<_TicketDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketDtoToJson(this);
  }
}

abstract class _TicketDto extends TicketDto {
  const factory _TicketDto(
      {@JsonKey(ignore: true) String? id,
      required String clubName,
      required String eventName,
      required String eventId,
      @FirebaseTimestampJsonConverter() required DateTime eventDateTime,
      required int price,
      required String currency,
      required bool isVip,
      required String ticketPaymentId,
      bool isExpired}) = _$_TicketDto;
  const _TicketDto._() : super._();

  factory _TicketDto.fromJson(Map<String, dynamic> json) =
      _$_TicketDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get clubName;
  @override
  String get eventName;
  @override
  String get eventId;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get eventDateTime;
  @override
  int get price;
  @override
  String get currency;
  @override
  bool get isVip;
  @override
  String get ticketPaymentId;
  @override
  bool get isExpired;
  @override
  @JsonKey(ignore: true)
  _$TicketDtoCopyWith<_TicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

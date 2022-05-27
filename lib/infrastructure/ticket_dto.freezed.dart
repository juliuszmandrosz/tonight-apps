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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketDto _$TicketDtoFromJson(Map<String, dynamic> json) {
  return _TicketDto.fromJson(json);
}

/// @nodoc
mixin _$TicketDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get clubId => throw _privateConstructorUsedError;
  String get clubName => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get eventStartDateTime => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get eventEndDateTime => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  bool get isVip => throw _privateConstructorUsedError;
  String get ticketPaymentId => throw _privateConstructorUsedError;
  int get poolNumber => throw _privateConstructorUsedError;
  String? get vipPaymentId => throw _privateConstructorUsedError;
  bool get isExpired => throw _privateConstructorUsedError;
  bool get isEventCanceled => throw _privateConstructorUsedError;
  bool get isReturnable => throw _privateConstructorUsedError;
  bool get isReturned => throw _privateConstructorUsedError;
  String get reviewId => throw _privateConstructorUsedError;

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
      String eventId,
      String clubId,
      String clubName,
      String eventName,
      @FirebaseTimestampJsonConverter() DateTime eventStartDateTime,
      @FirebaseTimestampJsonConverter() DateTime eventEndDateTime,
      int price,
      String currency,
      bool isVip,
      String ticketPaymentId,
      int poolNumber,
      String? vipPaymentId,
      bool isExpired,
      bool isEventCanceled,
      bool isReturnable,
      bool isReturned,
      String reviewId});
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
    Object? eventId = freezed,
    Object? clubId = freezed,
    Object? clubName = freezed,
    Object? eventName = freezed,
    Object? eventStartDateTime = freezed,
    Object? eventEndDateTime = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? isVip = freezed,
    Object? ticketPaymentId = freezed,
    Object? poolNumber = freezed,
    Object? vipPaymentId = freezed,
    Object? isExpired = freezed,
    Object? isEventCanceled = freezed,
    Object? isReturnable = freezed,
    Object? isReturned = freezed,
    Object? reviewId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      clubId: clubId == freezed
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: eventName == freezed
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventStartDateTime: eventStartDateTime == freezed
          ? _value.eventStartDateTime
          : eventStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventEndDateTime: eventEndDateTime == freezed
          ? _value.eventEndDateTime
          : eventEndDateTime // ignore: cast_nullable_to_non_nullable
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
      poolNumber: poolNumber == freezed
          ? _value.poolNumber
          : poolNumber // ignore: cast_nullable_to_non_nullable
              as int,
      vipPaymentId: vipPaymentId == freezed
          ? _value.vipPaymentId
          : vipPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpired: isExpired == freezed
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isEventCanceled: isEventCanceled == freezed
          ? _value.isEventCanceled
          : isEventCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      isReturnable: isReturnable == freezed
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as bool,
      isReturned: isReturned == freezed
          ? _value.isReturned
          : isReturned // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewId: reviewId == freezed
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TicketDtoCopyWith<$Res> implements $TicketDtoCopyWith<$Res> {
  factory _$$_TicketDtoCopyWith(
          _$_TicketDto value, $Res Function(_$_TicketDto) then) =
      __$$_TicketDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String eventId,
      String clubId,
      String clubName,
      String eventName,
      @FirebaseTimestampJsonConverter() DateTime eventStartDateTime,
      @FirebaseTimestampJsonConverter() DateTime eventEndDateTime,
      int price,
      String currency,
      bool isVip,
      String ticketPaymentId,
      int poolNumber,
      String? vipPaymentId,
      bool isExpired,
      bool isEventCanceled,
      bool isReturnable,
      bool isReturned,
      String reviewId});
}

/// @nodoc
class __$$_TicketDtoCopyWithImpl<$Res> extends _$TicketDtoCopyWithImpl<$Res>
    implements _$$_TicketDtoCopyWith<$Res> {
  __$$_TicketDtoCopyWithImpl(
      _$_TicketDto _value, $Res Function(_$_TicketDto) _then)
      : super(_value, (v) => _then(v as _$_TicketDto));

  @override
  _$_TicketDto get _value => super._value as _$_TicketDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
    Object? clubId = freezed,
    Object? clubName = freezed,
    Object? eventName = freezed,
    Object? eventStartDateTime = freezed,
    Object? eventEndDateTime = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? isVip = freezed,
    Object? ticketPaymentId = freezed,
    Object? poolNumber = freezed,
    Object? vipPaymentId = freezed,
    Object? isExpired = freezed,
    Object? isEventCanceled = freezed,
    Object? isReturnable = freezed,
    Object? isReturned = freezed,
    Object? reviewId = freezed,
  }) {
    return _then(_$_TicketDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      clubId: clubId == freezed
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: eventName == freezed
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventStartDateTime: eventStartDateTime == freezed
          ? _value.eventStartDateTime
          : eventStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventEndDateTime: eventEndDateTime == freezed
          ? _value.eventEndDateTime
          : eventEndDateTime // ignore: cast_nullable_to_non_nullable
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
      poolNumber: poolNumber == freezed
          ? _value.poolNumber
          : poolNumber // ignore: cast_nullable_to_non_nullable
              as int,
      vipPaymentId: vipPaymentId == freezed
          ? _value.vipPaymentId
          : vipPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpired: isExpired == freezed
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isEventCanceled: isEventCanceled == freezed
          ? _value.isEventCanceled
          : isEventCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      isReturnable: isReturnable == freezed
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as bool,
      isReturned: isReturned == freezed
          ? _value.isReturned
          : isReturned // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewId: reviewId == freezed
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_TicketDto extends _TicketDto {
  const _$_TicketDto(
      {@JsonKey(ignore: true) this.id,
      required this.eventId,
      required this.clubId,
      required this.clubName,
      required this.eventName,
      @FirebaseTimestampJsonConverter() required this.eventStartDateTime,
      @FirebaseTimestampJsonConverter() required this.eventEndDateTime,
      required this.price,
      required this.currency,
      required this.isVip,
      required this.ticketPaymentId,
      required this.poolNumber,
      this.vipPaymentId,
      this.isExpired = false,
      this.isEventCanceled = false,
      this.isReturnable = false,
      this.isReturned = false,
      this.reviewId = ''})
      : super._();

  factory _$_TicketDto.fromJson(Map<String, dynamic> json) =>
      _$$_TicketDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String eventId;
  @override
  final String clubId;
  @override
  final String clubName;
  @override
  final String eventName;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime eventStartDateTime;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime eventEndDateTime;
  @override
  final int price;
  @override
  final String currency;
  @override
  final bool isVip;
  @override
  final String ticketPaymentId;
  @override
  final int poolNumber;
  @override
  final String? vipPaymentId;
  @override
  @JsonKey()
  final bool isExpired;
  @override
  @JsonKey()
  final bool isEventCanceled;
  @override
  @JsonKey()
  final bool isReturnable;
  @override
  @JsonKey()
  final bool isReturned;
  @override
  @JsonKey()
  final String reviewId;

  @override
  String toString() {
    return 'TicketDto(id: $id, eventId: $eventId, clubId: $clubId, clubName: $clubName, eventName: $eventName, eventStartDateTime: $eventStartDateTime, eventEndDateTime: $eventEndDateTime, price: $price, currency: $currency, isVip: $isVip, ticketPaymentId: $ticketPaymentId, poolNumber: $poolNumber, vipPaymentId: $vipPaymentId, isExpired: $isExpired, isEventCanceled: $isEventCanceled, isReturnable: $isReturnable, isReturned: $isReturned, reviewId: $reviewId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality().equals(other.clubId, clubId) &&
            const DeepCollectionEquality().equals(other.clubName, clubName) &&
            const DeepCollectionEquality().equals(other.eventName, eventName) &&
            const DeepCollectionEquality()
                .equals(other.eventStartDateTime, eventStartDateTime) &&
            const DeepCollectionEquality()
                .equals(other.eventEndDateTime, eventEndDateTime) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.isVip, isVip) &&
            const DeepCollectionEquality()
                .equals(other.ticketPaymentId, ticketPaymentId) &&
            const DeepCollectionEquality()
                .equals(other.poolNumber, poolNumber) &&
            const DeepCollectionEquality()
                .equals(other.vipPaymentId, vipPaymentId) &&
            const DeepCollectionEquality().equals(other.isExpired, isExpired) &&
            const DeepCollectionEquality()
                .equals(other.isEventCanceled, isEventCanceled) &&
            const DeepCollectionEquality()
                .equals(other.isReturnable, isReturnable) &&
            const DeepCollectionEquality()
                .equals(other.isReturned, isReturned) &&
            const DeepCollectionEquality().equals(other.reviewId, reviewId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(eventId),
      const DeepCollectionEquality().hash(clubId),
      const DeepCollectionEquality().hash(clubName),
      const DeepCollectionEquality().hash(eventName),
      const DeepCollectionEquality().hash(eventStartDateTime),
      const DeepCollectionEquality().hash(eventEndDateTime),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(isVip),
      const DeepCollectionEquality().hash(ticketPaymentId),
      const DeepCollectionEquality().hash(poolNumber),
      const DeepCollectionEquality().hash(vipPaymentId),
      const DeepCollectionEquality().hash(isExpired),
      const DeepCollectionEquality().hash(isEventCanceled),
      const DeepCollectionEquality().hash(isReturnable),
      const DeepCollectionEquality().hash(isReturned),
      const DeepCollectionEquality().hash(reviewId));

  @JsonKey(ignore: true)
  @override
  _$$_TicketDtoCopyWith<_$_TicketDto> get copyWith =>
      __$$_TicketDtoCopyWithImpl<_$_TicketDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketDtoToJson(this);
  }
}

abstract class _TicketDto extends TicketDto {
  const factory _TicketDto(
      {@JsonKey(ignore: true)
          final String? id,
      required final String eventId,
      required final String clubId,
      required final String clubName,
      required final String eventName,
      @FirebaseTimestampJsonConverter()
          required final DateTime eventStartDateTime,
      @FirebaseTimestampJsonConverter()
          required final DateTime eventEndDateTime,
      required final int price,
      required final String currency,
      required final bool isVip,
      required final String ticketPaymentId,
      required final int poolNumber,
      final String? vipPaymentId,
      final bool isExpired,
      final bool isEventCanceled,
      final bool isReturnable,
      final bool isReturned,
      final String reviewId}) = _$_TicketDto;
  const _TicketDto._() : super._();

  factory _TicketDto.fromJson(Map<String, dynamic> json) =
      _$_TicketDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get eventId => throw _privateConstructorUsedError;
  @override
  String get clubId => throw _privateConstructorUsedError;
  @override
  String get clubName => throw _privateConstructorUsedError;
  @override
  String get eventName => throw _privateConstructorUsedError;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get eventStartDateTime => throw _privateConstructorUsedError;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get eventEndDateTime => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  bool get isVip => throw _privateConstructorUsedError;
  @override
  String get ticketPaymentId => throw _privateConstructorUsedError;
  @override
  int get poolNumber => throw _privateConstructorUsedError;
  @override
  String? get vipPaymentId => throw _privateConstructorUsedError;
  @override
  bool get isExpired => throw _privateConstructorUsedError;
  @override
  bool get isEventCanceled => throw _privateConstructorUsedError;
  @override
  bool get isReturnable => throw _privateConstructorUsedError;
  @override
  bool get isReturned => throw _privateConstructorUsedError;
  @override
  String get reviewId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TicketDtoCopyWith<_$_TicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

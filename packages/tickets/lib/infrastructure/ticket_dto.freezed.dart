// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  String get ticketPaymentId => throw _privateConstructorUsedError;
  bool get isExpired => throw _privateConstructorUsedError;
  bool get isEventCanceled => throw _privateConstructorUsedError;
  bool get isReturnable => throw _privateConstructorUsedError;
  bool get isReturned => throw _privateConstructorUsedError;
  String get reviewId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  bool get isActivated => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get usedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketDtoCopyWith<TicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDtoCopyWith<$Res> {
  factory $TicketDtoCopyWith(TicketDto value, $Res Function(TicketDto) then) =
      _$TicketDtoCopyWithImpl<$Res, TicketDto>;
  @useResult
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
      String ticketPaymentId,
      bool isExpired,
      bool isEventCanceled,
      bool isReturnable,
      bool isReturned,
      String reviewId,
      int quantity,
      bool isActivated,
      @FirebaseTimestampJsonConverter() DateTime createdAt,
      @FirebaseNullableTimestampJsonConverter() DateTime? usedAt});
}

/// @nodoc
class _$TicketDtoCopyWithImpl<$Res, $Val extends TicketDto>
    implements $TicketDtoCopyWith<$Res> {
  _$TicketDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = null,
    Object? clubId = null,
    Object? clubName = null,
    Object? eventName = null,
    Object? eventStartDateTime = null,
    Object? eventEndDateTime = null,
    Object? price = null,
    Object? currency = null,
    Object? ticketPaymentId = null,
    Object? isExpired = null,
    Object? isEventCanceled = null,
    Object? isReturnable = null,
    Object? isReturned = null,
    Object? reviewId = null,
    Object? quantity = null,
    Object? isActivated = null,
    Object? createdAt = null,
    Object? usedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: null == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventStartDateTime: null == eventStartDateTime
          ? _value.eventStartDateTime
          : eventStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventEndDateTime: null == eventEndDateTime
          ? _value.eventEndDateTime
          : eventEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      ticketPaymentId: null == ticketPaymentId
          ? _value.ticketPaymentId
          : ticketPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isEventCanceled: null == isEventCanceled
          ? _value.isEventCanceled
          : isEventCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      isReturnable: null == isReturnable
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as bool,
      isReturned: null == isReturned
          ? _value.isReturned
          : isReturned // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketDtoCopyWith<$Res> implements $TicketDtoCopyWith<$Res> {
  factory _$$_TicketDtoCopyWith(
          _$_TicketDto value, $Res Function(_$_TicketDto) then) =
      __$$_TicketDtoCopyWithImpl<$Res>;
  @override
  @useResult
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
      String ticketPaymentId,
      bool isExpired,
      bool isEventCanceled,
      bool isReturnable,
      bool isReturned,
      String reviewId,
      int quantity,
      bool isActivated,
      @FirebaseTimestampJsonConverter() DateTime createdAt,
      @FirebaseNullableTimestampJsonConverter() DateTime? usedAt});
}

/// @nodoc
class __$$_TicketDtoCopyWithImpl<$Res>
    extends _$TicketDtoCopyWithImpl<$Res, _$_TicketDto>
    implements _$$_TicketDtoCopyWith<$Res> {
  __$$_TicketDtoCopyWithImpl(
      _$_TicketDto _value, $Res Function(_$_TicketDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = null,
    Object? clubId = null,
    Object? clubName = null,
    Object? eventName = null,
    Object? eventStartDateTime = null,
    Object? eventEndDateTime = null,
    Object? price = null,
    Object? currency = null,
    Object? ticketPaymentId = null,
    Object? isExpired = null,
    Object? isEventCanceled = null,
    Object? isReturnable = null,
    Object? isReturned = null,
    Object? reviewId = null,
    Object? quantity = null,
    Object? isActivated = null,
    Object? createdAt = null,
    Object? usedAt = freezed,
  }) {
    return _then(_$_TicketDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: null == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventStartDateTime: null == eventStartDateTime
          ? _value.eventStartDateTime
          : eventStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventEndDateTime: null == eventEndDateTime
          ? _value.eventEndDateTime
          : eventEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      ticketPaymentId: null == ticketPaymentId
          ? _value.ticketPaymentId
          : ticketPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isEventCanceled: null == isEventCanceled
          ? _value.isEventCanceled
          : isEventCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      isReturnable: null == isReturnable
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as bool,
      isReturned: null == isReturned
          ? _value.isReturned
          : isReturned // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usedAt: freezed == usedAt
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      required this.ticketPaymentId,
      this.isExpired = false,
      this.isEventCanceled = false,
      this.isReturnable = false,
      this.isReturned = false,
      this.reviewId = '',
      this.quantity = 1,
      this.isActivated = false,
      @FirebaseTimestampJsonConverter() required this.createdAt,
      @FirebaseNullableTimestampJsonConverter() this.usedAt})
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
  final String ticketPaymentId;
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
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final bool isActivated;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime createdAt;
  @override
  @FirebaseNullableTimestampJsonConverter()
  final DateTime? usedAt;

  @override
  String toString() {
    return 'TicketDto(id: $id, eventId: $eventId, clubId: $clubId, clubName: $clubName, eventName: $eventName, eventStartDateTime: $eventStartDateTime, eventEndDateTime: $eventEndDateTime, price: $price, currency: $currency, ticketPaymentId: $ticketPaymentId, isExpired: $isExpired, isEventCanceled: $isEventCanceled, isReturnable: $isReturnable, isReturned: $isReturned, reviewId: $reviewId, quantity: $quantity, isActivated: $isActivated, createdAt: $createdAt, usedAt: $usedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.clubName, clubName) ||
                other.clubName == clubName) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventStartDateTime, eventStartDateTime) ||
                other.eventStartDateTime == eventStartDateTime) &&
            (identical(other.eventEndDateTime, eventEndDateTime) ||
                other.eventEndDateTime == eventEndDateTime) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.ticketPaymentId, ticketPaymentId) ||
                other.ticketPaymentId == ticketPaymentId) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired) &&
            (identical(other.isEventCanceled, isEventCanceled) ||
                other.isEventCanceled == isEventCanceled) &&
            (identical(other.isReturnable, isReturnable) ||
                other.isReturnable == isReturnable) &&
            (identical(other.isReturned, isReturned) ||
                other.isReturned == isReturned) &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.usedAt, usedAt) || other.usedAt == usedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        eventId,
        clubId,
        clubName,
        eventName,
        eventStartDateTime,
        eventEndDateTime,
        price,
        currency,
        ticketPaymentId,
        isExpired,
        isEventCanceled,
        isReturnable,
        isReturned,
        reviewId,
        quantity,
        isActivated,
        createdAt,
        usedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketDtoCopyWith<_$_TicketDto> get copyWith =>
      __$$_TicketDtoCopyWithImpl<_$_TicketDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketDtoToJson(
      this,
    );
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
      required final String ticketPaymentId,
      final bool isExpired,
      final bool isEventCanceled,
      final bool isReturnable,
      final bool isReturned,
      final String reviewId,
      final int quantity,
      final bool isActivated,
      @FirebaseTimestampJsonConverter()
          required final DateTime createdAt,
      @FirebaseNullableTimestampJsonConverter()
          final DateTime? usedAt}) = _$_TicketDto;
  const _TicketDto._() : super._();

  factory _TicketDto.fromJson(Map<String, dynamic> json) =
      _$_TicketDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get eventId;
  @override
  String get clubId;
  @override
  String get clubName;
  @override
  String get eventName;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get eventStartDateTime;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get eventEndDateTime;
  @override
  int get price;
  @override
  String get currency;
  @override
  String get ticketPaymentId;
  @override
  bool get isExpired;
  @override
  bool get isEventCanceled;
  @override
  bool get isReturnable;
  @override
  bool get isReturned;
  @override
  String get reviewId;
  @override
  int get quantity;
  @override
  bool get isActivated;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt;
  @override
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get usedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TicketDtoCopyWith<_$_TicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

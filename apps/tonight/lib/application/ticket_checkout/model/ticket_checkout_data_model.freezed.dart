// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_checkout_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketCheckoutData {
  String get eventId => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  TicketPool get currentTicketPool => throw _privateConstructorUsedError;
  double get serviceFee => throw _privateConstructorUsedError;
  double get minimumServiceFeeAmount => throw _privateConstructorUsedError;
  CustomerData get customerData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketCheckoutDataCopyWith<TicketCheckoutData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCheckoutDataCopyWith<$Res> {
  factory $TicketCheckoutDataCopyWith(
          TicketCheckoutData value, $Res Function(TicketCheckoutData) then) =
      _$TicketCheckoutDataCopyWithImpl<$Res, TicketCheckoutData>;
  @useResult
  $Res call(
      {String eventId,
      String currency,
      TicketPool currentTicketPool,
      double serviceFee,
      double minimumServiceFeeAmount,
      CustomerData customerData});
}

/// @nodoc
class _$TicketCheckoutDataCopyWithImpl<$Res, $Val extends TicketCheckoutData>
    implements $TicketCheckoutDataCopyWith<$Res> {
  _$TicketCheckoutDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? currency = null,
    Object? currentTicketPool = null,
    Object? serviceFee = null,
    Object? minimumServiceFeeAmount = null,
    Object? customerData = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      currentTicketPool: null == currentTicketPool
          ? _value.currentTicketPool
          : currentTicketPool // ignore: cast_nullable_to_non_nullable
              as TicketPool,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as double,
      minimumServiceFeeAmount: null == minimumServiceFeeAmount
          ? _value.minimumServiceFeeAmount
          : minimumServiceFeeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      customerData: null == customerData
          ? _value.customerData
          : customerData // ignore: cast_nullable_to_non_nullable
              as CustomerData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketCheckoutDataImplCopyWith<$Res>
    implements $TicketCheckoutDataCopyWith<$Res> {
  factory _$$TicketCheckoutDataImplCopyWith(_$TicketCheckoutDataImpl value,
          $Res Function(_$TicketCheckoutDataImpl) then) =
      __$$TicketCheckoutDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventId,
      String currency,
      TicketPool currentTicketPool,
      double serviceFee,
      double minimumServiceFeeAmount,
      CustomerData customerData});
}

/// @nodoc
class __$$TicketCheckoutDataImplCopyWithImpl<$Res>
    extends _$TicketCheckoutDataCopyWithImpl<$Res, _$TicketCheckoutDataImpl>
    implements _$$TicketCheckoutDataImplCopyWith<$Res> {
  __$$TicketCheckoutDataImplCopyWithImpl(_$TicketCheckoutDataImpl _value,
      $Res Function(_$TicketCheckoutDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? currency = null,
    Object? currentTicketPool = null,
    Object? serviceFee = null,
    Object? minimumServiceFeeAmount = null,
    Object? customerData = null,
  }) {
    return _then(_$TicketCheckoutDataImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      currentTicketPool: null == currentTicketPool
          ? _value.currentTicketPool
          : currentTicketPool // ignore: cast_nullable_to_non_nullable
              as TicketPool,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as double,
      minimumServiceFeeAmount: null == minimumServiceFeeAmount
          ? _value.minimumServiceFeeAmount
          : minimumServiceFeeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      customerData: null == customerData
          ? _value.customerData
          : customerData // ignore: cast_nullable_to_non_nullable
              as CustomerData,
    ));
  }
}

/// @nodoc

class _$TicketCheckoutDataImpl implements _TicketCheckoutData {
  const _$TicketCheckoutDataImpl(
      {required this.eventId,
      required this.currency,
      required this.currentTicketPool,
      required this.serviceFee,
      required this.minimumServiceFeeAmount,
      required this.customerData});

  @override
  final String eventId;
  @override
  final String currency;
  @override
  final TicketPool currentTicketPool;
  @override
  final double serviceFee;
  @override
  final double minimumServiceFeeAmount;
  @override
  final CustomerData customerData;

  @override
  String toString() {
    return 'TicketCheckoutData(eventId: $eventId, currency: $currency, currentTicketPool: $currentTicketPool, serviceFee: $serviceFee, minimumServiceFeeAmount: $minimumServiceFeeAmount, customerData: $customerData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketCheckoutDataImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.currentTicketPool, currentTicketPool) ||
                other.currentTicketPool == currentTicketPool) &&
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee) &&
            (identical(
                    other.minimumServiceFeeAmount, minimumServiceFeeAmount) ||
                other.minimumServiceFeeAmount == minimumServiceFeeAmount) &&
            (identical(other.customerData, customerData) ||
                other.customerData == customerData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, currency,
      currentTicketPool, serviceFee, minimumServiceFeeAmount, customerData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketCheckoutDataImplCopyWith<_$TicketCheckoutDataImpl> get copyWith =>
      __$$TicketCheckoutDataImplCopyWithImpl<_$TicketCheckoutDataImpl>(
          this, _$identity);
}

abstract class _TicketCheckoutData implements TicketCheckoutData {
  const factory _TicketCheckoutData(
      {required final String eventId,
      required final String currency,
      required final TicketPool currentTicketPool,
      required final double serviceFee,
      required final double minimumServiceFeeAmount,
      required final CustomerData customerData}) = _$TicketCheckoutDataImpl;

  @override
  String get eventId;
  @override
  String get currency;
  @override
  TicketPool get currentTicketPool;
  @override
  double get serviceFee;
  @override
  double get minimumServiceFeeAmount;
  @override
  CustomerData get customerData;
  @override
  @JsonKey(ignore: true)
  _$$TicketCheckoutDataImplCopyWith<_$TicketCheckoutDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

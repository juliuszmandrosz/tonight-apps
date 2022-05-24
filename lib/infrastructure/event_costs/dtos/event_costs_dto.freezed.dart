// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_costs_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventCostsDto _$EventCostsDtoFromJson(Map<String, dynamic> json) {
  return _EventCostsDto.fromJson(json);
}

/// @nodoc
mixin _$EventCostsDto {
  @JsonKey(ignore: true)
  String? get eventId => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get paymentProcessorFeeBalance => throw _privateConstructorUsedError;
  double get eventPostponeBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCostsDtoCopyWith<EventCostsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCostsDtoCopyWith<$Res> {
  factory $EventCostsDtoCopyWith(
          EventCostsDto value, $Res Function(EventCostsDto) then) =
      _$EventCostsDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? eventId,
      String currency,
      double paymentProcessorFeeBalance,
      double eventPostponeBalance});
}

/// @nodoc
class _$EventCostsDtoCopyWithImpl<$Res>
    implements $EventCostsDtoCopyWith<$Res> {
  _$EventCostsDtoCopyWithImpl(this._value, this._then);

  final EventCostsDto _value;
  // ignore: unused_field
  final $Res Function(EventCostsDto) _then;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? currency = freezed,
    Object? paymentProcessorFeeBalance = freezed,
    Object? eventPostponeBalance = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      paymentProcessorFeeBalance: paymentProcessorFeeBalance == freezed
          ? _value.paymentProcessorFeeBalance
          : paymentProcessorFeeBalance // ignore: cast_nullable_to_non_nullable
              as double,
      eventPostponeBalance: eventPostponeBalance == freezed
          ? _value.eventPostponeBalance
          : eventPostponeBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_EventCostsDtoCopyWith<$Res>
    implements $EventCostsDtoCopyWith<$Res> {
  factory _$$_EventCostsDtoCopyWith(
          _$_EventCostsDto value, $Res Function(_$_EventCostsDto) then) =
      __$$_EventCostsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? eventId,
      String currency,
      double paymentProcessorFeeBalance,
      double eventPostponeBalance});
}

/// @nodoc
class __$$_EventCostsDtoCopyWithImpl<$Res>
    extends _$EventCostsDtoCopyWithImpl<$Res>
    implements _$$_EventCostsDtoCopyWith<$Res> {
  __$$_EventCostsDtoCopyWithImpl(
      _$_EventCostsDto _value, $Res Function(_$_EventCostsDto) _then)
      : super(_value, (v) => _then(v as _$_EventCostsDto));

  @override
  _$_EventCostsDto get _value => super._value as _$_EventCostsDto;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? currency = freezed,
    Object? paymentProcessorFeeBalance = freezed,
    Object? eventPostponeBalance = freezed,
  }) {
    return _then(_$_EventCostsDto(
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      paymentProcessorFeeBalance: paymentProcessorFeeBalance == freezed
          ? _value.paymentProcessorFeeBalance
          : paymentProcessorFeeBalance // ignore: cast_nullable_to_non_nullable
              as double,
      eventPostponeBalance: eventPostponeBalance == freezed
          ? _value.eventPostponeBalance
          : eventPostponeBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_EventCostsDto extends _EventCostsDto {
  const _$_EventCostsDto(
      {@JsonKey(ignore: true) this.eventId,
      required this.currency,
      this.paymentProcessorFeeBalance = 0,
      this.eventPostponeBalance = 0})
      : super._();

  factory _$_EventCostsDto.fromJson(Map<String, dynamic> json) =>
      _$$_EventCostsDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? eventId;
  @override
  final String currency;
  @override
  @JsonKey()
  final double paymentProcessorFeeBalance;
  @override
  @JsonKey()
  final double eventPostponeBalance;

  @override
  String toString() {
    return 'EventCostsDto(eventId: $eventId, currency: $currency, paymentProcessorFeeBalance: $paymentProcessorFeeBalance, eventPostponeBalance: $eventPostponeBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventCostsDto &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(
                other.paymentProcessorFeeBalance, paymentProcessorFeeBalance) &&
            const DeepCollectionEquality()
                .equals(other.eventPostponeBalance, eventPostponeBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventId),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(paymentProcessorFeeBalance),
      const DeepCollectionEquality().hash(eventPostponeBalance));

  @JsonKey(ignore: true)
  @override
  _$$_EventCostsDtoCopyWith<_$_EventCostsDto> get copyWith =>
      __$$_EventCostsDtoCopyWithImpl<_$_EventCostsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventCostsDtoToJson(this);
  }
}

abstract class _EventCostsDto extends EventCostsDto {
  const factory _EventCostsDto(
      {@JsonKey(ignore: true) final String? eventId,
      required final String currency,
      final double paymentProcessorFeeBalance,
      final double eventPostponeBalance}) = _$_EventCostsDto;
  const _EventCostsDto._() : super._();

  factory _EventCostsDto.fromJson(Map<String, dynamic> json) =
      _$_EventCostsDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get eventId => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  double get paymentProcessorFeeBalance => throw _privateConstructorUsedError;
  @override
  double get eventPostponeBalance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EventCostsDtoCopyWith<_$_EventCostsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

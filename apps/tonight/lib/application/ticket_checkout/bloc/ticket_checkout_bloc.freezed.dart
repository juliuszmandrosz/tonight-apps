// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketCheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) stateInitialized,
    required TResult Function() proceededToPayment,
    required TResult Function() promotionCodeFetched,
    required TResult Function(String code) promotionCodeChanged,
    required TResult Function(int quantity) ticketQuantityChanged,
    required TResult Function() promotionCodeResetted,
    required TResult Function(CustomerData data) customerDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? stateInitialized,
    TResult? Function()? proceededToPayment,
    TResult? Function()? promotionCodeFetched,
    TResult? Function(String code)? promotionCodeChanged,
    TResult? Function(int quantity)? ticketQuantityChanged,
    TResult? Function()? promotionCodeResetted,
    TResult? Function(CustomerData data)? customerDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? stateInitialized,
    TResult Function()? proceededToPayment,
    TResult Function()? promotionCodeFetched,
    TResult Function(String code)? promotionCodeChanged,
    TResult Function(int quantity)? ticketQuantityChanged,
    TResult Function()? promotionCodeResetted,
    TResult Function(CustomerData data)? customerDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_ProceededToPayment value) proceededToPayment,
    required TResult Function(_PromotionCodeFetched value) promotionCodeFetched,
    required TResult Function(_PromotionCodeChanged value) promotionCodeChanged,
    required TResult Function(_TicketQuantityChanged value)
        ticketQuantityChanged,
    required TResult Function(_PromotionCodeResetted value)
        promotionCodeResetted,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_ProceededToPayment value)? proceededToPayment,
    TResult? Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult? Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult? Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult? Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_ProceededToPayment value)? proceededToPayment,
    TResult Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCheckoutEventCopyWith<$Res> {
  factory $TicketCheckoutEventCopyWith(
          TicketCheckoutEvent value, $Res Function(TicketCheckoutEvent) then) =
      _$TicketCheckoutEventCopyWithImpl<$Res, TicketCheckoutEvent>;
}

/// @nodoc
class _$TicketCheckoutEventCopyWithImpl<$Res, $Val extends TicketCheckoutEvent>
    implements $TicketCheckoutEventCopyWith<$Res> {
  _$TicketCheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StateInitializedImplCopyWith<$Res> {
  factory _$$StateInitializedImplCopyWith(_$StateInitializedImpl value,
          $Res Function(_$StateInitializedImpl) then) =
      __$$StateInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});
}

/// @nodoc
class __$$StateInitializedImplCopyWithImpl<$Res>
    extends _$TicketCheckoutEventCopyWithImpl<$Res, _$StateInitializedImpl>
    implements _$$StateInitializedImplCopyWith<$Res> {
  __$$StateInitializedImplCopyWithImpl(_$StateInitializedImpl _value,
      $Res Function(_$StateInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$StateInitializedImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc

class _$StateInitializedImpl implements _StateInitialized {
  const _$StateInitializedImpl(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'TicketCheckoutEvent.stateInitialized(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateInitializedImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateInitializedImplCopyWith<_$StateInitializedImpl> get copyWith =>
      __$$StateInitializedImplCopyWithImpl<_$StateInitializedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) stateInitialized,
    required TResult Function() proceededToPayment,
    required TResult Function() promotionCodeFetched,
    required TResult Function(String code) promotionCodeChanged,
    required TResult Function(int quantity) ticketQuantityChanged,
    required TResult Function() promotionCodeResetted,
    required TResult Function(CustomerData data) customerDataChanged,
  }) {
    return stateInitialized(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? stateInitialized,
    TResult? Function()? proceededToPayment,
    TResult? Function()? promotionCodeFetched,
    TResult? Function(String code)? promotionCodeChanged,
    TResult? Function(int quantity)? ticketQuantityChanged,
    TResult? Function()? promotionCodeResetted,
    TResult? Function(CustomerData data)? customerDataChanged,
  }) {
    return stateInitialized?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? stateInitialized,
    TResult Function()? proceededToPayment,
    TResult Function()? promotionCodeFetched,
    TResult Function(String code)? promotionCodeChanged,
    TResult Function(int quantity)? ticketQuantityChanged,
    TResult Function()? promotionCodeResetted,
    TResult Function(CustomerData data)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (stateInitialized != null) {
      return stateInitialized(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_ProceededToPayment value) proceededToPayment,
    required TResult Function(_PromotionCodeFetched value) promotionCodeFetched,
    required TResult Function(_PromotionCodeChanged value) promotionCodeChanged,
    required TResult Function(_TicketQuantityChanged value)
        ticketQuantityChanged,
    required TResult Function(_PromotionCodeResetted value)
        promotionCodeResetted,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
  }) {
    return stateInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_ProceededToPayment value)? proceededToPayment,
    TResult? Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult? Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult? Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult? Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
  }) {
    return stateInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_ProceededToPayment value)? proceededToPayment,
    TResult Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (stateInitialized != null) {
      return stateInitialized(this);
    }
    return orElse();
  }
}

abstract class _StateInitialized implements TicketCheckoutEvent {
  const factory _StateInitialized(final Event event) = _$StateInitializedImpl;

  Event get event;
  @JsonKey(ignore: true)
  _$$StateInitializedImplCopyWith<_$StateInitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProceededToPaymentImplCopyWith<$Res> {
  factory _$$ProceededToPaymentImplCopyWith(_$ProceededToPaymentImpl value,
          $Res Function(_$ProceededToPaymentImpl) then) =
      __$$ProceededToPaymentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProceededToPaymentImplCopyWithImpl<$Res>
    extends _$TicketCheckoutEventCopyWithImpl<$Res, _$ProceededToPaymentImpl>
    implements _$$ProceededToPaymentImplCopyWith<$Res> {
  __$$ProceededToPaymentImplCopyWithImpl(_$ProceededToPaymentImpl _value,
      $Res Function(_$ProceededToPaymentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProceededToPaymentImpl implements _ProceededToPayment {
  const _$ProceededToPaymentImpl();

  @override
  String toString() {
    return 'TicketCheckoutEvent.proceededToPayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProceededToPaymentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) stateInitialized,
    required TResult Function() proceededToPayment,
    required TResult Function() promotionCodeFetched,
    required TResult Function(String code) promotionCodeChanged,
    required TResult Function(int quantity) ticketQuantityChanged,
    required TResult Function() promotionCodeResetted,
    required TResult Function(CustomerData data) customerDataChanged,
  }) {
    return proceededToPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? stateInitialized,
    TResult? Function()? proceededToPayment,
    TResult? Function()? promotionCodeFetched,
    TResult? Function(String code)? promotionCodeChanged,
    TResult? Function(int quantity)? ticketQuantityChanged,
    TResult? Function()? promotionCodeResetted,
    TResult? Function(CustomerData data)? customerDataChanged,
  }) {
    return proceededToPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? stateInitialized,
    TResult Function()? proceededToPayment,
    TResult Function()? promotionCodeFetched,
    TResult Function(String code)? promotionCodeChanged,
    TResult Function(int quantity)? ticketQuantityChanged,
    TResult Function()? promotionCodeResetted,
    TResult Function(CustomerData data)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (proceededToPayment != null) {
      return proceededToPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_ProceededToPayment value) proceededToPayment,
    required TResult Function(_PromotionCodeFetched value) promotionCodeFetched,
    required TResult Function(_PromotionCodeChanged value) promotionCodeChanged,
    required TResult Function(_TicketQuantityChanged value)
        ticketQuantityChanged,
    required TResult Function(_PromotionCodeResetted value)
        promotionCodeResetted,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
  }) {
    return proceededToPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_ProceededToPayment value)? proceededToPayment,
    TResult? Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult? Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult? Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult? Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
  }) {
    return proceededToPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_ProceededToPayment value)? proceededToPayment,
    TResult Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (proceededToPayment != null) {
      return proceededToPayment(this);
    }
    return orElse();
  }
}

abstract class _ProceededToPayment implements TicketCheckoutEvent {
  const factory _ProceededToPayment() = _$ProceededToPaymentImpl;
}

/// @nodoc
abstract class _$$PromotionCodeFetchedImplCopyWith<$Res> {
  factory _$$PromotionCodeFetchedImplCopyWith(_$PromotionCodeFetchedImpl value,
          $Res Function(_$PromotionCodeFetchedImpl) then) =
      __$$PromotionCodeFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromotionCodeFetchedImplCopyWithImpl<$Res>
    extends _$TicketCheckoutEventCopyWithImpl<$Res, _$PromotionCodeFetchedImpl>
    implements _$$PromotionCodeFetchedImplCopyWith<$Res> {
  __$$PromotionCodeFetchedImplCopyWithImpl(_$PromotionCodeFetchedImpl _value,
      $Res Function(_$PromotionCodeFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PromotionCodeFetchedImpl implements _PromotionCodeFetched {
  const _$PromotionCodeFetchedImpl();

  @override
  String toString() {
    return 'TicketCheckoutEvent.promotionCodeFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionCodeFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) stateInitialized,
    required TResult Function() proceededToPayment,
    required TResult Function() promotionCodeFetched,
    required TResult Function(String code) promotionCodeChanged,
    required TResult Function(int quantity) ticketQuantityChanged,
    required TResult Function() promotionCodeResetted,
    required TResult Function(CustomerData data) customerDataChanged,
  }) {
    return promotionCodeFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? stateInitialized,
    TResult? Function()? proceededToPayment,
    TResult? Function()? promotionCodeFetched,
    TResult? Function(String code)? promotionCodeChanged,
    TResult? Function(int quantity)? ticketQuantityChanged,
    TResult? Function()? promotionCodeResetted,
    TResult? Function(CustomerData data)? customerDataChanged,
  }) {
    return promotionCodeFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? stateInitialized,
    TResult Function()? proceededToPayment,
    TResult Function()? promotionCodeFetched,
    TResult Function(String code)? promotionCodeChanged,
    TResult Function(int quantity)? ticketQuantityChanged,
    TResult Function()? promotionCodeResetted,
    TResult Function(CustomerData data)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (promotionCodeFetched != null) {
      return promotionCodeFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_ProceededToPayment value) proceededToPayment,
    required TResult Function(_PromotionCodeFetched value) promotionCodeFetched,
    required TResult Function(_PromotionCodeChanged value) promotionCodeChanged,
    required TResult Function(_TicketQuantityChanged value)
        ticketQuantityChanged,
    required TResult Function(_PromotionCodeResetted value)
        promotionCodeResetted,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
  }) {
    return promotionCodeFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_ProceededToPayment value)? proceededToPayment,
    TResult? Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult? Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult? Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult? Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
  }) {
    return promotionCodeFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_ProceededToPayment value)? proceededToPayment,
    TResult Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (promotionCodeFetched != null) {
      return promotionCodeFetched(this);
    }
    return orElse();
  }
}

abstract class _PromotionCodeFetched implements TicketCheckoutEvent {
  const factory _PromotionCodeFetched() = _$PromotionCodeFetchedImpl;
}

/// @nodoc
abstract class _$$PromotionCodeChangedImplCopyWith<$Res> {
  factory _$$PromotionCodeChangedImplCopyWith(_$PromotionCodeChangedImpl value,
          $Res Function(_$PromotionCodeChangedImpl) then) =
      __$$PromotionCodeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$PromotionCodeChangedImplCopyWithImpl<$Res>
    extends _$TicketCheckoutEventCopyWithImpl<$Res, _$PromotionCodeChangedImpl>
    implements _$$PromotionCodeChangedImplCopyWith<$Res> {
  __$$PromotionCodeChangedImplCopyWithImpl(_$PromotionCodeChangedImpl _value,
      $Res Function(_$PromotionCodeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$PromotionCodeChangedImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PromotionCodeChangedImpl implements _PromotionCodeChanged {
  const _$PromotionCodeChangedImpl(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'TicketCheckoutEvent.promotionCodeChanged(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionCodeChangedImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionCodeChangedImplCopyWith<_$PromotionCodeChangedImpl>
      get copyWith =>
          __$$PromotionCodeChangedImplCopyWithImpl<_$PromotionCodeChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) stateInitialized,
    required TResult Function() proceededToPayment,
    required TResult Function() promotionCodeFetched,
    required TResult Function(String code) promotionCodeChanged,
    required TResult Function(int quantity) ticketQuantityChanged,
    required TResult Function() promotionCodeResetted,
    required TResult Function(CustomerData data) customerDataChanged,
  }) {
    return promotionCodeChanged(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? stateInitialized,
    TResult? Function()? proceededToPayment,
    TResult? Function()? promotionCodeFetched,
    TResult? Function(String code)? promotionCodeChanged,
    TResult? Function(int quantity)? ticketQuantityChanged,
    TResult? Function()? promotionCodeResetted,
    TResult? Function(CustomerData data)? customerDataChanged,
  }) {
    return promotionCodeChanged?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? stateInitialized,
    TResult Function()? proceededToPayment,
    TResult Function()? promotionCodeFetched,
    TResult Function(String code)? promotionCodeChanged,
    TResult Function(int quantity)? ticketQuantityChanged,
    TResult Function()? promotionCodeResetted,
    TResult Function(CustomerData data)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (promotionCodeChanged != null) {
      return promotionCodeChanged(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_ProceededToPayment value) proceededToPayment,
    required TResult Function(_PromotionCodeFetched value) promotionCodeFetched,
    required TResult Function(_PromotionCodeChanged value) promotionCodeChanged,
    required TResult Function(_TicketQuantityChanged value)
        ticketQuantityChanged,
    required TResult Function(_PromotionCodeResetted value)
        promotionCodeResetted,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
  }) {
    return promotionCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_ProceededToPayment value)? proceededToPayment,
    TResult? Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult? Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult? Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult? Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
  }) {
    return promotionCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_ProceededToPayment value)? proceededToPayment,
    TResult Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (promotionCodeChanged != null) {
      return promotionCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _PromotionCodeChanged implements TicketCheckoutEvent {
  const factory _PromotionCodeChanged(final String code) =
      _$PromotionCodeChangedImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$PromotionCodeChangedImplCopyWith<_$PromotionCodeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketQuantityChangedImplCopyWith<$Res> {
  factory _$$TicketQuantityChangedImplCopyWith(
          _$TicketQuantityChangedImpl value,
          $Res Function(_$TicketQuantityChangedImpl) then) =
      __$$TicketQuantityChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$TicketQuantityChangedImplCopyWithImpl<$Res>
    extends _$TicketCheckoutEventCopyWithImpl<$Res, _$TicketQuantityChangedImpl>
    implements _$$TicketQuantityChangedImplCopyWith<$Res> {
  __$$TicketQuantityChangedImplCopyWithImpl(_$TicketQuantityChangedImpl _value,
      $Res Function(_$TicketQuantityChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$TicketQuantityChangedImpl(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TicketQuantityChangedImpl implements _TicketQuantityChanged {
  const _$TicketQuantityChangedImpl(this.quantity);

  @override
  final int quantity;

  @override
  String toString() {
    return 'TicketCheckoutEvent.ticketQuantityChanged(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketQuantityChangedImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketQuantityChangedImplCopyWith<_$TicketQuantityChangedImpl>
      get copyWith => __$$TicketQuantityChangedImplCopyWithImpl<
          _$TicketQuantityChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) stateInitialized,
    required TResult Function() proceededToPayment,
    required TResult Function() promotionCodeFetched,
    required TResult Function(String code) promotionCodeChanged,
    required TResult Function(int quantity) ticketQuantityChanged,
    required TResult Function() promotionCodeResetted,
    required TResult Function(CustomerData data) customerDataChanged,
  }) {
    return ticketQuantityChanged(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? stateInitialized,
    TResult? Function()? proceededToPayment,
    TResult? Function()? promotionCodeFetched,
    TResult? Function(String code)? promotionCodeChanged,
    TResult? Function(int quantity)? ticketQuantityChanged,
    TResult? Function()? promotionCodeResetted,
    TResult? Function(CustomerData data)? customerDataChanged,
  }) {
    return ticketQuantityChanged?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? stateInitialized,
    TResult Function()? proceededToPayment,
    TResult Function()? promotionCodeFetched,
    TResult Function(String code)? promotionCodeChanged,
    TResult Function(int quantity)? ticketQuantityChanged,
    TResult Function()? promotionCodeResetted,
    TResult Function(CustomerData data)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (ticketQuantityChanged != null) {
      return ticketQuantityChanged(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_ProceededToPayment value) proceededToPayment,
    required TResult Function(_PromotionCodeFetched value) promotionCodeFetched,
    required TResult Function(_PromotionCodeChanged value) promotionCodeChanged,
    required TResult Function(_TicketQuantityChanged value)
        ticketQuantityChanged,
    required TResult Function(_PromotionCodeResetted value)
        promotionCodeResetted,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
  }) {
    return ticketQuantityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_ProceededToPayment value)? proceededToPayment,
    TResult? Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult? Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult? Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult? Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
  }) {
    return ticketQuantityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_ProceededToPayment value)? proceededToPayment,
    TResult Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (ticketQuantityChanged != null) {
      return ticketQuantityChanged(this);
    }
    return orElse();
  }
}

abstract class _TicketQuantityChanged implements TicketCheckoutEvent {
  const factory _TicketQuantityChanged(final int quantity) =
      _$TicketQuantityChangedImpl;

  int get quantity;
  @JsonKey(ignore: true)
  _$$TicketQuantityChangedImplCopyWith<_$TicketQuantityChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromotionCodeResettedImplCopyWith<$Res> {
  factory _$$PromotionCodeResettedImplCopyWith(
          _$PromotionCodeResettedImpl value,
          $Res Function(_$PromotionCodeResettedImpl) then) =
      __$$PromotionCodeResettedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromotionCodeResettedImplCopyWithImpl<$Res>
    extends _$TicketCheckoutEventCopyWithImpl<$Res, _$PromotionCodeResettedImpl>
    implements _$$PromotionCodeResettedImplCopyWith<$Res> {
  __$$PromotionCodeResettedImplCopyWithImpl(_$PromotionCodeResettedImpl _value,
      $Res Function(_$PromotionCodeResettedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PromotionCodeResettedImpl implements _PromotionCodeResetted {
  const _$PromotionCodeResettedImpl();

  @override
  String toString() {
    return 'TicketCheckoutEvent.promotionCodeResetted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionCodeResettedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) stateInitialized,
    required TResult Function() proceededToPayment,
    required TResult Function() promotionCodeFetched,
    required TResult Function(String code) promotionCodeChanged,
    required TResult Function(int quantity) ticketQuantityChanged,
    required TResult Function() promotionCodeResetted,
    required TResult Function(CustomerData data) customerDataChanged,
  }) {
    return promotionCodeResetted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? stateInitialized,
    TResult? Function()? proceededToPayment,
    TResult? Function()? promotionCodeFetched,
    TResult? Function(String code)? promotionCodeChanged,
    TResult? Function(int quantity)? ticketQuantityChanged,
    TResult? Function()? promotionCodeResetted,
    TResult? Function(CustomerData data)? customerDataChanged,
  }) {
    return promotionCodeResetted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? stateInitialized,
    TResult Function()? proceededToPayment,
    TResult Function()? promotionCodeFetched,
    TResult Function(String code)? promotionCodeChanged,
    TResult Function(int quantity)? ticketQuantityChanged,
    TResult Function()? promotionCodeResetted,
    TResult Function(CustomerData data)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (promotionCodeResetted != null) {
      return promotionCodeResetted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_ProceededToPayment value) proceededToPayment,
    required TResult Function(_PromotionCodeFetched value) promotionCodeFetched,
    required TResult Function(_PromotionCodeChanged value) promotionCodeChanged,
    required TResult Function(_TicketQuantityChanged value)
        ticketQuantityChanged,
    required TResult Function(_PromotionCodeResetted value)
        promotionCodeResetted,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
  }) {
    return promotionCodeResetted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_ProceededToPayment value)? proceededToPayment,
    TResult? Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult? Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult? Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult? Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
  }) {
    return promotionCodeResetted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_ProceededToPayment value)? proceededToPayment,
    TResult Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (promotionCodeResetted != null) {
      return promotionCodeResetted(this);
    }
    return orElse();
  }
}

abstract class _PromotionCodeResetted implements TicketCheckoutEvent {
  const factory _PromotionCodeResetted() = _$PromotionCodeResettedImpl;
}

/// @nodoc
abstract class _$$CustomerDataChangedImplCopyWith<$Res> {
  factory _$$CustomerDataChangedImplCopyWith(_$CustomerDataChangedImpl value,
          $Res Function(_$CustomerDataChangedImpl) then) =
      __$$CustomerDataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerData data});
}

/// @nodoc
class __$$CustomerDataChangedImplCopyWithImpl<$Res>
    extends _$TicketCheckoutEventCopyWithImpl<$Res, _$CustomerDataChangedImpl>
    implements _$$CustomerDataChangedImplCopyWith<$Res> {
  __$$CustomerDataChangedImplCopyWithImpl(_$CustomerDataChangedImpl _value,
      $Res Function(_$CustomerDataChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CustomerDataChangedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CustomerData,
    ));
  }
}

/// @nodoc

class _$CustomerDataChangedImpl implements _CustomerDataChanged {
  const _$CustomerDataChangedImpl(this.data);

  @override
  final CustomerData data;

  @override
  String toString() {
    return 'TicketCheckoutEvent.customerDataChanged(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDataChangedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDataChangedImplCopyWith<_$CustomerDataChangedImpl> get copyWith =>
      __$$CustomerDataChangedImplCopyWithImpl<_$CustomerDataChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Event event) stateInitialized,
    required TResult Function() proceededToPayment,
    required TResult Function() promotionCodeFetched,
    required TResult Function(String code) promotionCodeChanged,
    required TResult Function(int quantity) ticketQuantityChanged,
    required TResult Function() promotionCodeResetted,
    required TResult Function(CustomerData data) customerDataChanged,
  }) {
    return customerDataChanged(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Event event)? stateInitialized,
    TResult? Function()? proceededToPayment,
    TResult? Function()? promotionCodeFetched,
    TResult? Function(String code)? promotionCodeChanged,
    TResult? Function(int quantity)? ticketQuantityChanged,
    TResult? Function()? promotionCodeResetted,
    TResult? Function(CustomerData data)? customerDataChanged,
  }) {
    return customerDataChanged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Event event)? stateInitialized,
    TResult Function()? proceededToPayment,
    TResult Function()? promotionCodeFetched,
    TResult Function(String code)? promotionCodeChanged,
    TResult Function(int quantity)? ticketQuantityChanged,
    TResult Function()? promotionCodeResetted,
    TResult Function(CustomerData data)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (customerDataChanged != null) {
      return customerDataChanged(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_ProceededToPayment value) proceededToPayment,
    required TResult Function(_PromotionCodeFetched value) promotionCodeFetched,
    required TResult Function(_PromotionCodeChanged value) promotionCodeChanged,
    required TResult Function(_TicketQuantityChanged value)
        ticketQuantityChanged,
    required TResult Function(_PromotionCodeResetted value)
        promotionCodeResetted,
    required TResult Function(_CustomerDataChanged value) customerDataChanged,
  }) {
    return customerDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_ProceededToPayment value)? proceededToPayment,
    TResult? Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult? Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult? Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult? Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult? Function(_CustomerDataChanged value)? customerDataChanged,
  }) {
    return customerDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_ProceededToPayment value)? proceededToPayment,
    TResult Function(_PromotionCodeFetched value)? promotionCodeFetched,
    TResult Function(_PromotionCodeChanged value)? promotionCodeChanged,
    TResult Function(_TicketQuantityChanged value)? ticketQuantityChanged,
    TResult Function(_PromotionCodeResetted value)? promotionCodeResetted,
    TResult Function(_CustomerDataChanged value)? customerDataChanged,
    required TResult orElse(),
  }) {
    if (customerDataChanged != null) {
      return customerDataChanged(this);
    }
    return orElse();
  }
}

abstract class _CustomerDataChanged implements TicketCheckoutEvent {
  const factory _CustomerDataChanged(final CustomerData data) =
      _$CustomerDataChangedImpl;

  CustomerData get data;
  @JsonKey(ignore: true)
  _$$CustomerDataChangedImplCopyWith<_$CustomerDataChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketCheckoutState {
  PromotionCode get promotionCode => throw _privateConstructorUsedError;
  Option<String> get invalidPromotionCodeMessage =>
      throw _privateConstructorUsedError;
  int get ticketQuantity => throw _privateConstructorUsedError;
  Option<Ticket> get purchasedTicket => throw _privateConstructorUsedError;
  CubitStatus get initialStatus => throw _privateConstructorUsedError;
  CubitStatus get promotionCodeStatus => throw _privateConstructorUsedError;
  CubitStatus get proceedingToPaymentStatus =>
      throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  Option<double> get totalAmount => throw _privateConstructorUsedError;
  Option<double> get serviceFeeAmount => throw _privateConstructorUsedError;
  Option<TicketCheckoutData> get ticketCheckoutData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketCheckoutStateCopyWith<TicketCheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCheckoutStateCopyWith<$Res> {
  factory $TicketCheckoutStateCopyWith(
          TicketCheckoutState value, $Res Function(TicketCheckoutState) then) =
      _$TicketCheckoutStateCopyWithImpl<$Res, TicketCheckoutState>;
  @useResult
  $Res call(
      {PromotionCode promotionCode,
      Option<String> invalidPromotionCodeMessage,
      int ticketQuantity,
      Option<Ticket> purchasedTicket,
      CubitStatus initialStatus,
      CubitStatus promotionCodeStatus,
      CubitStatus proceedingToPaymentStatus,
      Option<String> snackbarMessage,
      Option<double> totalAmount,
      Option<double> serviceFeeAmount,
      Option<TicketCheckoutData> ticketCheckoutData});
}

/// @nodoc
class _$TicketCheckoutStateCopyWithImpl<$Res, $Val extends TicketCheckoutState>
    implements $TicketCheckoutStateCopyWith<$Res> {
  _$TicketCheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionCode = null,
    Object? invalidPromotionCodeMessage = null,
    Object? ticketQuantity = null,
    Object? purchasedTicket = null,
    Object? initialStatus = null,
    Object? promotionCodeStatus = null,
    Object? proceedingToPaymentStatus = null,
    Object? snackbarMessage = null,
    Object? totalAmount = null,
    Object? serviceFeeAmount = null,
    Object? ticketCheckoutData = null,
  }) {
    return _then(_value.copyWith(
      promotionCode: null == promotionCode
          ? _value.promotionCode
          : promotionCode // ignore: cast_nullable_to_non_nullable
              as PromotionCode,
      invalidPromotionCodeMessage: null == invalidPromotionCodeMessage
          ? _value.invalidPromotionCodeMessage
          : invalidPromotionCodeMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      ticketQuantity: null == ticketQuantity
          ? _value.ticketQuantity
          : ticketQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      purchasedTicket: null == purchasedTicket
          ? _value.purchasedTicket
          : purchasedTicket // ignore: cast_nullable_to_non_nullable
              as Option<Ticket>,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      promotionCodeStatus: null == promotionCodeStatus
          ? _value.promotionCodeStatus
          : promotionCodeStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      proceedingToPaymentStatus: null == proceedingToPaymentStatus
          ? _value.proceedingToPaymentStatus
          : proceedingToPaymentStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      serviceFeeAmount: null == serviceFeeAmount
          ? _value.serviceFeeAmount
          : serviceFeeAmount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      ticketCheckoutData: null == ticketCheckoutData
          ? _value.ticketCheckoutData
          : ticketCheckoutData // ignore: cast_nullable_to_non_nullable
              as Option<TicketCheckoutData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketCheckoutStateImplCopyWith<$Res>
    implements $TicketCheckoutStateCopyWith<$Res> {
  factory _$$TicketCheckoutStateImplCopyWith(_$TicketCheckoutStateImpl value,
          $Res Function(_$TicketCheckoutStateImpl) then) =
      __$$TicketCheckoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PromotionCode promotionCode,
      Option<String> invalidPromotionCodeMessage,
      int ticketQuantity,
      Option<Ticket> purchasedTicket,
      CubitStatus initialStatus,
      CubitStatus promotionCodeStatus,
      CubitStatus proceedingToPaymentStatus,
      Option<String> snackbarMessage,
      Option<double> totalAmount,
      Option<double> serviceFeeAmount,
      Option<TicketCheckoutData> ticketCheckoutData});
}

/// @nodoc
class __$$TicketCheckoutStateImplCopyWithImpl<$Res>
    extends _$TicketCheckoutStateCopyWithImpl<$Res, _$TicketCheckoutStateImpl>
    implements _$$TicketCheckoutStateImplCopyWith<$Res> {
  __$$TicketCheckoutStateImplCopyWithImpl(_$TicketCheckoutStateImpl _value,
      $Res Function(_$TicketCheckoutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionCode = null,
    Object? invalidPromotionCodeMessage = null,
    Object? ticketQuantity = null,
    Object? purchasedTicket = null,
    Object? initialStatus = null,
    Object? promotionCodeStatus = null,
    Object? proceedingToPaymentStatus = null,
    Object? snackbarMessage = null,
    Object? totalAmount = null,
    Object? serviceFeeAmount = null,
    Object? ticketCheckoutData = null,
  }) {
    return _then(_$TicketCheckoutStateImpl(
      promotionCode: null == promotionCode
          ? _value.promotionCode
          : promotionCode // ignore: cast_nullable_to_non_nullable
              as PromotionCode,
      invalidPromotionCodeMessage: null == invalidPromotionCodeMessage
          ? _value.invalidPromotionCodeMessage
          : invalidPromotionCodeMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      ticketQuantity: null == ticketQuantity
          ? _value.ticketQuantity
          : ticketQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      purchasedTicket: null == purchasedTicket
          ? _value.purchasedTicket
          : purchasedTicket // ignore: cast_nullable_to_non_nullable
              as Option<Ticket>,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      promotionCodeStatus: null == promotionCodeStatus
          ? _value.promotionCodeStatus
          : promotionCodeStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      proceedingToPaymentStatus: null == proceedingToPaymentStatus
          ? _value.proceedingToPaymentStatus
          : proceedingToPaymentStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      serviceFeeAmount: null == serviceFeeAmount
          ? _value.serviceFeeAmount
          : serviceFeeAmount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      ticketCheckoutData: null == ticketCheckoutData
          ? _value.ticketCheckoutData
          : ticketCheckoutData // ignore: cast_nullable_to_non_nullable
              as Option<TicketCheckoutData>,
    ));
  }
}

/// @nodoc

class _$TicketCheckoutStateImpl implements _TicketCheckoutState {
  const _$TicketCheckoutStateImpl(
      {required this.promotionCode,
      required this.invalidPromotionCodeMessage,
      required this.ticketQuantity,
      required this.purchasedTicket,
      required this.initialStatus,
      required this.promotionCodeStatus,
      required this.proceedingToPaymentStatus,
      required this.snackbarMessage,
      required this.totalAmount,
      required this.serviceFeeAmount,
      required this.ticketCheckoutData});

  @override
  final PromotionCode promotionCode;
  @override
  final Option<String> invalidPromotionCodeMessage;
  @override
  final int ticketQuantity;
  @override
  final Option<Ticket> purchasedTicket;
  @override
  final CubitStatus initialStatus;
  @override
  final CubitStatus promotionCodeStatus;
  @override
  final CubitStatus proceedingToPaymentStatus;
  @override
  final Option<String> snackbarMessage;
  @override
  final Option<double> totalAmount;
  @override
  final Option<double> serviceFeeAmount;
  @override
  final Option<TicketCheckoutData> ticketCheckoutData;

  @override
  String toString() {
    return 'TicketCheckoutState(promotionCode: $promotionCode, invalidPromotionCodeMessage: $invalidPromotionCodeMessage, ticketQuantity: $ticketQuantity, purchasedTicket: $purchasedTicket, initialStatus: $initialStatus, promotionCodeStatus: $promotionCodeStatus, proceedingToPaymentStatus: $proceedingToPaymentStatus, snackbarMessage: $snackbarMessage, totalAmount: $totalAmount, serviceFeeAmount: $serviceFeeAmount, ticketCheckoutData: $ticketCheckoutData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketCheckoutStateImpl &&
            (identical(other.promotionCode, promotionCode) ||
                other.promotionCode == promotionCode) &&
            (identical(other.invalidPromotionCodeMessage,
                    invalidPromotionCodeMessage) ||
                other.invalidPromotionCodeMessage ==
                    invalidPromotionCodeMessage) &&
            (identical(other.ticketQuantity, ticketQuantity) ||
                other.ticketQuantity == ticketQuantity) &&
            (identical(other.purchasedTicket, purchasedTicket) ||
                other.purchasedTicket == purchasedTicket) &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(other.promotionCodeStatus, promotionCodeStatus) ||
                other.promotionCodeStatus == promotionCodeStatus) &&
            (identical(other.proceedingToPaymentStatus,
                    proceedingToPaymentStatus) ||
                other.proceedingToPaymentStatus == proceedingToPaymentStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.serviceFeeAmount, serviceFeeAmount) ||
                other.serviceFeeAmount == serviceFeeAmount) &&
            (identical(other.ticketCheckoutData, ticketCheckoutData) ||
                other.ticketCheckoutData == ticketCheckoutData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      promotionCode,
      invalidPromotionCodeMessage,
      ticketQuantity,
      purchasedTicket,
      initialStatus,
      promotionCodeStatus,
      proceedingToPaymentStatus,
      snackbarMessage,
      totalAmount,
      serviceFeeAmount,
      ticketCheckoutData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketCheckoutStateImplCopyWith<_$TicketCheckoutStateImpl> get copyWith =>
      __$$TicketCheckoutStateImplCopyWithImpl<_$TicketCheckoutStateImpl>(
          this, _$identity);
}

abstract class _TicketCheckoutState implements TicketCheckoutState {
  const factory _TicketCheckoutState(
          {required final PromotionCode promotionCode,
          required final Option<String> invalidPromotionCodeMessage,
          required final int ticketQuantity,
          required final Option<Ticket> purchasedTicket,
          required final CubitStatus initialStatus,
          required final CubitStatus promotionCodeStatus,
          required final CubitStatus proceedingToPaymentStatus,
          required final Option<String> snackbarMessage,
          required final Option<double> totalAmount,
          required final Option<double> serviceFeeAmount,
          required final Option<TicketCheckoutData> ticketCheckoutData}) =
      _$TicketCheckoutStateImpl;

  @override
  PromotionCode get promotionCode;
  @override
  Option<String> get invalidPromotionCodeMessage;
  @override
  int get ticketQuantity;
  @override
  Option<Ticket> get purchasedTicket;
  @override
  CubitStatus get initialStatus;
  @override
  CubitStatus get promotionCodeStatus;
  @override
  CubitStatus get proceedingToPaymentStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  Option<double> get totalAmount;
  @override
  Option<double> get serviceFeeAmount;
  @override
  Option<TicketCheckoutData> get ticketCheckoutData;
  @override
  @JsonKey(ignore: true)
  _$$TicketCheckoutStateImplCopyWith<_$TicketCheckoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

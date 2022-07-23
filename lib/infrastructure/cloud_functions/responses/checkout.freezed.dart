// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Checkout _$CheckoutFromJson(Map<String, dynamic> json) {
  return _Checkout.fromJson(json);
}

/// @nodoc
mixin _$Checkout {
  String get sessionId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get paymentIntentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutCopyWith<Checkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutCopyWith<$Res> {
  factory $CheckoutCopyWith(Checkout value, $Res Function(Checkout) then) =
      _$CheckoutCopyWithImpl<$Res>;
  $Res call({String sessionId, String url, String paymentIntentId});
}

/// @nodoc
class _$CheckoutCopyWithImpl<$Res> implements $CheckoutCopyWith<$Res> {
  _$CheckoutCopyWithImpl(this._value, this._then);

  final Checkout _value;
  // ignore: unused_field
  final $Res Function(Checkout) _then;

  @override
  $Res call({
    Object? sessionId = freezed,
    Object? url = freezed,
    Object? paymentIntentId = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIntentId: paymentIntentId == freezed
          ? _value.paymentIntentId
          : paymentIntentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CheckoutCopyWith<$Res> implements $CheckoutCopyWith<$Res> {
  factory _$$_CheckoutCopyWith(
          _$_Checkout value, $Res Function(_$_Checkout) then) =
      __$$_CheckoutCopyWithImpl<$Res>;
  @override
  $Res call({String sessionId, String url, String paymentIntentId});
}

/// @nodoc
class __$$_CheckoutCopyWithImpl<$Res> extends _$CheckoutCopyWithImpl<$Res>
    implements _$$_CheckoutCopyWith<$Res> {
  __$$_CheckoutCopyWithImpl(
      _$_Checkout _value, $Res Function(_$_Checkout) _then)
      : super(_value, (v) => _then(v as _$_Checkout));

  @override
  _$_Checkout get _value => super._value as _$_Checkout;

  @override
  $Res call({
    Object? sessionId = freezed,
    Object? url = freezed,
    Object? paymentIntentId = freezed,
  }) {
    return _then(_$_Checkout(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIntentId: paymentIntentId == freezed
          ? _value.paymentIntentId
          : paymentIntentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_Checkout extends _Checkout {
  const _$_Checkout(
      {required this.sessionId,
      required this.url,
      required this.paymentIntentId})
      : super._();

  factory _$_Checkout.fromJson(Map<String, dynamic> json) =>
      _$$_CheckoutFromJson(json);

  @override
  final String sessionId;
  @override
  final String url;
  @override
  final String paymentIntentId;

  @override
  String toString() {
    return 'Checkout(sessionId: $sessionId, url: $url, paymentIntentId: $paymentIntentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Checkout &&
            const DeepCollectionEquality().equals(other.sessionId, sessionId) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.paymentIntentId, paymentIntentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionId),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(paymentIntentId));

  @JsonKey(ignore: true)
  @override
  _$$_CheckoutCopyWith<_$_Checkout> get copyWith =>
      __$$_CheckoutCopyWithImpl<_$_Checkout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckoutToJson(
      this,
    );
  }
}

abstract class _Checkout extends Checkout {
  const factory _Checkout(
      {required final String sessionId,
      required final String url,
      required final String paymentIntentId}) = _$_Checkout;
  const _Checkout._() : super._();

  factory _Checkout.fromJson(Map<String, dynamic> json) = _$_Checkout.fromJson;

  @override
  String get sessionId;
  @override
  String get url;
  @override
  String get paymentIntentId;
  @override
  @JsonKey(ignore: true)
  _$$_CheckoutCopyWith<_$_Checkout> get copyWith =>
      throw _privateConstructorUsedError;
}

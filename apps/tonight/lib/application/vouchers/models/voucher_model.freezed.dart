// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Voucher {
  String get id => throw _privateConstructorUsedError;
  String get voucherName => throw _privateConstructorUsedError;
  String get venueName => throw _privateConstructorUsedError;
  DateTime get validUntil => throw _privateConstructorUsedError;
  VoucherType get voucherType => throw _privateConstructorUsedError;
  Option<UserTonightVoucherDetails> get userTonightVoucherDetails =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isActivated => throw _privateConstructorUsedError;
  bool get isExpired => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoucherCopyWith<Voucher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherCopyWith<$Res> {
  factory $VoucherCopyWith(Voucher value, $Res Function(Voucher) then) =
      _$VoucherCopyWithImpl<$Res, Voucher>;
  @useResult
  $Res call(
      {String id,
      String voucherName,
      String venueName,
      DateTime validUntil,
      VoucherType voucherType,
      Option<UserTonightVoucherDetails> userTonightVoucherDetails,
      DateTime createdAt,
      bool isActivated,
      bool isExpired});
}

/// @nodoc
class _$VoucherCopyWithImpl<$Res, $Val extends Voucher>
    implements $VoucherCopyWith<$Res> {
  _$VoucherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? voucherName = null,
    Object? venueName = null,
    Object? validUntil = null,
    Object? voucherType = null,
    Object? userTonightVoucherDetails = null,
    Object? createdAt = null,
    Object? isActivated = null,
    Object? isExpired = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      venueName: null == venueName
          ? _value.venueName
          : venueName // ignore: cast_nullable_to_non_nullable
              as String,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      voucherType: null == voucherType
          ? _value.voucherType
          : voucherType // ignore: cast_nullable_to_non_nullable
              as VoucherType,
      userTonightVoucherDetails: null == userTonightVoucherDetails
          ? _value.userTonightVoucherDetails
          : userTonightVoucherDetails // ignore: cast_nullable_to_non_nullable
              as Option<UserTonightVoucherDetails>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherImplCopyWith<$Res> implements $VoucherCopyWith<$Res> {
  factory _$$VoucherImplCopyWith(
          _$VoucherImpl value, $Res Function(_$VoucherImpl) then) =
      __$$VoucherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String voucherName,
      String venueName,
      DateTime validUntil,
      VoucherType voucherType,
      Option<UserTonightVoucherDetails> userTonightVoucherDetails,
      DateTime createdAt,
      bool isActivated,
      bool isExpired});
}

/// @nodoc
class __$$VoucherImplCopyWithImpl<$Res>
    extends _$VoucherCopyWithImpl<$Res, _$VoucherImpl>
    implements _$$VoucherImplCopyWith<$Res> {
  __$$VoucherImplCopyWithImpl(
      _$VoucherImpl _value, $Res Function(_$VoucherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? voucherName = null,
    Object? venueName = null,
    Object? validUntil = null,
    Object? voucherType = null,
    Object? userTonightVoucherDetails = null,
    Object? createdAt = null,
    Object? isActivated = null,
    Object? isExpired = null,
  }) {
    return _then(_$VoucherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      venueName: null == venueName
          ? _value.venueName
          : venueName // ignore: cast_nullable_to_non_nullable
              as String,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      voucherType: null == voucherType
          ? _value.voucherType
          : voucherType // ignore: cast_nullable_to_non_nullable
              as VoucherType,
      userTonightVoucherDetails: null == userTonightVoucherDetails
          ? _value.userTonightVoucherDetails
          : userTonightVoucherDetails // ignore: cast_nullable_to_non_nullable
              as Option<UserTonightVoucherDetails>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VoucherImpl extends _Voucher {
  const _$VoucherImpl(
      {required this.id,
      required this.voucherName,
      required this.venueName,
      required this.validUntil,
      required this.voucherType,
      required this.userTonightVoucherDetails,
      required this.createdAt,
      this.isActivated = false,
      this.isExpired = false})
      : super._();

  @override
  final String id;
  @override
  final String voucherName;
  @override
  final String venueName;
  @override
  final DateTime validUntil;
  @override
  final VoucherType voucherType;
  @override
  final Option<UserTonightVoucherDetails> userTonightVoucherDetails;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final bool isActivated;
  @override
  @JsonKey()
  final bool isExpired;

  @override
  String toString() {
    return 'Voucher(id: $id, voucherName: $voucherName, venueName: $venueName, validUntil: $validUntil, voucherType: $voucherType, userTonightVoucherDetails: $userTonightVoucherDetails, createdAt: $createdAt, isActivated: $isActivated, isExpired: $isExpired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.voucherName, voucherName) ||
                other.voucherName == voucherName) &&
            (identical(other.venueName, venueName) ||
                other.venueName == venueName) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.voucherType, voucherType) ||
                other.voucherType == voucherType) &&
            (identical(other.userTonightVoucherDetails,
                    userTonightVoucherDetails) ||
                other.userTonightVoucherDetails == userTonightVoucherDetails) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      voucherName,
      venueName,
      validUntil,
      voucherType,
      userTonightVoucherDetails,
      createdAt,
      isActivated,
      isExpired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherImplCopyWith<_$VoucherImpl> get copyWith =>
      __$$VoucherImplCopyWithImpl<_$VoucherImpl>(this, _$identity);
}

abstract class _Voucher extends Voucher {
  const factory _Voucher(
      {required final String id,
      required final String voucherName,
      required final String venueName,
      required final DateTime validUntil,
      required final VoucherType voucherType,
      required final Option<UserTonightVoucherDetails>
          userTonightVoucherDetails,
      required final DateTime createdAt,
      final bool isActivated,
      final bool isExpired}) = _$VoucherImpl;
  const _Voucher._() : super._();

  @override
  String get id;
  @override
  String get voucherName;
  @override
  String get venueName;
  @override
  DateTime get validUntil;
  @override
  VoucherType get voucherType;
  @override
  Option<UserTonightVoucherDetails> get userTonightVoucherDetails;
  @override
  DateTime get createdAt;
  @override
  bool get isActivated;
  @override
  bool get isExpired;
  @override
  @JsonKey(ignore: true)
  _$$VoucherImplCopyWith<_$VoucherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

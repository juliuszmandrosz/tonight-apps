// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tonight_voucher_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserTonightVoucherDetails {
  String get venueId => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTonightVoucherDetailsCopyWith<UserTonightVoucherDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTonightVoucherDetailsCopyWith<$Res> {
  factory $UserTonightVoucherDetailsCopyWith(UserTonightVoucherDetails value,
          $Res Function(UserTonightVoucherDetails) then) =
      _$UserTonightVoucherDetailsCopyWithImpl<$Res, UserTonightVoucherDetails>;
  @useResult
  $Res call({String venueId, String eventName});
}

/// @nodoc
class _$UserTonightVoucherDetailsCopyWithImpl<$Res,
        $Val extends UserTonightVoucherDetails>
    implements $UserTonightVoucherDetailsCopyWith<$Res> {
  _$UserTonightVoucherDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? venueId = null,
    Object? eventName = null,
  }) {
    return _then(_value.copyWith(
      venueId: null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTonightVoucherDetailsImplCopyWith<$Res>
    implements $UserTonightVoucherDetailsCopyWith<$Res> {
  factory _$$UserTonightVoucherDetailsImplCopyWith(
          _$UserTonightVoucherDetailsImpl value,
          $Res Function(_$UserTonightVoucherDetailsImpl) then) =
      __$$UserTonightVoucherDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String venueId, String eventName});
}

/// @nodoc
class __$$UserTonightVoucherDetailsImplCopyWithImpl<$Res>
    extends _$UserTonightVoucherDetailsCopyWithImpl<$Res,
        _$UserTonightVoucherDetailsImpl>
    implements _$$UserTonightVoucherDetailsImplCopyWith<$Res> {
  __$$UserTonightVoucherDetailsImplCopyWithImpl(
      _$UserTonightVoucherDetailsImpl _value,
      $Res Function(_$UserTonightVoucherDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? venueId = null,
    Object? eventName = null,
  }) {
    return _then(_$UserTonightVoucherDetailsImpl(
      venueId: null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserTonightVoucherDetailsImpl implements _UserTonightVoucherDetails {
  const _$UserTonightVoucherDetailsImpl(
      {required this.venueId, required this.eventName});

  @override
  final String venueId;
  @override
  final String eventName;

  @override
  String toString() {
    return 'UserTonightVoucherDetails(venueId: $venueId, eventName: $eventName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTonightVoucherDetailsImpl &&
            (identical(other.venueId, venueId) || other.venueId == venueId) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, venueId, eventName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTonightVoucherDetailsImplCopyWith<_$UserTonightVoucherDetailsImpl>
      get copyWith => __$$UserTonightVoucherDetailsImplCopyWithImpl<
          _$UserTonightVoucherDetailsImpl>(this, _$identity);
}

abstract class _UserTonightVoucherDetails implements UserTonightVoucherDetails {
  const factory _UserTonightVoucherDetails(
      {required final String venueId,
      required final String eventName}) = _$UserTonightVoucherDetailsImpl;

  @override
  String get venueId;
  @override
  String get eventName;
  @override
  @JsonKey(ignore: true)
  _$$UserTonightVoucherDetailsImplCopyWith<_$UserTonightVoucherDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

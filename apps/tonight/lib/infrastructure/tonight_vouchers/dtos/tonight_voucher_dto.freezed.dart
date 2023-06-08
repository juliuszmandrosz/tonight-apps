// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tonight_voucher_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TonightVoucherDto _$TonightVoucherDtoFromJson(Map<String, dynamic> json) {
  return _TonightVoucherDto.fromJson(json);
}

/// @nodoc
mixin _$TonightVoucherDto {
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get eventId => throw _privateConstructorUsedError;
  String get venueId => throw _privateConstructorUsedError;
  String get venueName => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get voucherName => throw _privateConstructorUsedError;
  int get poolLimit => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get validUntil => throw _privateConstructorUsedError;

  /// List of user ids
  List<String> get usedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TonightVoucherDtoCopyWith<TonightVoucherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonightVoucherDtoCopyWith<$Res> {
  factory $TonightVoucherDtoCopyWith(
          TonightVoucherDto value, $Res Function(TonightVoucherDto) then) =
      _$TonightVoucherDtoCopyWithImpl<$Res, TonightVoucherDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? eventId,
      String venueId,
      String venueName,
      String eventName,
      String voucherName,
      int poolLimit,
      @FirebaseTimestampJsonConverter() DateTime validUntil,
      List<String> usedBy});
}

/// @nodoc
class _$TonightVoucherDtoCopyWithImpl<$Res, $Val extends TonightVoucherDto>
    implements $TonightVoucherDtoCopyWith<$Res> {
  _$TonightVoucherDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = freezed,
    Object? venueId = null,
    Object? venueName = null,
    Object? eventName = null,
    Object? voucherName = null,
    Object? poolLimit = null,
    Object? validUntil = null,
    Object? usedBy = null,
  }) {
    return _then(_value.copyWith(
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      venueId: null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
      venueName: null == venueName
          ? _value.venueName
          : venueName // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      poolLimit: null == poolLimit
          ? _value.poolLimit
          : poolLimit // ignore: cast_nullable_to_non_nullable
              as int,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usedBy: null == usedBy
          ? _value.usedBy
          : usedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TonightVoucherDtoCopyWith<$Res>
    implements $TonightVoucherDtoCopyWith<$Res> {
  factory _$$_TonightVoucherDtoCopyWith(_$_TonightVoucherDto value,
          $Res Function(_$_TonightVoucherDto) then) =
      __$$_TonightVoucherDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? eventId,
      String venueId,
      String venueName,
      String eventName,
      String voucherName,
      int poolLimit,
      @FirebaseTimestampJsonConverter() DateTime validUntil,
      List<String> usedBy});
}

/// @nodoc
class __$$_TonightVoucherDtoCopyWithImpl<$Res>
    extends _$TonightVoucherDtoCopyWithImpl<$Res, _$_TonightVoucherDto>
    implements _$$_TonightVoucherDtoCopyWith<$Res> {
  __$$_TonightVoucherDtoCopyWithImpl(
      _$_TonightVoucherDto _value, $Res Function(_$_TonightVoucherDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = freezed,
    Object? venueId = null,
    Object? venueName = null,
    Object? eventName = null,
    Object? voucherName = null,
    Object? poolLimit = null,
    Object? validUntil = null,
    Object? usedBy = null,
  }) {
    return _then(_$_TonightVoucherDto(
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      venueId: null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
      venueName: null == venueName
          ? _value.venueName
          : venueName // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      voucherName: null == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String,
      poolLimit: null == poolLimit
          ? _value.poolLimit
          : poolLimit // ignore: cast_nullable_to_non_nullable
              as int,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usedBy: null == usedBy
          ? _value._usedBy
          : usedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_TonightVoucherDto extends _TonightVoucherDto {
  const _$_TonightVoucherDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.eventId,
      required this.venueId,
      required this.venueName,
      required this.eventName,
      required this.voucherName,
      required this.poolLimit,
      @FirebaseTimestampJsonConverter() required this.validUntil,
      final List<String> usedBy = const []})
      : _usedBy = usedBy,
        super._();

  factory _$_TonightVoucherDto.fromJson(Map<String, dynamic> json) =>
      _$$_TonightVoucherDtoFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? eventId;
  @override
  final String venueId;
  @override
  final String venueName;
  @override
  final String eventName;
  @override
  final String voucherName;
  @override
  final int poolLimit;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime validUntil;

  /// List of user ids
  final List<String> _usedBy;

  /// List of user ids
  @override
  @JsonKey()
  List<String> get usedBy {
    if (_usedBy is EqualUnmodifiableListView) return _usedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usedBy);
  }

  @override
  String toString() {
    return 'TonightVoucherDto(eventId: $eventId, venueId: $venueId, venueName: $venueName, eventName: $eventName, voucherName: $voucherName, poolLimit: $poolLimit, validUntil: $validUntil, usedBy: $usedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TonightVoucherDto &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.venueId, venueId) || other.venueId == venueId) &&
            (identical(other.venueName, venueName) ||
                other.venueName == venueName) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.voucherName, voucherName) ||
                other.voucherName == voucherName) &&
            (identical(other.poolLimit, poolLimit) ||
                other.poolLimit == poolLimit) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            const DeepCollectionEquality().equals(other._usedBy, _usedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventId,
      venueId,
      venueName,
      eventName,
      voucherName,
      poolLimit,
      validUntil,
      const DeepCollectionEquality().hash(_usedBy));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TonightVoucherDtoCopyWith<_$_TonightVoucherDto> get copyWith =>
      __$$_TonightVoucherDtoCopyWithImpl<_$_TonightVoucherDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TonightVoucherDtoToJson(
      this,
    );
  }
}

abstract class _TonightVoucherDto extends TonightVoucherDto {
  const factory _TonightVoucherDto(
      {@JsonKey(includeToJson: false, includeFromJson: false)
          final String? eventId,
      required final String venueId,
      required final String venueName,
      required final String eventName,
      required final String voucherName,
      required final int poolLimit,
      @FirebaseTimestampJsonConverter()
          required final DateTime validUntil,
      final List<String> usedBy}) = _$_TonightVoucherDto;
  const _TonightVoucherDto._() : super._();

  factory _TonightVoucherDto.fromJson(Map<String, dynamic> json) =
      _$_TonightVoucherDto.fromJson;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get eventId;
  @override
  String get venueId;
  @override
  String get venueName;
  @override
  String get eventName;
  @override
  String get voucherName;
  @override
  int get poolLimit;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get validUntil;
  @override

  /// List of user ids
  List<String> get usedBy;
  @override
  @JsonKey(ignore: true)
  _$$_TonightVoucherDtoCopyWith<_$_TonightVoucherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

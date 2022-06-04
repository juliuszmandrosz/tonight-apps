// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'applied_discount_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppliedDiscountDto _$AppliedDiscountDtoFromJson(Map<String, dynamic> json) {
  return _AppliedDiscountDto.fromJson(json);
}

/// @nodoc
mixin _$AppliedDiscountDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get realizationDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppliedDiscountDtoCopyWith<AppliedDiscountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedDiscountDtoCopyWith<$Res> {
  factory $AppliedDiscountDtoCopyWith(
          AppliedDiscountDto value, $Res Function(AppliedDiscountDto) then) =
      _$AppliedDiscountDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String eventId,
      @FirebaseTimestampJsonConverter() DateTime realizationDateTime});
}

/// @nodoc
class _$AppliedDiscountDtoCopyWithImpl<$Res>
    implements $AppliedDiscountDtoCopyWith<$Res> {
  _$AppliedDiscountDtoCopyWithImpl(this._value, this._then);

  final AppliedDiscountDto _value;
  // ignore: unused_field
  final $Res Function(AppliedDiscountDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
    Object? realizationDateTime = freezed,
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
      realizationDateTime: realizationDateTime == freezed
          ? _value.realizationDateTime
          : realizationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_AppliedDiscountDtoCopyWith<$Res>
    implements $AppliedDiscountDtoCopyWith<$Res> {
  factory _$$_AppliedDiscountDtoCopyWith(_$_AppliedDiscountDto value,
          $Res Function(_$_AppliedDiscountDto) then) =
      __$$_AppliedDiscountDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String eventId,
      @FirebaseTimestampJsonConverter() DateTime realizationDateTime});
}

/// @nodoc
class __$$_AppliedDiscountDtoCopyWithImpl<$Res>
    extends _$AppliedDiscountDtoCopyWithImpl<$Res>
    implements _$$_AppliedDiscountDtoCopyWith<$Res> {
  __$$_AppliedDiscountDtoCopyWithImpl(
      _$_AppliedDiscountDto _value, $Res Function(_$_AppliedDiscountDto) _then)
      : super(_value, (v) => _then(v as _$_AppliedDiscountDto));

  @override
  _$_AppliedDiscountDto get _value => super._value as _$_AppliedDiscountDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
    Object? realizationDateTime = freezed,
  }) {
    return _then(_$_AppliedDiscountDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      realizationDateTime: realizationDateTime == freezed
          ? _value.realizationDateTime
          : realizationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_AppliedDiscountDto extends _AppliedDiscountDto {
  const _$_AppliedDiscountDto(
      {@JsonKey(ignore: true) this.id,
      required this.eventId,
      @FirebaseTimestampJsonConverter() required this.realizationDateTime})
      : super._();

  factory _$_AppliedDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppliedDiscountDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String eventId;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime realizationDateTime;

  @override
  String toString() {
    return 'AppliedDiscountDto(id: $id, eventId: $eventId, realizationDateTime: $realizationDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppliedDiscountDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality()
                .equals(other.realizationDateTime, realizationDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(eventId),
      const DeepCollectionEquality().hash(realizationDateTime));

  @JsonKey(ignore: true)
  @override
  _$$_AppliedDiscountDtoCopyWith<_$_AppliedDiscountDto> get copyWith =>
      __$$_AppliedDiscountDtoCopyWithImpl<_$_AppliedDiscountDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppliedDiscountDtoToJson(this);
  }
}

abstract class _AppliedDiscountDto extends AppliedDiscountDto {
  const factory _AppliedDiscountDto(
      {@JsonKey(ignore: true)
          final String? id,
      required final String eventId,
      @FirebaseTimestampJsonConverter()
          required final DateTime realizationDateTime}) = _$_AppliedDiscountDto;
  const _AppliedDiscountDto._() : super._();

  factory _AppliedDiscountDto.fromJson(Map<String, dynamic> json) =
      _$_AppliedDiscountDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get eventId => throw _privateConstructorUsedError;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get realizationDateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppliedDiscountDtoCopyWith<_$_AppliedDiscountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

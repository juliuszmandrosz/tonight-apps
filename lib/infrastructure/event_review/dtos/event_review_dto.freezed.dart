// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventReviewDto _$EventReviewDtoFromJson(Map<String, dynamic> json) {
  return _EventReviewDto.fromJson(json);
}

/// @nodoc
mixin _$EventReviewDto {
  @JsonKey(ignore: true)
  String? get eventId => throw _privateConstructorUsedError;
  int get reviewQuantity => throw _privateConstructorUsedError;
  double get reviewAvg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventReviewDtoCopyWith<EventReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventReviewDtoCopyWith<$Res> {
  factory $EventReviewDtoCopyWith(
          EventReviewDto value, $Res Function(EventReviewDto) then) =
      _$EventReviewDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? eventId,
      int reviewQuantity,
      double reviewAvg});
}

/// @nodoc
class _$EventReviewDtoCopyWithImpl<$Res>
    implements $EventReviewDtoCopyWith<$Res> {
  _$EventReviewDtoCopyWithImpl(this._value, this._then);

  final EventReviewDto _value;
  // ignore: unused_field
  final $Res Function(EventReviewDto) _then;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? reviewQuantity = freezed,
    Object? reviewAvg = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewQuantity: reviewQuantity == freezed
          ? _value.reviewQuantity
          : reviewQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAvg: reviewAvg == freezed
          ? _value.reviewAvg
          : reviewAvg // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_EventReviewDtoCopyWith<$Res>
    implements $EventReviewDtoCopyWith<$Res> {
  factory _$$_EventReviewDtoCopyWith(
          _$_EventReviewDto value, $Res Function(_$_EventReviewDto) then) =
      __$$_EventReviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? eventId,
      int reviewQuantity,
      double reviewAvg});
}

/// @nodoc
class __$$_EventReviewDtoCopyWithImpl<$Res>
    extends _$EventReviewDtoCopyWithImpl<$Res>
    implements _$$_EventReviewDtoCopyWith<$Res> {
  __$$_EventReviewDtoCopyWithImpl(
      _$_EventReviewDto _value, $Res Function(_$_EventReviewDto) _then)
      : super(_value, (v) => _then(v as _$_EventReviewDto));

  @override
  _$_EventReviewDto get _value => super._value as _$_EventReviewDto;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? reviewQuantity = freezed,
    Object? reviewAvg = freezed,
  }) {
    return _then(_$_EventReviewDto(
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewQuantity: reviewQuantity == freezed
          ? _value.reviewQuantity
          : reviewQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAvg: reviewAvg == freezed
          ? _value.reviewAvg
          : reviewAvg // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_EventReviewDto extends _EventReviewDto {
  const _$_EventReviewDto(
      {@JsonKey(ignore: true) this.eventId,
      this.reviewQuantity = 0,
      this.reviewAvg = 0})
      : super._();

  factory _$_EventReviewDto.fromJson(Map<String, dynamic> json) =>
      _$$_EventReviewDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? eventId;
  @override
  @JsonKey()
  final int reviewQuantity;
  @override
  @JsonKey()
  final double reviewAvg;

  @override
  String toString() {
    return 'EventReviewDto(eventId: $eventId, reviewQuantity: $reviewQuantity, reviewAvg: $reviewAvg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventReviewDto &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality()
                .equals(other.reviewQuantity, reviewQuantity) &&
            const DeepCollectionEquality().equals(other.reviewAvg, reviewAvg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventId),
      const DeepCollectionEquality().hash(reviewQuantity),
      const DeepCollectionEquality().hash(reviewAvg));

  @JsonKey(ignore: true)
  @override
  _$$_EventReviewDtoCopyWith<_$_EventReviewDto> get copyWith =>
      __$$_EventReviewDtoCopyWithImpl<_$_EventReviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventReviewDtoToJson(
      this,
    );
  }
}

abstract class _EventReviewDto extends EventReviewDto {
  const factory _EventReviewDto(
      {@JsonKey(ignore: true) final String? eventId,
      final int reviewQuantity,
      final double reviewAvg}) = _$_EventReviewDto;
  const _EventReviewDto._() : super._();

  factory _EventReviewDto.fromJson(Map<String, dynamic> json) =
      _$_EventReviewDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get eventId;
  @override
  int get reviewQuantity;
  @override
  double get reviewAvg;
  @override
  @JsonKey(ignore: true)
  _$$_EventReviewDtoCopyWith<_$_EventReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

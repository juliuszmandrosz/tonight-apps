// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review_report_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewReportDto _$ReviewReportDtoFromJson(Map<String, dynamic> json) {
  return _ReviewReportDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewReportDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get reviewId => throw _privateConstructorUsedError;
  String get reporterId => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get reportedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewReportDtoCopyWith<ReviewReportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewReportDtoCopyWith<$Res> {
  factory $ReviewReportDtoCopyWith(
          ReviewReportDto value, $Res Function(ReviewReportDto) then) =
      _$ReviewReportDtoCopyWithImpl<$Res, ReviewReportDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String reviewId,
      String reporterId,
      @FirebaseTimestampJsonConverter() DateTime reportedAt});
}

/// @nodoc
class _$ReviewReportDtoCopyWithImpl<$Res, $Val extends ReviewReportDto>
    implements $ReviewReportDtoCopyWith<$Res> {
  _$ReviewReportDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reviewId = null,
    Object? reporterId = null,
    Object? reportedAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
      reporterId: null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      reportedAt: null == reportedAt
          ? _value.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewReportDtoCopyWith<$Res>
    implements $ReviewReportDtoCopyWith<$Res> {
  factory _$$_ReviewReportDtoCopyWith(
          _$_ReviewReportDto value, $Res Function(_$_ReviewReportDto) then) =
      __$$_ReviewReportDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String reviewId,
      String reporterId,
      @FirebaseTimestampJsonConverter() DateTime reportedAt});
}

/// @nodoc
class __$$_ReviewReportDtoCopyWithImpl<$Res>
    extends _$ReviewReportDtoCopyWithImpl<$Res, _$_ReviewReportDto>
    implements _$$_ReviewReportDtoCopyWith<$Res> {
  __$$_ReviewReportDtoCopyWithImpl(
      _$_ReviewReportDto _value, $Res Function(_$_ReviewReportDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reviewId = null,
    Object? reporterId = null,
    Object? reportedAt = null,
  }) {
    return _then(_$_ReviewReportDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
      reporterId: null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      reportedAt: null == reportedAt
          ? _value.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewReportDto extends _ReviewReportDto {
  const _$_ReviewReportDto(
      {@JsonKey(ignore: true) this.id,
      required this.reviewId,
      required this.reporterId,
      @FirebaseTimestampJsonConverter() required this.reportedAt})
      : super._();

  factory _$_ReviewReportDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewReportDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String reviewId;
  @override
  final String reporterId;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime reportedAt;

  @override
  String toString() {
    return 'ReviewReportDto(id: $id, reviewId: $reviewId, reporterId: $reporterId, reportedAt: $reportedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewReportDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.reporterId, reporterId) ||
                other.reporterId == reporterId) &&
            (identical(other.reportedAt, reportedAt) ||
                other.reportedAt == reportedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, reviewId, reporterId, reportedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewReportDtoCopyWith<_$_ReviewReportDto> get copyWith =>
      __$$_ReviewReportDtoCopyWithImpl<_$_ReviewReportDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewReportDtoToJson(
      this,
    );
  }
}

abstract class _ReviewReportDto extends ReviewReportDto {
  const factory _ReviewReportDto(
      {@JsonKey(ignore: true)
          final String? id,
      required final String reviewId,
      required final String reporterId,
      @FirebaseTimestampJsonConverter()
          required final DateTime reportedAt}) = _$_ReviewReportDto;
  const _ReviewReportDto._() : super._();

  factory _ReviewReportDto.fromJson(Map<String, dynamic> json) =
      _$_ReviewReportDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get reviewId;
  @override
  String get reporterId;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get reportedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewReportDtoCopyWith<_$_ReviewReportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

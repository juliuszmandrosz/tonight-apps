// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wall_photo_report_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WallPhotoReportDto _$WallPhotoReportDtoFromJson(Map<String, dynamic> json) {
  return _WallPhotoReportDto.fromJson(json);
}

/// @nodoc
mixin _$WallPhotoReportDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get photoId => throw _privateConstructorUsedError;
  String get reporterId => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WallPhotoReportDtoCopyWith<WallPhotoReportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallPhotoReportDtoCopyWith<$Res> {
  factory $WallPhotoReportDtoCopyWith(
          WallPhotoReportDto value, $Res Function(WallPhotoReportDto) then) =
      _$WallPhotoReportDtoCopyWithImpl<$Res, WallPhotoReportDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String photoId,
      String reporterId,
      String photoUrl,
      @FirebaseTimestampJsonConverter() DateTime createdAt});
}

/// @nodoc
class _$WallPhotoReportDtoCopyWithImpl<$Res, $Val extends WallPhotoReportDto>
    implements $WallPhotoReportDtoCopyWith<$Res> {
  _$WallPhotoReportDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photoId = null,
    Object? reporterId = null,
    Object? photoUrl = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photoId: null == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String,
      reporterId: null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WallPhotoReportDtoImplCopyWith<$Res>
    implements $WallPhotoReportDtoCopyWith<$Res> {
  factory _$$WallPhotoReportDtoImplCopyWith(_$WallPhotoReportDtoImpl value,
          $Res Function(_$WallPhotoReportDtoImpl) then) =
      __$$WallPhotoReportDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String photoId,
      String reporterId,
      String photoUrl,
      @FirebaseTimestampJsonConverter() DateTime createdAt});
}

/// @nodoc
class __$$WallPhotoReportDtoImplCopyWithImpl<$Res>
    extends _$WallPhotoReportDtoCopyWithImpl<$Res, _$WallPhotoReportDtoImpl>
    implements _$$WallPhotoReportDtoImplCopyWith<$Res> {
  __$$WallPhotoReportDtoImplCopyWithImpl(_$WallPhotoReportDtoImpl _value,
      $Res Function(_$WallPhotoReportDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photoId = null,
    Object? reporterId = null,
    Object? photoUrl = null,
    Object? createdAt = null,
  }) {
    return _then(_$WallPhotoReportDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photoId: null == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String,
      reporterId: null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WallPhotoReportDtoImpl extends _WallPhotoReportDto {
  const _$WallPhotoReportDtoImpl(
      {@JsonKey(ignore: true) this.id,
      required this.photoId,
      required this.reporterId,
      required this.photoUrl,
      @FirebaseTimestampJsonConverter() required this.createdAt})
      : super._();

  factory _$WallPhotoReportDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WallPhotoReportDtoImplFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String photoId;
  @override
  final String reporterId;
  @override
  final String photoUrl;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'WallPhotoReportDto(id: $id, photoId: $photoId, reporterId: $reporterId, photoUrl: $photoUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WallPhotoReportDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoId, photoId) || other.photoId == photoId) &&
            (identical(other.reporterId, reporterId) ||
                other.reporterId == reporterId) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, photoId, reporterId, photoUrl, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WallPhotoReportDtoImplCopyWith<_$WallPhotoReportDtoImpl> get copyWith =>
      __$$WallPhotoReportDtoImplCopyWithImpl<_$WallPhotoReportDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WallPhotoReportDtoImplToJson(
      this,
    );
  }
}

abstract class _WallPhotoReportDto extends WallPhotoReportDto {
  const factory _WallPhotoReportDto(
      {@JsonKey(ignore: true) final String? id,
      required final String photoId,
      required final String reporterId,
      required final String photoUrl,
      @FirebaseTimestampJsonConverter()
      required final DateTime createdAt}) = _$WallPhotoReportDtoImpl;
  const _WallPhotoReportDto._() : super._();

  factory _WallPhotoReportDto.fromJson(Map<String, dynamic> json) =
      _$WallPhotoReportDtoImpl.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get photoId;
  @override
  String get reporterId;
  @override
  String get photoUrl;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$WallPhotoReportDtoImplCopyWith<_$WallPhotoReportDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

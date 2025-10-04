// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collective_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollectiveDto _$CollectiveDtoFromJson(Map<String, dynamic> json) {
  return _CollectiveDto.fromJson(json);
}

/// @nodoc
mixin _$CollectiveDto {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get collectiveName => throw _privateConstructorUsedError;
  String get collectivePhotoUrl => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  double get reviewAvg => throw _privateConstructorUsedError;
  @CityListJsonConverter()
  List<City> get cities => throw _privateConstructorUsedError;
  @SocialMediaJsonConverter()
  List<SocialMedia> get socialMedia => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  List<String> get residentIds => throw _privateConstructorUsedError;
  List<String> get musicalGenres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectiveDtoCopyWith<CollectiveDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectiveDtoCopyWith<$Res> {
  factory $CollectiveDtoCopyWith(
          CollectiveDto value, $Res Function(CollectiveDto) then) =
      _$CollectiveDtoCopyWithImpl<$Res, CollectiveDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String collectiveName,
      String collectivePhotoUrl,
      int reviewCount,
      double reviewAvg,
      @CityListJsonConverter() List<City> cities,
      @SocialMediaJsonConverter() List<SocialMedia> socialMedia,
      String bio,
      List<String> residentIds,
      List<String> musicalGenres});
}

/// @nodoc
class _$CollectiveDtoCopyWithImpl<$Res, $Val extends CollectiveDto>
    implements $CollectiveDtoCopyWith<$Res> {
  _$CollectiveDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? collectiveName = null,
    Object? collectivePhotoUrl = null,
    Object? reviewCount = null,
    Object? reviewAvg = null,
    Object? cities = null,
    Object? socialMedia = null,
    Object? bio = null,
    Object? residentIds = null,
    Object? musicalGenres = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      collectiveName: null == collectiveName
          ? _value.collectiveName
          : collectiveName // ignore: cast_nullable_to_non_nullable
              as String,
      collectivePhotoUrl: null == collectivePhotoUrl
          ? _value.collectivePhotoUrl
          : collectivePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAvg: null == reviewAvg
          ? _value.reviewAvg
          : reviewAvg // ignore: cast_nullable_to_non_nullable
              as double,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      socialMedia: null == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<SocialMedia>,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      residentIds: null == residentIds
          ? _value.residentIds
          : residentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      musicalGenres: null == musicalGenres
          ? _value.musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectiveDtoImplCopyWith<$Res>
    implements $CollectiveDtoCopyWith<$Res> {
  factory _$$CollectiveDtoImplCopyWith(
          _$CollectiveDtoImpl value, $Res Function(_$CollectiveDtoImpl) then) =
      __$$CollectiveDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String collectiveName,
      String collectivePhotoUrl,
      int reviewCount,
      double reviewAvg,
      @CityListJsonConverter() List<City> cities,
      @SocialMediaJsonConverter() List<SocialMedia> socialMedia,
      String bio,
      List<String> residentIds,
      List<String> musicalGenres});
}

/// @nodoc
class __$$CollectiveDtoImplCopyWithImpl<$Res>
    extends _$CollectiveDtoCopyWithImpl<$Res, _$CollectiveDtoImpl>
    implements _$$CollectiveDtoImplCopyWith<$Res> {
  __$$CollectiveDtoImplCopyWithImpl(
      _$CollectiveDtoImpl _value, $Res Function(_$CollectiveDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? collectiveName = null,
    Object? collectivePhotoUrl = null,
    Object? reviewCount = null,
    Object? reviewAvg = null,
    Object? cities = null,
    Object? socialMedia = null,
    Object? bio = null,
    Object? residentIds = null,
    Object? musicalGenres = null,
  }) {
    return _then(_$CollectiveDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      collectiveName: null == collectiveName
          ? _value.collectiveName
          : collectiveName // ignore: cast_nullable_to_non_nullable
              as String,
      collectivePhotoUrl: null == collectivePhotoUrl
          ? _value.collectivePhotoUrl
          : collectivePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAvg: null == reviewAvg
          ? _value.reviewAvg
          : reviewAvg // ignore: cast_nullable_to_non_nullable
              as double,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      socialMedia: null == socialMedia
          ? _value._socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<SocialMedia>,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      residentIds: null == residentIds
          ? _value._residentIds
          : residentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      musicalGenres: null == musicalGenres
          ? _value._musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$CollectiveDtoImpl extends _CollectiveDto {
  const _$CollectiveDtoImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required this.collectiveName,
      required this.collectivePhotoUrl,
      required this.reviewCount,
      required this.reviewAvg,
      @CityListJsonConverter() final List<City> cities = const [],
      @SocialMediaJsonConverter()
      final List<SocialMedia> socialMedia = const [],
      this.bio = '',
      final List<String> residentIds = const [],
      final List<String> musicalGenres = const []})
      : _cities = cities,
        _socialMedia = socialMedia,
        _residentIds = residentIds,
        _musicalGenres = musicalGenres,
        super._();

  factory _$CollectiveDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectiveDtoImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;
  @override
  final String collectiveName;
  @override
  final String collectivePhotoUrl;
  @override
  final int reviewCount;
  @override
  final double reviewAvg;
  final List<City> _cities;
  @override
  @JsonKey()
  @CityListJsonConverter()
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<SocialMedia> _socialMedia;
  @override
  @JsonKey()
  @SocialMediaJsonConverter()
  List<SocialMedia> get socialMedia {
    if (_socialMedia is EqualUnmodifiableListView) return _socialMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialMedia);
  }

  @override
  @JsonKey()
  final String bio;
  final List<String> _residentIds;
  @override
  @JsonKey()
  List<String> get residentIds {
    if (_residentIds is EqualUnmodifiableListView) return _residentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_residentIds);
  }

  final List<String> _musicalGenres;
  @override
  @JsonKey()
  List<String> get musicalGenres {
    if (_musicalGenres is EqualUnmodifiableListView) return _musicalGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musicalGenres);
  }

  @override
  String toString() {
    return 'CollectiveDto(id: $id, collectiveName: $collectiveName, collectivePhotoUrl: $collectivePhotoUrl, reviewCount: $reviewCount, reviewAvg: $reviewAvg, cities: $cities, socialMedia: $socialMedia, bio: $bio, residentIds: $residentIds, musicalGenres: $musicalGenres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectiveDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectiveName, collectiveName) ||
                other.collectiveName == collectiveName) &&
            (identical(other.collectivePhotoUrl, collectivePhotoUrl) ||
                other.collectivePhotoUrl == collectivePhotoUrl) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.reviewAvg, reviewAvg) ||
                other.reviewAvg == reviewAvg) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality()
                .equals(other._socialMedia, _socialMedia) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality()
                .equals(other._residentIds, _residentIds) &&
            const DeepCollectionEquality()
                .equals(other._musicalGenres, _musicalGenres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      collectiveName,
      collectivePhotoUrl,
      reviewCount,
      reviewAvg,
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_socialMedia),
      bio,
      const DeepCollectionEquality().hash(_residentIds),
      const DeepCollectionEquality().hash(_musicalGenres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectiveDtoImplCopyWith<_$CollectiveDtoImpl> get copyWith =>
      __$$CollectiveDtoImplCopyWithImpl<_$CollectiveDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectiveDtoImplToJson(
      this,
    );
  }
}

abstract class _CollectiveDto extends CollectiveDto {
  const factory _CollectiveDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String? id,
      required final String collectiveName,
      required final String collectivePhotoUrl,
      required final int reviewCount,
      required final double reviewAvg,
      @CityListJsonConverter() final List<City> cities,
      @SocialMediaJsonConverter() final List<SocialMedia> socialMedia,
      final String bio,
      final List<String> residentIds,
      final List<String> musicalGenres}) = _$CollectiveDtoImpl;
  const _CollectiveDto._() : super._();

  factory _CollectiveDto.fromJson(Map<String, dynamic> json) =
      _$CollectiveDtoImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  String get collectiveName;
  @override
  String get collectivePhotoUrl;
  @override
  int get reviewCount;
  @override
  double get reviewAvg;
  @override
  @CityListJsonConverter()
  List<City> get cities;
  @override
  @SocialMediaJsonConverter()
  List<SocialMedia> get socialMedia;
  @override
  String get bio;
  @override
  List<String> get residentIds;
  @override
  List<String> get musicalGenres;
  @override
  @JsonKey(ignore: true)
  _$$CollectiveDtoImplCopyWith<_$CollectiveDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

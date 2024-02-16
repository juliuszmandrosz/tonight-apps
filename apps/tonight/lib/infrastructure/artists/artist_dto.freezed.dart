// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistDto _$ArtistDtoFromJson(Map<String, dynamic> json) {
  return _ArtistDto.fromJson(json);
}

/// @nodoc
mixin _$ArtistDto {
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get artistPhotoUrl => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  List<String> get musicalGenres => throw _privateConstructorUsedError;
  @SocialMediaJsonConverter()
  List<SocialMedia> get socialMedia => throw _privateConstructorUsedError;
  @FirebaseTimestampListJsonConverter()
  List<DateTime> get bookedDates => throw _privateConstructorUsedError;
  List<String> get collectiveIds => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistDtoCopyWith<ArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistDtoCopyWith<$Res> {
  factory $ArtistDtoCopyWith(ArtistDto value, $Res Function(ArtistDto) then) =
      _$ArtistDtoCopyWithImpl<$Res, ArtistDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      String artistName,
      String artistPhotoUrl,
      String cityId,
      String cityName,
      List<String> musicalGenres,
      @SocialMediaJsonConverter() List<SocialMedia> socialMedia,
      @FirebaseTimestampListJsonConverter() List<DateTime> bookedDates,
      List<String> collectiveIds,
      String bio});
}

/// @nodoc
class _$ArtistDtoCopyWithImpl<$Res, $Val extends ArtistDto>
    implements $ArtistDtoCopyWith<$Res> {
  _$ArtistDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? artistName = null,
    Object? artistPhotoUrl = null,
    Object? cityId = null,
    Object? cityName = null,
    Object? musicalGenres = null,
    Object? socialMedia = null,
    Object? bookedDates = null,
    Object? collectiveIds = null,
    Object? bio = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artistPhotoUrl: null == artistPhotoUrl
          ? _value.artistPhotoUrl
          : artistPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      musicalGenres: null == musicalGenres
          ? _value.musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      socialMedia: null == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<SocialMedia>,
      bookedDates: null == bookedDates
          ? _value.bookedDates
          : bookedDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      collectiveIds: null == collectiveIds
          ? _value.collectiveIds
          : collectiveIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistDtoImplCopyWith<$Res>
    implements $ArtistDtoCopyWith<$Res> {
  factory _$$ArtistDtoImplCopyWith(
          _$ArtistDtoImpl value, $Res Function(_$ArtistDtoImpl) then) =
      __$$ArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      String artistName,
      String artistPhotoUrl,
      String cityId,
      String cityName,
      List<String> musicalGenres,
      @SocialMediaJsonConverter() List<SocialMedia> socialMedia,
      @FirebaseTimestampListJsonConverter() List<DateTime> bookedDates,
      List<String> collectiveIds,
      String bio});
}

/// @nodoc
class __$$ArtistDtoImplCopyWithImpl<$Res>
    extends _$ArtistDtoCopyWithImpl<$Res, _$ArtistDtoImpl>
    implements _$$ArtistDtoImplCopyWith<$Res> {
  __$$ArtistDtoImplCopyWithImpl(
      _$ArtistDtoImpl _value, $Res Function(_$ArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? artistName = null,
    Object? artistPhotoUrl = null,
    Object? cityId = null,
    Object? cityName = null,
    Object? musicalGenres = null,
    Object? socialMedia = null,
    Object? bookedDates = null,
    Object? collectiveIds = null,
    Object? bio = null,
  }) {
    return _then(_$ArtistDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artistPhotoUrl: null == artistPhotoUrl
          ? _value.artistPhotoUrl
          : artistPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      musicalGenres: null == musicalGenres
          ? _value._musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      socialMedia: null == socialMedia
          ? _value._socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as List<SocialMedia>,
      bookedDates: null == bookedDates
          ? _value._bookedDates
          : bookedDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      collectiveIds: null == collectiveIds
          ? _value._collectiveIds
          : collectiveIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistDtoImpl extends _ArtistDto {
  const _$ArtistDtoImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.id,
      required this.artistName,
      required this.artistPhotoUrl,
      required this.cityId,
      required this.cityName,
      required final List<String> musicalGenres,
      @SocialMediaJsonConverter()
      final List<SocialMedia> socialMedia = const [],
      @FirebaseTimestampListJsonConverter()
      final List<DateTime> bookedDates = const [],
      final List<String> collectiveIds = const [],
      this.bio = ''})
      : _musicalGenres = musicalGenres,
        _socialMedia = socialMedia,
        _bookedDates = bookedDates,
        _collectiveIds = collectiveIds,
        super._();

  factory _$ArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistDtoImplFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? id;
  @override
  final String artistName;
  @override
  final String artistPhotoUrl;
  @override
  final String cityId;
  @override
  final String cityName;
  final List<String> _musicalGenres;
  @override
  List<String> get musicalGenres {
    if (_musicalGenres is EqualUnmodifiableListView) return _musicalGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musicalGenres);
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

  final List<DateTime> _bookedDates;
  @override
  @JsonKey()
  @FirebaseTimestampListJsonConverter()
  List<DateTime> get bookedDates {
    if (_bookedDates is EqualUnmodifiableListView) return _bookedDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookedDates);
  }

  final List<String> _collectiveIds;
  @override
  @JsonKey()
  List<String> get collectiveIds {
    if (_collectiveIds is EqualUnmodifiableListView) return _collectiveIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectiveIds);
  }

  @override
  @JsonKey()
  final String bio;

  @override
  String toString() {
    return 'ArtistDto(id: $id, artistName: $artistName, artistPhotoUrl: $artistPhotoUrl, cityId: $cityId, cityName: $cityName, musicalGenres: $musicalGenres, socialMedia: $socialMedia, bookedDates: $bookedDates, collectiveIds: $collectiveIds, bio: $bio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.artistPhotoUrl, artistPhotoUrl) ||
                other.artistPhotoUrl == artistPhotoUrl) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            const DeepCollectionEquality()
                .equals(other._musicalGenres, _musicalGenres) &&
            const DeepCollectionEquality()
                .equals(other._socialMedia, _socialMedia) &&
            const DeepCollectionEquality()
                .equals(other._bookedDates, _bookedDates) &&
            const DeepCollectionEquality()
                .equals(other._collectiveIds, _collectiveIds) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      artistName,
      artistPhotoUrl,
      cityId,
      cityName,
      const DeepCollectionEquality().hash(_musicalGenres),
      const DeepCollectionEquality().hash(_socialMedia),
      const DeepCollectionEquality().hash(_bookedDates),
      const DeepCollectionEquality().hash(_collectiveIds),
      bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistDtoImplCopyWith<_$ArtistDtoImpl> get copyWith =>
      __$$ArtistDtoImplCopyWithImpl<_$ArtistDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _ArtistDto extends ArtistDto {
  const factory _ArtistDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) final String? id,
      required final String artistName,
      required final String artistPhotoUrl,
      required final String cityId,
      required final String cityName,
      required final List<String> musicalGenres,
      @SocialMediaJsonConverter() final List<SocialMedia> socialMedia,
      @FirebaseTimestampListJsonConverter() final List<DateTime> bookedDates,
      final List<String> collectiveIds,
      final String bio}) = _$ArtistDtoImpl;
  const _ArtistDto._() : super._();

  factory _ArtistDto.fromJson(Map<String, dynamic> json) =
      _$ArtistDtoImpl.fromJson;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id;
  @override
  String get artistName;
  @override
  String get artistPhotoUrl;
  @override
  String get cityId;
  @override
  String get cityName;
  @override
  List<String> get musicalGenres;
  @override
  @SocialMediaJsonConverter()
  List<SocialMedia> get socialMedia;
  @override
  @FirebaseTimestampListJsonConverter()
  List<DateTime> get bookedDates;
  @override
  List<String> get collectiveIds;
  @override
  String get bio;
  @override
  @JsonKey(ignore: true)
  _$$ArtistDtoImplCopyWith<_$ArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

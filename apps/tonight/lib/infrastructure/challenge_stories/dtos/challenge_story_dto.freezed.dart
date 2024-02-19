// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_story_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChallengeStoryDto _$ChallengeStoryDtoFromJson(Map<String, dynamic> json) {
  return _ChallengeStoryDto.fromJson(json);
}

/// @nodoc
mixin _$ChallengeStoryDto {
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get userProfilePhotoUrl => throw _privateConstructorUsedError;
  String get storyUrl => throw _privateConstructorUsedError;
  bool get isVideo => throw _privateConstructorUsedError;
  String get challengeId => throw _privateConstructorUsedError;
  String get challengeTitle => throw _privateConstructorUsedError;
  int get periodNumber => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get challengeStartDate => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get challengeEndDate => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  int get commentsCount => throw _privateConstructorUsedError;
  bool get isSelfie => throw _privateConstructorUsedError;
  int? get videoDurationInMilliseconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengeStoryDtoCopyWith<ChallengeStoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeStoryDtoCopyWith<$Res> {
  factory $ChallengeStoryDtoCopyWith(
          ChallengeStoryDto value, $Res Function(ChallengeStoryDto) then) =
      _$ChallengeStoryDtoCopyWithImpl<$Res, ChallengeStoryDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      @FirebaseTimestampJsonConverter() DateTime createdAt,
      String userId,
      String username,
      String userProfilePhotoUrl,
      String storyUrl,
      bool isVideo,
      String challengeId,
      String challengeTitle,
      int periodNumber,
      @FirebaseTimestampJsonConverter() DateTime challengeStartDate,
      @FirebaseTimestampJsonConverter() DateTime challengeEndDate,
      int likesCount,
      int commentsCount,
      bool isSelfie,
      int? videoDurationInMilliseconds});
}

/// @nodoc
class _$ChallengeStoryDtoCopyWithImpl<$Res, $Val extends ChallengeStoryDto>
    implements $ChallengeStoryDtoCopyWith<$Res> {
  _$ChallengeStoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = null,
    Object? userId = null,
    Object? username = null,
    Object? userProfilePhotoUrl = null,
    Object? storyUrl = null,
    Object? isVideo = null,
    Object? challengeId = null,
    Object? challengeTitle = null,
    Object? periodNumber = null,
    Object? challengeStartDate = null,
    Object? challengeEndDate = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? isSelfie = null,
    Object? videoDurationInMilliseconds = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userProfilePhotoUrl: null == userProfilePhotoUrl
          ? _value.userProfilePhotoUrl
          : userProfilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      storyUrl: null == storyUrl
          ? _value.storyUrl
          : storyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      challengeTitle: null == challengeTitle
          ? _value.challengeTitle
          : challengeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      periodNumber: null == periodNumber
          ? _value.periodNumber
          : periodNumber // ignore: cast_nullable_to_non_nullable
              as int,
      challengeStartDate: null == challengeStartDate
          ? _value.challengeStartDate
          : challengeStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      challengeEndDate: null == challengeEndDate
          ? _value.challengeEndDate
          : challengeEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSelfie: null == isSelfie
          ? _value.isSelfie
          : isSelfie // ignore: cast_nullable_to_non_nullable
              as bool,
      videoDurationInMilliseconds: freezed == videoDurationInMilliseconds
          ? _value.videoDurationInMilliseconds
          : videoDurationInMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengeStoryDtoImplCopyWith<$Res>
    implements $ChallengeStoryDtoCopyWith<$Res> {
  factory _$$ChallengeStoryDtoImplCopyWith(_$ChallengeStoryDtoImpl value,
          $Res Function(_$ChallengeStoryDtoImpl) then) =
      __$$ChallengeStoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      @FirebaseTimestampJsonConverter() DateTime createdAt,
      String userId,
      String username,
      String userProfilePhotoUrl,
      String storyUrl,
      bool isVideo,
      String challengeId,
      String challengeTitle,
      int periodNumber,
      @FirebaseTimestampJsonConverter() DateTime challengeStartDate,
      @FirebaseTimestampJsonConverter() DateTime challengeEndDate,
      int likesCount,
      int commentsCount,
      bool isSelfie,
      int? videoDurationInMilliseconds});
}

/// @nodoc
class __$$ChallengeStoryDtoImplCopyWithImpl<$Res>
    extends _$ChallengeStoryDtoCopyWithImpl<$Res, _$ChallengeStoryDtoImpl>
    implements _$$ChallengeStoryDtoImplCopyWith<$Res> {
  __$$ChallengeStoryDtoImplCopyWithImpl(_$ChallengeStoryDtoImpl _value,
      $Res Function(_$ChallengeStoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = null,
    Object? userId = null,
    Object? username = null,
    Object? userProfilePhotoUrl = null,
    Object? storyUrl = null,
    Object? isVideo = null,
    Object? challengeId = null,
    Object? challengeTitle = null,
    Object? periodNumber = null,
    Object? challengeStartDate = null,
    Object? challengeEndDate = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? isSelfie = null,
    Object? videoDurationInMilliseconds = freezed,
  }) {
    return _then(_$ChallengeStoryDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userProfilePhotoUrl: null == userProfilePhotoUrl
          ? _value.userProfilePhotoUrl
          : userProfilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      storyUrl: null == storyUrl
          ? _value.storyUrl
          : storyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      challengeTitle: null == challengeTitle
          ? _value.challengeTitle
          : challengeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      periodNumber: null == periodNumber
          ? _value.periodNumber
          : periodNumber // ignore: cast_nullable_to_non_nullable
              as int,
      challengeStartDate: null == challengeStartDate
          ? _value.challengeStartDate
          : challengeStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      challengeEndDate: null == challengeEndDate
          ? _value.challengeEndDate
          : challengeEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSelfie: null == isSelfie
          ? _value.isSelfie
          : isSelfie // ignore: cast_nullable_to_non_nullable
              as bool,
      videoDurationInMilliseconds: freezed == videoDurationInMilliseconds
          ? _value.videoDurationInMilliseconds
          : videoDurationInMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeStoryDtoImpl extends _ChallengeStoryDto {
  const _$ChallengeStoryDtoImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.id,
      @FirebaseTimestampJsonConverter() required this.createdAt,
      required this.userId,
      required this.username,
      required this.userProfilePhotoUrl,
      required this.storyUrl,
      required this.isVideo,
      required this.challengeId,
      required this.challengeTitle,
      required this.periodNumber,
      @FirebaseTimestampJsonConverter() required this.challengeStartDate,
      @FirebaseTimestampJsonConverter() required this.challengeEndDate,
      this.likesCount = 0,
      this.commentsCount = 0,
      this.isSelfie = false,
      this.videoDurationInMilliseconds})
      : super._();

  factory _$ChallengeStoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeStoryDtoImplFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? id;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime createdAt;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String userProfilePhotoUrl;
  @override
  final String storyUrl;
  @override
  final bool isVideo;
  @override
  final String challengeId;
  @override
  final String challengeTitle;
  @override
  final int periodNumber;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime challengeStartDate;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime challengeEndDate;
  @override
  @JsonKey()
  final int likesCount;
  @override
  @JsonKey()
  final int commentsCount;
  @override
  @JsonKey()
  final bool isSelfie;
  @override
  final int? videoDurationInMilliseconds;

  @override
  String toString() {
    return 'ChallengeStoryDto(id: $id, createdAt: $createdAt, userId: $userId, username: $username, userProfilePhotoUrl: $userProfilePhotoUrl, storyUrl: $storyUrl, isVideo: $isVideo, challengeId: $challengeId, challengeTitle: $challengeTitle, periodNumber: $periodNumber, challengeStartDate: $challengeStartDate, challengeEndDate: $challengeEndDate, likesCount: $likesCount, commentsCount: $commentsCount, isSelfie: $isSelfie, videoDurationInMilliseconds: $videoDurationInMilliseconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeStoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userProfilePhotoUrl, userProfilePhotoUrl) ||
                other.userProfilePhotoUrl == userProfilePhotoUrl) &&
            (identical(other.storyUrl, storyUrl) ||
                other.storyUrl == storyUrl) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo) &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.challengeTitle, challengeTitle) ||
                other.challengeTitle == challengeTitle) &&
            (identical(other.periodNumber, periodNumber) ||
                other.periodNumber == periodNumber) &&
            (identical(other.challengeStartDate, challengeStartDate) ||
                other.challengeStartDate == challengeStartDate) &&
            (identical(other.challengeEndDate, challengeEndDate) ||
                other.challengeEndDate == challengeEndDate) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.isSelfie, isSelfie) ||
                other.isSelfie == isSelfie) &&
            (identical(other.videoDurationInMilliseconds,
                    videoDurationInMilliseconds) ||
                other.videoDurationInMilliseconds ==
                    videoDurationInMilliseconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      userId,
      username,
      userProfilePhotoUrl,
      storyUrl,
      isVideo,
      challengeId,
      challengeTitle,
      periodNumber,
      challengeStartDate,
      challengeEndDate,
      likesCount,
      commentsCount,
      isSelfie,
      videoDurationInMilliseconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeStoryDtoImplCopyWith<_$ChallengeStoryDtoImpl> get copyWith =>
      __$$ChallengeStoryDtoImplCopyWithImpl<_$ChallengeStoryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengeStoryDtoImplToJson(
      this,
    );
  }
}

abstract class _ChallengeStoryDto extends ChallengeStoryDto {
  const factory _ChallengeStoryDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) final String? id,
      @FirebaseTimestampJsonConverter() required final DateTime createdAt,
      required final String userId,
      required final String username,
      required final String userProfilePhotoUrl,
      required final String storyUrl,
      required final bool isVideo,
      required final String challengeId,
      required final String challengeTitle,
      required final int periodNumber,
      @FirebaseTimestampJsonConverter()
      required final DateTime challengeStartDate,
      @FirebaseTimestampJsonConverter()
      required final DateTime challengeEndDate,
      final int likesCount,
      final int commentsCount,
      final bool isSelfie,
      final int? videoDurationInMilliseconds}) = _$ChallengeStoryDtoImpl;
  const _ChallengeStoryDto._() : super._();

  factory _ChallengeStoryDto.fromJson(Map<String, dynamic> json) =
      _$ChallengeStoryDtoImpl.fromJson;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt;
  @override
  String get userId;
  @override
  String get username;
  @override
  String get userProfilePhotoUrl;
  @override
  String get storyUrl;
  @override
  bool get isVideo;
  @override
  String get challengeId;
  @override
  String get challengeTitle;
  @override
  int get periodNumber;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get challengeStartDate;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get challengeEndDate;
  @override
  int get likesCount;
  @override
  int get commentsCount;
  @override
  bool get isSelfie;
  @override
  int? get videoDurationInMilliseconds;
  @override
  @JsonKey(ignore: true)
  _$$ChallengeStoryDtoImplCopyWith<_$ChallengeStoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

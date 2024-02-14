// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_interactions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoryInteractionsDto _$StoryInteractionsDtoFromJson(Map<String, dynamic> json) {
  return _StoryInteractionsDto.fromJson(json);
}

/// @nodoc
mixin _$StoryInteractionsDto {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get storyId => throw _privateConstructorUsedError;
  int get periodNumber => throw _privateConstructorUsedError;
  dynamic get liked => throw _privateConstructorUsedError;
  dynamic get seen => throw _privateConstructorUsedError;
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get seenAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryInteractionsDtoCopyWith<StoryInteractionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryInteractionsDtoCopyWith<$Res> {
  factory $StoryInteractionsDtoCopyWith(StoryInteractionsDto value,
          $Res Function(StoryInteractionsDto) then) =
      _$StoryInteractionsDtoCopyWithImpl<$Res, StoryInteractionsDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String userId,
      String storyId,
      int periodNumber,
      dynamic liked,
      dynamic seen,
      @FirebaseNullableTimestampJsonConverter() DateTime? seenAt});
}

/// @nodoc
class _$StoryInteractionsDtoCopyWithImpl<$Res,
        $Val extends StoryInteractionsDto>
    implements $StoryInteractionsDtoCopyWith<$Res> {
  _$StoryInteractionsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? storyId = null,
    Object? periodNumber = null,
    Object? liked = freezed,
    Object? seen = freezed,
    Object? seenAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      storyId: null == storyId
          ? _value.storyId
          : storyId // ignore: cast_nullable_to_non_nullable
              as String,
      periodNumber: null == periodNumber
          ? _value.periodNumber
          : periodNumber // ignore: cast_nullable_to_non_nullable
              as int,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seen: freezed == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seenAt: freezed == seenAt
          ? _value.seenAt
          : seenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoryInteractionsDtoCopyWith<$Res>
    implements $StoryInteractionsDtoCopyWith<$Res> {
  factory _$$_StoryInteractionsDtoCopyWith(_$_StoryInteractionsDto value,
          $Res Function(_$_StoryInteractionsDto) then) =
      __$$_StoryInteractionsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false) String? id,
      String userId,
      String storyId,
      int periodNumber,
      dynamic liked,
      dynamic seen,
      @FirebaseNullableTimestampJsonConverter() DateTime? seenAt});
}

/// @nodoc
class __$$_StoryInteractionsDtoCopyWithImpl<$Res>
    extends _$StoryInteractionsDtoCopyWithImpl<$Res, _$_StoryInteractionsDto>
    implements _$$_StoryInteractionsDtoCopyWith<$Res> {
  __$$_StoryInteractionsDtoCopyWithImpl(_$_StoryInteractionsDto _value,
      $Res Function(_$_StoryInteractionsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? storyId = null,
    Object? periodNumber = null,
    Object? liked = freezed,
    Object? seen = freezed,
    Object? seenAt = freezed,
  }) {
    return _then(_$_StoryInteractionsDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      storyId: null == storyId
          ? _value.storyId
          : storyId // ignore: cast_nullable_to_non_nullable
              as String,
      periodNumber: null == periodNumber
          ? _value.periodNumber
          : periodNumber // ignore: cast_nullable_to_non_nullable
              as int,
      liked: freezed == liked ? _value.liked! : liked,
      seen: freezed == seen ? _value.seen! : seen,
      seenAt: freezed == seenAt
          ? _value.seenAt
          : seenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoryInteractionsDto extends _StoryInteractionsDto {
  const _$_StoryInteractionsDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      required this.userId,
      required this.storyId,
      required this.periodNumber,
      this.liked = false,
      this.seen = false,
      @FirebaseNullableTimestampJsonConverter() this.seenAt})
      : super._();

  factory _$_StoryInteractionsDto.fromJson(Map<String, dynamic> json) =>
      _$$_StoryInteractionsDtoFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;
  @override
  final String userId;
  @override
  final String storyId;
  @override
  final int periodNumber;
  @override
  @JsonKey()
  final dynamic liked;
  @override
  @JsonKey()
  final dynamic seen;
  @override
  @FirebaseNullableTimestampJsonConverter()
  final DateTime? seenAt;

  @override
  String toString() {
    return 'StoryInteractionsDto(id: $id, userId: $userId, storyId: $storyId, periodNumber: $periodNumber, liked: $liked, seen: $seen, seenAt: $seenAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryInteractionsDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.storyId, storyId) || other.storyId == storyId) &&
            (identical(other.periodNumber, periodNumber) ||
                other.periodNumber == periodNumber) &&
            const DeepCollectionEquality().equals(other.liked, liked) &&
            const DeepCollectionEquality().equals(other.seen, seen) &&
            (identical(other.seenAt, seenAt) || other.seenAt == seenAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      storyId,
      periodNumber,
      const DeepCollectionEquality().hash(liked),
      const DeepCollectionEquality().hash(seen),
      seenAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoryInteractionsDtoCopyWith<_$_StoryInteractionsDto> get copyWith =>
      __$$_StoryInteractionsDtoCopyWithImpl<_$_StoryInteractionsDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryInteractionsDtoToJson(
      this,
    );
  }
}

abstract class _StoryInteractionsDto extends StoryInteractionsDto {
  const factory _StoryInteractionsDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) final String? id,
      required final String userId,
      required final String storyId,
      required final int periodNumber,
      final dynamic liked,
      final dynamic seen,
      @FirebaseNullableTimestampJsonConverter()
      final DateTime? seenAt}) = _$_StoryInteractionsDto;
  const _StoryInteractionsDto._() : super._();

  factory _StoryInteractionsDto.fromJson(Map<String, dynamic> json) =
      _$_StoryInteractionsDto.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  String get userId;
  @override
  String get storyId;
  @override
  int get periodNumber;
  @override
  dynamic get liked;
  @override
  dynamic get seen;
  @override
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get seenAt;
  @override
  @JsonKey(ignore: true)
  _$$_StoryInteractionsDtoCopyWith<_$_StoryInteractionsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

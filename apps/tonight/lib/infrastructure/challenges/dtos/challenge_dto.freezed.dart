// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChallengeDto _$ChallengeDtoFromJson(Map<String, dynamic> json) {
  return _ChallengeDto.fromJson(json);
}

/// @nodoc
mixin _$ChallengeDto {
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Key - place, value - tokens
  Map<int, int> get rewards => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get startDate => throw _privateConstructorUsedError;
  @FirebaseTimestampJsonConverter()
  DateTime get endDate => throw _privateConstructorUsedError;
  int get periodNumber => throw _privateConstructorUsedError;
  List<WinnerDto> get winners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengeDtoCopyWith<ChallengeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeDtoCopyWith<$Res> {
  factory $ChallengeDtoCopyWith(
          ChallengeDto value, $Res Function(ChallengeDto) then) =
      _$ChallengeDtoCopyWithImpl<$Res, ChallengeDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      @FirebaseTimestampJsonConverter() DateTime createdAt,
      String title,
      Map<int, int> rewards,
      @FirebaseTimestampJsonConverter() DateTime startDate,
      @FirebaseTimestampJsonConverter() DateTime endDate,
      int periodNumber,
      List<WinnerDto> winners});
}

/// @nodoc
class _$ChallengeDtoCopyWithImpl<$Res, $Val extends ChallengeDto>
    implements $ChallengeDtoCopyWith<$Res> {
  _$ChallengeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = null,
    Object? title = null,
    Object? rewards = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? periodNumber = null,
    Object? winners = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      periodNumber: null == periodNumber
          ? _value.periodNumber
          : periodNumber // ignore: cast_nullable_to_non_nullable
              as int,
      winners: null == winners
          ? _value.winners
          : winners // ignore: cast_nullable_to_non_nullable
              as List<WinnerDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChallengeDtoCopyWith<$Res>
    implements $ChallengeDtoCopyWith<$Res> {
  factory _$$_ChallengeDtoCopyWith(
          _$_ChallengeDto value, $Res Function(_$_ChallengeDto) then) =
      __$$_ChallengeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      @FirebaseTimestampJsonConverter() DateTime createdAt,
      String title,
      Map<int, int> rewards,
      @FirebaseTimestampJsonConverter() DateTime startDate,
      @FirebaseTimestampJsonConverter() DateTime endDate,
      int periodNumber,
      List<WinnerDto> winners});
}

/// @nodoc
class __$$_ChallengeDtoCopyWithImpl<$Res>
    extends _$ChallengeDtoCopyWithImpl<$Res, _$_ChallengeDto>
    implements _$$_ChallengeDtoCopyWith<$Res> {
  __$$_ChallengeDtoCopyWithImpl(
      _$_ChallengeDto _value, $Res Function(_$_ChallengeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = null,
    Object? title = null,
    Object? rewards = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? periodNumber = null,
    Object? winners = null,
  }) {
    return _then(_$_ChallengeDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      periodNumber: null == periodNumber
          ? _value.periodNumber
          : periodNumber // ignore: cast_nullable_to_non_nullable
              as int,
      winners: null == winners
          ? _value._winners
          : winners // ignore: cast_nullable_to_non_nullable
              as List<WinnerDto>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChallengeDto extends _ChallengeDto {
  const _$_ChallengeDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.id,
      @FirebaseTimestampJsonConverter() required this.createdAt,
      required this.title,
      required final Map<int, int> rewards,
      @FirebaseTimestampJsonConverter() required this.startDate,
      @FirebaseTimestampJsonConverter() required this.endDate,
      required this.periodNumber,
      final List<WinnerDto> winners = const []})
      : _rewards = rewards,
        _winners = winners,
        super._();

  factory _$_ChallengeDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChallengeDtoFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? id;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime createdAt;
  @override
  final String title;

  /// Key - place, value - tokens
  final Map<int, int> _rewards;

  /// Key - place, value - tokens
  @override
  Map<int, int> get rewards {
    if (_rewards is EqualUnmodifiableMapView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rewards);
  }

  @override
  @FirebaseTimestampJsonConverter()
  final DateTime startDate;
  @override
  @FirebaseTimestampJsonConverter()
  final DateTime endDate;
  @override
  final int periodNumber;
  final List<WinnerDto> _winners;
  @override
  @JsonKey()
  List<WinnerDto> get winners {
    if (_winners is EqualUnmodifiableListView) return _winners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_winners);
  }

  @override
  String toString() {
    return 'ChallengeDto(id: $id, createdAt: $createdAt, title: $title, rewards: $rewards, startDate: $startDate, endDate: $endDate, periodNumber: $periodNumber, winners: $winners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChallengeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.periodNumber, periodNumber) ||
                other.periodNumber == periodNumber) &&
            const DeepCollectionEquality().equals(other._winners, _winners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      title,
      const DeepCollectionEquality().hash(_rewards),
      startDate,
      endDate,
      periodNumber,
      const DeepCollectionEquality().hash(_winners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChallengeDtoCopyWith<_$_ChallengeDto> get copyWith =>
      __$$_ChallengeDtoCopyWithImpl<_$_ChallengeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChallengeDtoToJson(
      this,
    );
  }
}

abstract class _ChallengeDto extends ChallengeDto {
  const factory _ChallengeDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) final String? id,
      @FirebaseTimestampJsonConverter() required final DateTime createdAt,
      required final String title,
      required final Map<int, int> rewards,
      @FirebaseTimestampJsonConverter() required final DateTime startDate,
      @FirebaseTimestampJsonConverter() required final DateTime endDate,
      required final int periodNumber,
      final List<WinnerDto> winners}) = _$_ChallengeDto;
  const _ChallengeDto._() : super._();

  factory _ChallengeDto.fromJson(Map<String, dynamic> json) =
      _$_ChallengeDto.fromJson;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get createdAt;
  @override
  String get title;
  @override

  /// Key - place, value - tokens
  Map<int, int> get rewards;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get startDate;
  @override
  @FirebaseTimestampJsonConverter()
  DateTime get endDate;
  @override
  int get periodNumber;
  @override
  List<WinnerDto> get winners;
  @override
  @JsonKey(ignore: true)
  _$$_ChallengeDtoCopyWith<_$_ChallengeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

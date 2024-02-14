// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettingsDto _$AppSettingsDtoFromJson(Map<String, dynamic> json) {
  return _AppSettingsDto.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsDto {
  int get currentChallengePeriod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsDtoCopyWith<AppSettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsDtoCopyWith<$Res> {
  factory $AppSettingsDtoCopyWith(
          AppSettingsDto value, $Res Function(AppSettingsDto) then) =
      _$AppSettingsDtoCopyWithImpl<$Res, AppSettingsDto>;
  @useResult
  $Res call({int currentChallengePeriod});
}

/// @nodoc
class _$AppSettingsDtoCopyWithImpl<$Res, $Val extends AppSettingsDto>
    implements $AppSettingsDtoCopyWith<$Res> {
  _$AppSettingsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentChallengePeriod = null,
  }) {
    return _then(_value.copyWith(
      currentChallengePeriod: null == currentChallengePeriod
          ? _value.currentChallengePeriod
          : currentChallengePeriod // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppSettingsDtoCopyWith<$Res>
    implements $AppSettingsDtoCopyWith<$Res> {
  factory _$$_AppSettingsDtoCopyWith(
          _$_AppSettingsDto value, $Res Function(_$_AppSettingsDto) then) =
      __$$_AppSettingsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentChallengePeriod});
}

/// @nodoc
class __$$_AppSettingsDtoCopyWithImpl<$Res>
    extends _$AppSettingsDtoCopyWithImpl<$Res, _$_AppSettingsDto>
    implements _$$_AppSettingsDtoCopyWith<$Res> {
  __$$_AppSettingsDtoCopyWithImpl(
      _$_AppSettingsDto _value, $Res Function(_$_AppSettingsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentChallengePeriod = null,
  }) {
    return _then(_$_AppSettingsDto(
      currentChallengePeriod: null == currentChallengePeriod
          ? _value.currentChallengePeriod
          : currentChallengePeriod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppSettingsDto extends _AppSettingsDto {
  const _$_AppSettingsDto({required this.currentChallengePeriod}) : super._();

  factory _$_AppSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingsDtoFromJson(json);

  @override
  final int currentChallengePeriod;

  @override
  String toString() {
    return 'AppSettingsDto(currentChallengePeriod: $currentChallengePeriod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettingsDto &&
            (identical(other.currentChallengePeriod, currentChallengePeriod) ||
                other.currentChallengePeriod == currentChallengePeriod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentChallengePeriod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingsDtoCopyWith<_$_AppSettingsDto> get copyWith =>
      __$$_AppSettingsDtoCopyWithImpl<_$_AppSettingsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingsDtoToJson(
      this,
    );
  }
}

abstract class _AppSettingsDto extends AppSettingsDto {
  const factory _AppSettingsDto({required final int currentChallengePeriod}) =
      _$_AppSettingsDto;
  const _AppSettingsDto._() : super._();

  factory _AppSettingsDto.fromJson(Map<String, dynamic> json) =
      _$_AppSettingsDto.fromJson;

  @override
  int get currentChallengePeriod;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsDtoCopyWith<_$_AppSettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

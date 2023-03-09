// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppSettingsState {
  AppSettings get appSettings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSettingsStateCopyWith<AppSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsStateCopyWith<$Res> {
  factory $AppSettingsStateCopyWith(
          AppSettingsState value, $Res Function(AppSettingsState) then) =
      _$AppSettingsStateCopyWithImpl<$Res, AppSettingsState>;
  @useResult
  $Res call({AppSettings appSettings});

  $AppSettingsCopyWith<$Res> get appSettings;
}

/// @nodoc
class _$AppSettingsStateCopyWithImpl<$Res, $Val extends AppSettingsState>
    implements $AppSettingsStateCopyWith<$Res> {
  _$AppSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSettings = null,
  }) {
    return _then(_value.copyWith(
      appSettings: null == appSettings
          ? _value.appSettings
          : appSettings // ignore: cast_nullable_to_non_nullable
              as AppSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppSettingsCopyWith<$Res> get appSettings {
    return $AppSettingsCopyWith<$Res>(_value.appSettings, (value) {
      return _then(_value.copyWith(appSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppSettingsStateCopyWith<$Res>
    implements $AppSettingsStateCopyWith<$Res> {
  factory _$$_AppSettingsStateCopyWith(
          _$_AppSettingsState value, $Res Function(_$_AppSettingsState) then) =
      __$$_AppSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSettings appSettings});

  @override
  $AppSettingsCopyWith<$Res> get appSettings;
}

/// @nodoc
class __$$_AppSettingsStateCopyWithImpl<$Res>
    extends _$AppSettingsStateCopyWithImpl<$Res, _$_AppSettingsState>
    implements _$$_AppSettingsStateCopyWith<$Res> {
  __$$_AppSettingsStateCopyWithImpl(
      _$_AppSettingsState _value, $Res Function(_$_AppSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSettings = null,
  }) {
    return _then(_$_AppSettingsState(
      appSettings: null == appSettings
          ? _value.appSettings
          : appSettings // ignore: cast_nullable_to_non_nullable
              as AppSettings,
    ));
  }
}

/// @nodoc

class _$_AppSettingsState extends _AppSettingsState {
  _$_AppSettingsState({required this.appSettings}) : super._();

  @override
  final AppSettings appSettings;

  @override
  String toString() {
    return 'AppSettingsState(appSettings: $appSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettingsState &&
            (identical(other.appSettings, appSettings) ||
                other.appSettings == appSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingsStateCopyWith<_$_AppSettingsState> get copyWith =>
      __$$_AppSettingsStateCopyWithImpl<_$_AppSettingsState>(this, _$identity);
}

abstract class _AppSettingsState extends AppSettingsState {
  factory _AppSettingsState({required final AppSettings appSettings}) =
      _$_AppSettingsState;
  _AppSettingsState._() : super._();

  @override
  AppSettings get appSettings;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsStateCopyWith<_$_AppSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

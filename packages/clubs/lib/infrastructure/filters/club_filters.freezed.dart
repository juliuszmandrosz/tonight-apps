// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_filters_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubFilters {
  String get phrase => throw _privateConstructorUsedError;
  ClubFilterSettings get clubFilterSettings =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubFiltersCopyWith<ClubFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFiltersCopyWith<$Res> {
  factory $ClubFiltersCopyWith(
          ClubFilters value, $Res Function(ClubFilters) then) =
      _$ClubFiltersCopyWithImpl<$Res>;
  $Res call({String phrase, ClubFilterSettings clubFilterSettings});

  $ClubFilterSettingsCopyWith<$Res> get clubFilterSettings;
}

/// @nodoc
class _$ClubFiltersCopyWithImpl<$Res> implements $ClubFiltersCopyWith<$Res> {
  _$ClubFiltersCopyWithImpl(this._value, this._then);

  final ClubFilters _value;
  // ignore: unused_field
  final $Res Function(ClubFilters) _then;

  @override
  $Res call({
    Object? phrase = freezed,
    Object? clubFilterSettings = freezed,
  }) {
    return _then(_value.copyWith(
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      clubFilterSettings: clubFilterSettings == freezed
          ? _value.clubFilterSettings
          : clubFilterSettings // ignore: cast_nullable_to_non_nullable
              as ClubFilterSettings,
    ));
  }

  @override
  $ClubFilterSettingsCopyWith<$Res> get clubFilterSettings {
    return $ClubFilterSettingsCopyWith<$Res>(_value.clubFilterSettings,
        (value) {
      return _then(_value.copyWith(clubFilterSettings: value));
    });
  }
}

/// @nodoc
abstract class _$$_ClubFilterCopyWith<$Res>
    implements $ClubFiltersCopyWith<$Res> {
  factory _$$_ClubFilterCopyWith(
          _$_ClubFilter value, $Res Function(_$_ClubFilter) then) =
      __$$_ClubFilterCopyWithImpl<$Res>;
  @override
  $Res call({String phrase, ClubFilterSettings clubFilterSettings});

  @override
  $ClubFilterSettingsCopyWith<$Res> get clubFilterSettings;
}

/// @nodoc
class __$$_ClubFilterCopyWithImpl<$Res> extends _$ClubFiltersCopyWithImpl<$Res>
    implements _$$_ClubFilterCopyWith<$Res> {
  __$$_ClubFilterCopyWithImpl(
      _$_ClubFilter _value, $Res Function(_$_ClubFilter) _then)
      : super(_value, (v) => _then(v as _$_ClubFilter));

  @override
  _$_ClubFilter get _value => super._value as _$_ClubFilter;

  @override
  $Res call({
    Object? phrase = freezed,
    Object? clubFilterSettings = freezed,
  }) {
    return _then(_$_ClubFilter(
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      clubFilterSettings: clubFilterSettings == freezed
          ? _value.clubFilterSettings
          : clubFilterSettings // ignore: cast_nullable_to_non_nullable
              as ClubFilterSettings,
    ));
  }
}

/// @nodoc

class _$_ClubFilter extends _ClubFilter {
  _$_ClubFilter({required this.phrase, required this.clubFilterSettings})
      : super._();

  @override
  final String phrase;
  @override
  final ClubFilterSettings clubFilterSettings;

  @override
  String toString() {
    return 'ClubFilters(phrase: $phrase, clubFilterSettings: $clubFilterSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubFilter &&
            const DeepCollectionEquality().equals(other.phrase, phrase) &&
            const DeepCollectionEquality()
                .equals(other.clubFilterSettings, clubFilterSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phrase),
      const DeepCollectionEquality().hash(clubFilterSettings));

  @JsonKey(ignore: true)
  @override
  _$$_ClubFilterCopyWith<_$_ClubFilter> get copyWith =>
      __$$_ClubFilterCopyWithImpl<_$_ClubFilter>(this, _$identity);
}

abstract class _ClubFilter extends ClubFilters {
  factory _ClubFilter(
      {required final String phrase,
      required final ClubFilterSettings clubFilterSettings}) = _$_ClubFilter;
  _ClubFilter._() : super._();

  @override
  String get phrase => throw _privateConstructorUsedError;
  @override
  ClubFilterSettings get clubFilterSettings =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ClubFilterCopyWith<_$_ClubFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

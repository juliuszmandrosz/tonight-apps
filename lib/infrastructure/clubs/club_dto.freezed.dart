// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClubDto _$ClubDtoFromJson(Map<String, dynamic> json) {
  return _ClubDto.fromJson(json);
}

/// @nodoc
class _$ClubDtoTearOff {
  const _$ClubDtoTearOff();

  _ClubDto call(
      {required String clubName,
      required String aboutUs,
      required String phoneNumber}) {
    return _ClubDto(
      clubName: clubName,
      aboutUs: aboutUs,
      phoneNumber: phoneNumber,
    );
  }

  ClubDto fromJson(Map<String, Object?> json) {
    return ClubDto.fromJson(json);
  }
}

/// @nodoc
const $ClubDto = _$ClubDtoTearOff();

/// @nodoc
mixin _$ClubDto {
  String get clubName =>
      throw _privateConstructorUsedError; //TODO: Need to research how to neatly store images on cloud storage
//  required File? clubImage,
  String get aboutUs => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubDtoCopyWith<ClubDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubDtoCopyWith<$Res> {
  factory $ClubDtoCopyWith(ClubDto value, $Res Function(ClubDto) then) =
      _$ClubDtoCopyWithImpl<$Res>;
  $Res call({String clubName, String aboutUs, String phoneNumber});
}

/// @nodoc
class _$ClubDtoCopyWithImpl<$Res> implements $ClubDtoCopyWith<$Res> {
  _$ClubDtoCopyWithImpl(this._value, this._then);

  final ClubDto _value;
  // ignore: unused_field
  final $Res Function(ClubDto) _then;

  @override
  $Res call({
    Object? clubName = freezed,
    Object? aboutUs = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      aboutUs: aboutUs == freezed
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ClubDtoCopyWith<$Res> implements $ClubDtoCopyWith<$Res> {
  factory _$ClubDtoCopyWith(_ClubDto value, $Res Function(_ClubDto) then) =
      __$ClubDtoCopyWithImpl<$Res>;
  @override
  $Res call({String clubName, String aboutUs, String phoneNumber});
}

/// @nodoc
class __$ClubDtoCopyWithImpl<$Res> extends _$ClubDtoCopyWithImpl<$Res>
    implements _$ClubDtoCopyWith<$Res> {
  __$ClubDtoCopyWithImpl(_ClubDto _value, $Res Function(_ClubDto) _then)
      : super(_value, (v) => _then(v as _ClubDto));

  @override
  _ClubDto get _value => super._value as _ClubDto;

  @override
  $Res call({
    Object? clubName = freezed,
    Object? aboutUs = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_ClubDto(
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      aboutUs: aboutUs == freezed
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClubDto extends _ClubDto {
  const _$_ClubDto(
      {required this.clubName,
      required this.aboutUs,
      required this.phoneNumber})
      : super._();

  factory _$_ClubDto.fromJson(Map<String, dynamic> json) =>
      _$$_ClubDtoFromJson(json);

  @override
  final String clubName;
  @override //TODO: Need to research how to neatly store images on cloud storage
//  required File? clubImage,
  final String aboutUs;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ClubDto(clubName: $clubName, aboutUs: $aboutUs, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClubDto &&
            const DeepCollectionEquality().equals(other.clubName, clubName) &&
            const DeepCollectionEquality().equals(other.aboutUs, aboutUs) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clubName),
      const DeepCollectionEquality().hash(aboutUs),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$ClubDtoCopyWith<_ClubDto> get copyWith =>
      __$ClubDtoCopyWithImpl<_ClubDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubDtoToJson(this);
  }
}

abstract class _ClubDto extends ClubDto {
  const factory _ClubDto(
      {required String clubName,
      required String aboutUs,
      required String phoneNumber}) = _$_ClubDto;
  const _ClubDto._() : super._();

  factory _ClubDto.fromJson(Map<String, dynamic> json) = _$_ClubDto.fromJson;

  @override
  String get clubName;
  @override //TODO: Need to research how to neatly store images on cloud storage
//  required File? clubImage,
  String get aboutUs;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$ClubDtoCopyWith<_ClubDto> get copyWith =>
      throw _privateConstructorUsedError;
}

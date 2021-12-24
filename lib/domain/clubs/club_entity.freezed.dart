// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClubTearOff {
  const _$ClubTearOff();

  _Club call(
      {required ClubName clubName,
      required AboutUs aboutUs,
      required PhoneNumber phoneNumber}) {
    return _Club(
      clubName: clubName,
      aboutUs: aboutUs,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
const $Club = _$ClubTearOff();

/// @nodoc
mixin _$Club {
  ClubName get clubName =>
      throw _privateConstructorUsedError; // required ClubImage clubImage,
  AboutUs get aboutUs => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubCopyWith<Club> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubCopyWith<$Res> {
  factory $ClubCopyWith(Club value, $Res Function(Club) then) =
      _$ClubCopyWithImpl<$Res>;
  $Res call({ClubName clubName, AboutUs aboutUs, PhoneNumber phoneNumber});
}

/// @nodoc
class _$ClubCopyWithImpl<$Res> implements $ClubCopyWith<$Res> {
  _$ClubCopyWithImpl(this._value, this._then);

  final Club _value;
  // ignore: unused_field
  final $Res Function(Club) _then;

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
              as ClubName,
      aboutUs: aboutUs == freezed
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as AboutUs,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc
abstract class _$ClubCopyWith<$Res> implements $ClubCopyWith<$Res> {
  factory _$ClubCopyWith(_Club value, $Res Function(_Club) then) =
      __$ClubCopyWithImpl<$Res>;
  @override
  $Res call({ClubName clubName, AboutUs aboutUs, PhoneNumber phoneNumber});
}

/// @nodoc
class __$ClubCopyWithImpl<$Res> extends _$ClubCopyWithImpl<$Res>
    implements _$ClubCopyWith<$Res> {
  __$ClubCopyWithImpl(_Club _value, $Res Function(_Club) _then)
      : super(_value, (v) => _then(v as _Club));

  @override
  _Club get _value => super._value as _Club;

  @override
  $Res call({
    Object? clubName = freezed,
    Object? aboutUs = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_Club(
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as ClubName,
      aboutUs: aboutUs == freezed
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as AboutUs,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$_Club extends _Club {
  const _$_Club(
      {required this.clubName,
      required this.aboutUs,
      required this.phoneNumber})
      : super._();

  @override
  final ClubName clubName;
  @override // required ClubImage clubImage,
  final AboutUs aboutUs;
  @override
  final PhoneNumber phoneNumber;

  @override
  String toString() {
    return 'Club(clubName: $clubName, aboutUs: $aboutUs, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Club &&
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
  _$ClubCopyWith<_Club> get copyWith =>
      __$ClubCopyWithImpl<_Club>(this, _$identity);
}

abstract class _Club extends Club {
  const factory _Club(
      {required ClubName clubName,
      required AboutUs aboutUs,
      required PhoneNumber phoneNumber}) = _$_Club;
  const _Club._() : super._();

  @override
  ClubName get clubName;
  @override // required ClubImage clubImage,
  AboutUs get aboutUs;
  @override
  PhoneNumber get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$ClubCopyWith<_Club> get copyWith => throw _privateConstructorUsedError;
}

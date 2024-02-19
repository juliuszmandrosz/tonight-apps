// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_app_links_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAppLinksDto _$UserAppLinksDtoFromJson(Map<String, dynamic> json) {
  return _UserAppLinksDto.fromJson(json);
}

/// @nodoc
mixin _$UserAppLinksDto {
  String get facebook => throw _privateConstructorUsedError;
  String get instagram => throw _privateConstructorUsedError;
  String get tikTok => throw _privateConstructorUsedError;
  String get discord => throw _privateConstructorUsedError;
  String get privacyPolicy => throw _privateConstructorUsedError;
  String get termsOfService => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAppLinksDtoCopyWith<UserAppLinksDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAppLinksDtoCopyWith<$Res> {
  factory $UserAppLinksDtoCopyWith(
          UserAppLinksDto value, $Res Function(UserAppLinksDto) then) =
      _$UserAppLinksDtoCopyWithImpl<$Res, UserAppLinksDto>;
  @useResult
  $Res call(
      {String facebook,
      String instagram,
      String tikTok,
      String discord,
      String privacyPolicy,
      String termsOfService});
}

/// @nodoc
class _$UserAppLinksDtoCopyWithImpl<$Res, $Val extends UserAppLinksDto>
    implements $UserAppLinksDtoCopyWith<$Res> {
  _$UserAppLinksDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facebook = null,
    Object? instagram = null,
    Object? tikTok = null,
    Object? discord = null,
    Object? privacyPolicy = null,
    Object? termsOfService = null,
  }) {
    return _then(_value.copyWith(
      facebook: null == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String,
      instagram: null == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      tikTok: null == tikTok
          ? _value.tikTok
          : tikTok // ignore: cast_nullable_to_non_nullable
              as String,
      discord: null == discord
          ? _value.discord
          : discord // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicy: null == privacyPolicy
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as String,
      termsOfService: null == termsOfService
          ? _value.termsOfService
          : termsOfService // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAppLinksDtoImplCopyWith<$Res>
    implements $UserAppLinksDtoCopyWith<$Res> {
  factory _$$UserAppLinksDtoImplCopyWith(_$UserAppLinksDtoImpl value,
          $Res Function(_$UserAppLinksDtoImpl) then) =
      __$$UserAppLinksDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String facebook,
      String instagram,
      String tikTok,
      String discord,
      String privacyPolicy,
      String termsOfService});
}

/// @nodoc
class __$$UserAppLinksDtoImplCopyWithImpl<$Res>
    extends _$UserAppLinksDtoCopyWithImpl<$Res, _$UserAppLinksDtoImpl>
    implements _$$UserAppLinksDtoImplCopyWith<$Res> {
  __$$UserAppLinksDtoImplCopyWithImpl(
      _$UserAppLinksDtoImpl _value, $Res Function(_$UserAppLinksDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facebook = null,
    Object? instagram = null,
    Object? tikTok = null,
    Object? discord = null,
    Object? privacyPolicy = null,
    Object? termsOfService = null,
  }) {
    return _then(_$UserAppLinksDtoImpl(
      facebook: null == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String,
      instagram: null == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      tikTok: null == tikTok
          ? _value.tikTok
          : tikTok // ignore: cast_nullable_to_non_nullable
              as String,
      discord: null == discord
          ? _value.discord
          : discord // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicy: null == privacyPolicy
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as String,
      termsOfService: null == termsOfService
          ? _value.termsOfService
          : termsOfService // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAppLinksDtoImpl extends _UserAppLinksDto {
  const _$UserAppLinksDtoImpl(
      {required this.facebook,
      required this.instagram,
      required this.tikTok,
      required this.discord,
      required this.privacyPolicy,
      required this.termsOfService})
      : super._();

  factory _$UserAppLinksDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAppLinksDtoImplFromJson(json);

  @override
  final String facebook;
  @override
  final String instagram;
  @override
  final String tikTok;
  @override
  final String discord;
  @override
  final String privacyPolicy;
  @override
  final String termsOfService;

  @override
  String toString() {
    return 'UserAppLinksDto(facebook: $facebook, instagram: $instagram, tikTok: $tikTok, discord: $discord, privacyPolicy: $privacyPolicy, termsOfService: $termsOfService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAppLinksDtoImpl &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.tikTok, tikTok) || other.tikTok == tikTok) &&
            (identical(other.discord, discord) || other.discord == discord) &&
            (identical(other.privacyPolicy, privacyPolicy) ||
                other.privacyPolicy == privacyPolicy) &&
            (identical(other.termsOfService, termsOfService) ||
                other.termsOfService == termsOfService));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, facebook, instagram, tikTok,
      discord, privacyPolicy, termsOfService);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAppLinksDtoImplCopyWith<_$UserAppLinksDtoImpl> get copyWith =>
      __$$UserAppLinksDtoImplCopyWithImpl<_$UserAppLinksDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAppLinksDtoImplToJson(
      this,
    );
  }
}

abstract class _UserAppLinksDto extends UserAppLinksDto {
  const factory _UserAppLinksDto(
      {required final String facebook,
      required final String instagram,
      required final String tikTok,
      required final String discord,
      required final String privacyPolicy,
      required final String termsOfService}) = _$UserAppLinksDtoImpl;
  const _UserAppLinksDto._() : super._();

  factory _UserAppLinksDto.fromJson(Map<String, dynamic> json) =
      _$UserAppLinksDtoImpl.fromJson;

  @override
  String get facebook;
  @override
  String get instagram;
  @override
  String get tikTok;
  @override
  String get discord;
  @override
  String get privacyPolicy;
  @override
  String get termsOfService;
  @override
  @JsonKey(ignore: true)
  _$$UserAppLinksDtoImplCopyWith<_$UserAppLinksDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

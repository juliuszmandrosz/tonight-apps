// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_picture_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateProfilePictureState {
  FormzStatus get status => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  Option<Uint8List> get profilePicture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfilePictureStateCopyWith<UpdateProfilePictureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfilePictureStateCopyWith<$Res> {
  factory $UpdateProfilePictureStateCopyWith(UpdateProfilePictureState value,
          $Res Function(UpdateProfilePictureState) then) =
      _$UpdateProfilePictureStateCopyWithImpl<$Res, UpdateProfilePictureState>;
  @useResult
  $Res call(
      {FormzStatus status,
      Option<String> errorMessage,
      Option<Uint8List> profilePicture});
}

/// @nodoc
class _$UpdateProfilePictureStateCopyWithImpl<$Res,
        $Val extends UpdateProfilePictureState>
    implements $UpdateProfilePictureStateCopyWith<$Res> {
  _$UpdateProfilePictureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? profilePicture = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as Option<Uint8List>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateProfilePictureStateCopyWith<$Res>
    implements $UpdateProfilePictureStateCopyWith<$Res> {
  factory _$$_UpdateProfilePictureStateCopyWith(
          _$_UpdateProfilePictureState value,
          $Res Function(_$_UpdateProfilePictureState) then) =
      __$$_UpdateProfilePictureStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status,
      Option<String> errorMessage,
      Option<Uint8List> profilePicture});
}

/// @nodoc
class __$$_UpdateProfilePictureStateCopyWithImpl<$Res>
    extends _$UpdateProfilePictureStateCopyWithImpl<$Res,
        _$_UpdateProfilePictureState>
    implements _$$_UpdateProfilePictureStateCopyWith<$Res> {
  __$$_UpdateProfilePictureStateCopyWithImpl(
      _$_UpdateProfilePictureState _value,
      $Res Function(_$_UpdateProfilePictureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? profilePicture = null,
  }) {
    return _then(_$_UpdateProfilePictureState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as Option<Uint8List>,
    ));
  }
}

/// @nodoc

class _$_UpdateProfilePictureState implements _UpdateProfilePictureState {
  const _$_UpdateProfilePictureState(
      {required this.status,
      required this.errorMessage,
      required this.profilePicture});

  @override
  final FormzStatus status;
  @override
  final Option<String> errorMessage;
  @override
  final Option<Uint8List> profilePicture;

  @override
  String toString() {
    return 'UpdateProfilePictureState(status: $status, errorMessage: $errorMessage, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfilePictureState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, errorMessage, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfilePictureStateCopyWith<_$_UpdateProfilePictureState>
      get copyWith => __$$_UpdateProfilePictureStateCopyWithImpl<
          _$_UpdateProfilePictureState>(this, _$identity);
}

abstract class _UpdateProfilePictureState implements UpdateProfilePictureState {
  const factory _UpdateProfilePictureState(
          {required final FormzStatus status,
          required final Option<String> errorMessage,
          required final Option<Uint8List> profilePicture}) =
      _$_UpdateProfilePictureState;

  @override
  FormzStatus get status;
  @override
  Option<String> get errorMessage;
  @override
  Option<Uint8List> get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProfilePictureStateCopyWith<_$_UpdateProfilePictureState>
      get copyWith => throw _privateConstructorUsedError;
}

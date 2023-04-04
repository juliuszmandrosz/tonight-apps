// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_review_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventReviewState {
  double get reviewValue => throw _privateConstructorUsedError;
  ReviewContentInput get reviewContent => throw _privateConstructorUsedError;
  FormzStatus get submittingStatus => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  Option<UserProfile> get userProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventReviewStateCopyWith<EventReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventReviewStateCopyWith<$Res> {
  factory $EventReviewStateCopyWith(
          EventReviewState value, $Res Function(EventReviewState) then) =
      _$EventReviewStateCopyWithImpl<$Res, EventReviewState>;
  @useResult
  $Res call(
      {double reviewValue,
      ReviewContentInput reviewContent,
      FormzStatus submittingStatus,
      CubitStatus status,
      Option<String> errorMessage,
      Option<UserProfile> userProfile});
}

/// @nodoc
class _$EventReviewStateCopyWithImpl<$Res, $Val extends EventReviewState>
    implements $EventReviewStateCopyWith<$Res> {
  _$EventReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewValue = null,
    Object? reviewContent = null,
    Object? submittingStatus = null,
    Object? status = null,
    Object? errorMessage = null,
    Object? userProfile = null,
  }) {
    return _then(_value.copyWith(
      reviewValue: null == reviewValue
          ? _value.reviewValue
          : reviewValue // ignore: cast_nullable_to_non_nullable
              as double,
      reviewContent: null == reviewContent
          ? _value.reviewContent
          : reviewContent // ignore: cast_nullable_to_non_nullable
              as ReviewContentInput,
      submittingStatus: null == submittingStatus
          ? _value.submittingStatus
          : submittingStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as Option<UserProfile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventReviewStateCopyWith<$Res>
    implements $EventReviewStateCopyWith<$Res> {
  factory _$$_EventReviewStateCopyWith(
          _$_EventReviewState value, $Res Function(_$_EventReviewState) then) =
      __$$_EventReviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double reviewValue,
      ReviewContentInput reviewContent,
      FormzStatus submittingStatus,
      CubitStatus status,
      Option<String> errorMessage,
      Option<UserProfile> userProfile});
}

/// @nodoc
class __$$_EventReviewStateCopyWithImpl<$Res>
    extends _$EventReviewStateCopyWithImpl<$Res, _$_EventReviewState>
    implements _$$_EventReviewStateCopyWith<$Res> {
  __$$_EventReviewStateCopyWithImpl(
      _$_EventReviewState _value, $Res Function(_$_EventReviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewValue = null,
    Object? reviewContent = null,
    Object? submittingStatus = null,
    Object? status = null,
    Object? errorMessage = null,
    Object? userProfile = null,
  }) {
    return _then(_$_EventReviewState(
      reviewValue: null == reviewValue
          ? _value.reviewValue
          : reviewValue // ignore: cast_nullable_to_non_nullable
              as double,
      reviewContent: null == reviewContent
          ? _value.reviewContent
          : reviewContent // ignore: cast_nullable_to_non_nullable
              as ReviewContentInput,
      submittingStatus: null == submittingStatus
          ? _value.submittingStatus
          : submittingStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as Option<UserProfile>,
    ));
  }
}

/// @nodoc

class _$_EventReviewState extends _EventReviewState {
  const _$_EventReviewState(
      {required this.reviewValue,
      required this.reviewContent,
      required this.submittingStatus,
      required this.status,
      required this.errorMessage,
      required this.userProfile})
      : super._();

  @override
  final double reviewValue;
  @override
  final ReviewContentInput reviewContent;
  @override
  final FormzStatus submittingStatus;
  @override
  final CubitStatus status;
  @override
  final Option<String> errorMessage;
  @override
  final Option<UserProfile> userProfile;

  @override
  String toString() {
    return 'EventReviewState(reviewValue: $reviewValue, reviewContent: $reviewContent, submittingStatus: $submittingStatus, status: $status, errorMessage: $errorMessage, userProfile: $userProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventReviewState &&
            (identical(other.reviewValue, reviewValue) ||
                other.reviewValue == reviewValue) &&
            (identical(other.reviewContent, reviewContent) ||
                other.reviewContent == reviewContent) &&
            (identical(other.submittingStatus, submittingStatus) ||
                other.submittingStatus == submittingStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewValue, reviewContent,
      submittingStatus, status, errorMessage, userProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventReviewStateCopyWith<_$_EventReviewState> get copyWith =>
      __$$_EventReviewStateCopyWithImpl<_$_EventReviewState>(this, _$identity);
}

abstract class _EventReviewState extends EventReviewState {
  const factory _EventReviewState(
      {required final double reviewValue,
      required final ReviewContentInput reviewContent,
      required final FormzStatus submittingStatus,
      required final CubitStatus status,
      required final Option<String> errorMessage,
      required final Option<UserProfile> userProfile}) = _$_EventReviewState;
  const _EventReviewState._() : super._();

  @override
  double get reviewValue;
  @override
  ReviewContentInput get reviewContent;
  @override
  FormzStatus get submittingStatus;
  @override
  CubitStatus get status;
  @override
  Option<String> get errorMessage;
  @override
  Option<UserProfile> get userProfile;
  @override
  @JsonKey(ignore: true)
  _$$_EventReviewStateCopyWith<_$_EventReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

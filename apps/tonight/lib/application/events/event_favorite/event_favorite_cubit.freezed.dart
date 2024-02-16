// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventFavoriteState {
  List<Event> get favoriteEvents => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  bool get isChangingFavoriteStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventFavoriteStateCopyWith<EventFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFavoriteStateCopyWith<$Res> {
  factory $EventFavoriteStateCopyWith(
          EventFavoriteState value, $Res Function(EventFavoriteState) then) =
      _$EventFavoriteStateCopyWithImpl<$Res, EventFavoriteState>;
  @useResult
  $Res call(
      {List<Event> favoriteEvents,
      CubitStatus status,
      bool isChangingFavoriteStatus,
      Option<String> snackbarMessage});
}

/// @nodoc
class _$EventFavoriteStateCopyWithImpl<$Res, $Val extends EventFavoriteState>
    implements $EventFavoriteStateCopyWith<$Res> {
  _$EventFavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteEvents = null,
    Object? status = null,
    Object? isChangingFavoriteStatus = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_value.copyWith(
      favoriteEvents: null == favoriteEvents
          ? _value.favoriteEvents
          : favoriteEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      isChangingFavoriteStatus: null == isChangingFavoriteStatus
          ? _value.isChangingFavoriteStatus
          : isChangingFavoriteStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventFavoriteStateImplCopyWith<$Res>
    implements $EventFavoriteStateCopyWith<$Res> {
  factory _$$EventFavoriteStateImplCopyWith(_$EventFavoriteStateImpl value,
          $Res Function(_$EventFavoriteStateImpl) then) =
      __$$EventFavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Event> favoriteEvents,
      CubitStatus status,
      bool isChangingFavoriteStatus,
      Option<String> snackbarMessage});
}

/// @nodoc
class __$$EventFavoriteStateImplCopyWithImpl<$Res>
    extends _$EventFavoriteStateCopyWithImpl<$Res, _$EventFavoriteStateImpl>
    implements _$$EventFavoriteStateImplCopyWith<$Res> {
  __$$EventFavoriteStateImplCopyWithImpl(_$EventFavoriteStateImpl _value,
      $Res Function(_$EventFavoriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteEvents = null,
    Object? status = null,
    Object? isChangingFavoriteStatus = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$EventFavoriteStateImpl(
      favoriteEvents: null == favoriteEvents
          ? _value._favoriteEvents
          : favoriteEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      isChangingFavoriteStatus: null == isChangingFavoriteStatus
          ? _value.isChangingFavoriteStatus
          : isChangingFavoriteStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$EventFavoriteStateImpl implements _EventFavoriteState {
  const _$EventFavoriteStateImpl(
      {required final List<Event> favoriteEvents,
      required this.status,
      required this.isChangingFavoriteStatus,
      required this.snackbarMessage})
      : _favoriteEvents = favoriteEvents;

  final List<Event> _favoriteEvents;
  @override
  List<Event> get favoriteEvents {
    if (_favoriteEvents is EqualUnmodifiableListView) return _favoriteEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteEvents);
  }

  @override
  final CubitStatus status;
  @override
  final bool isChangingFavoriteStatus;
  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'EventFavoriteState(favoriteEvents: $favoriteEvents, status: $status, isChangingFavoriteStatus: $isChangingFavoriteStatus, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventFavoriteStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favoriteEvents, _favoriteEvents) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(
                    other.isChangingFavoriteStatus, isChangingFavoriteStatus) ||
                other.isChangingFavoriteStatus == isChangingFavoriteStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoriteEvents),
      status,
      isChangingFavoriteStatus,
      snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventFavoriteStateImplCopyWith<_$EventFavoriteStateImpl> get copyWith =>
      __$$EventFavoriteStateImplCopyWithImpl<_$EventFavoriteStateImpl>(
          this, _$identity);
}

abstract class _EventFavoriteState implements EventFavoriteState {
  const factory _EventFavoriteState(
          {required final List<Event> favoriteEvents,
          required final CubitStatus status,
          required final bool isChangingFavoriteStatus,
          required final Option<String> snackbarMessage}) =
      _$EventFavoriteStateImpl;

  @override
  List<Event> get favoriteEvents;
  @override
  CubitStatus get status;
  @override
  bool get isChangingFavoriteStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$EventFavoriteStateImplCopyWith<_$EventFavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

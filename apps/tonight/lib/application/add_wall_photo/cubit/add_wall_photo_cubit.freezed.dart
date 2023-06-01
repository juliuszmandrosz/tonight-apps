// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_wall_photo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddWallPhotoState {
  Option<File> get photo => throw _privateConstructorUsedError;
  bool get isSelfie => throw _privateConstructorUsedError;
  List<WallPhotoVenue> get nearestVenues => throw _privateConstructorUsedError;
  List<Event> get liveEventsFromSelectedClub =>
      throw _privateConstructorUsedError;
  Option<LatLng> get userLocation => throw _privateConstructorUsedError;
  CubitStatus get addPhotoStatus => throw _privateConstructorUsedError;
  CubitStatus get fetchNearestClubStatus => throw _privateConstructorUsedError;
  CubitStatus get fetchLiveEventsStatus => throw _privateConstructorUsedError;
  CubitStatus get sharePhotoStatus => throw _privateConstructorUsedError;
  CubitStatus get processPhotoStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  Option<WallPhotoVenue> get selectedVenue =>
      throw _privateConstructorUsedError;
  Option<Event> get selectedEvent => throw _privateConstructorUsedError;
  Option<Event> get initialEvent => throw _privateConstructorUsedError;
  Option<TimeTask> get timeTask => throw _privateConstructorUsedError;
  Option<WallPhoto> get result => throw _privateConstructorUsedError;
  Option<Future<Option<Uint8List>>> get processPhotoTask =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddWallPhotoStateCopyWith<AddWallPhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddWallPhotoStateCopyWith<$Res> {
  factory $AddWallPhotoStateCopyWith(
          AddWallPhotoState value, $Res Function(AddWallPhotoState) then) =
      _$AddWallPhotoStateCopyWithImpl<$Res, AddWallPhotoState>;
  @useResult
  $Res call(
      {Option<File> photo,
      bool isSelfie,
      List<WallPhotoVenue> nearestVenues,
      List<Event> liveEventsFromSelectedClub,
      Option<LatLng> userLocation,
      CubitStatus addPhotoStatus,
      CubitStatus fetchNearestClubStatus,
      CubitStatus fetchLiveEventsStatus,
      CubitStatus sharePhotoStatus,
      CubitStatus processPhotoStatus,
      Option<String> snackbarMessage,
      Option<WallPhotoVenue> selectedVenue,
      Option<Event> selectedEvent,
      Option<Event> initialEvent,
      Option<TimeTask> timeTask,
      Option<WallPhoto> result,
      Option<Future<Option<Uint8List>>> processPhotoTask});
}

/// @nodoc
class _$AddWallPhotoStateCopyWithImpl<$Res, $Val extends AddWallPhotoState>
    implements $AddWallPhotoStateCopyWith<$Res> {
  _$AddWallPhotoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? isSelfie = null,
    Object? nearestVenues = null,
    Object? liveEventsFromSelectedClub = null,
    Object? userLocation = null,
    Object? addPhotoStatus = null,
    Object? fetchNearestClubStatus = null,
    Object? fetchLiveEventsStatus = null,
    Object? sharePhotoStatus = null,
    Object? processPhotoStatus = null,
    Object? snackbarMessage = null,
    Object? selectedVenue = null,
    Object? selectedEvent = null,
    Object? initialEvent = null,
    Object? timeTask = null,
    Object? result = null,
    Object? processPhotoTask = null,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Option<File>,
      isSelfie: null == isSelfie
          ? _value.isSelfie
          : isSelfie // ignore: cast_nullable_to_non_nullable
              as bool,
      nearestVenues: null == nearestVenues
          ? _value.nearestVenues
          : nearestVenues // ignore: cast_nullable_to_non_nullable
              as List<WallPhotoVenue>,
      liveEventsFromSelectedClub: null == liveEventsFromSelectedClub
          ? _value.liveEventsFromSelectedClub
          : liveEventsFromSelectedClub // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      addPhotoStatus: null == addPhotoStatus
          ? _value.addPhotoStatus
          : addPhotoStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchNearestClubStatus: null == fetchNearestClubStatus
          ? _value.fetchNearestClubStatus
          : fetchNearestClubStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchLiveEventsStatus: null == fetchLiveEventsStatus
          ? _value.fetchLiveEventsStatus
          : fetchLiveEventsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      sharePhotoStatus: null == sharePhotoStatus
          ? _value.sharePhotoStatus
          : sharePhotoStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      processPhotoStatus: null == processPhotoStatus
          ? _value.processPhotoStatus
          : processPhotoStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      selectedVenue: null == selectedVenue
          ? _value.selectedVenue
          : selectedVenue // ignore: cast_nullable_to_non_nullable
              as Option<WallPhotoVenue>,
      selectedEvent: null == selectedEvent
          ? _value.selectedEvent
          : selectedEvent // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      initialEvent: null == initialEvent
          ? _value.initialEvent
          : initialEvent // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      timeTask: null == timeTask
          ? _value.timeTask
          : timeTask // ignore: cast_nullable_to_non_nullable
              as Option<TimeTask>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Option<WallPhoto>,
      processPhotoTask: null == processPhotoTask
          ? _value.processPhotoTask
          : processPhotoTask // ignore: cast_nullable_to_non_nullable
              as Option<Future<Option<Uint8List>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddWallPhotoStateCopyWith<$Res>
    implements $AddWallPhotoStateCopyWith<$Res> {
  factory _$$_AddWallPhotoStateCopyWith(_$_AddWallPhotoState value,
          $Res Function(_$_AddWallPhotoState) then) =
      __$$_AddWallPhotoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<File> photo,
      bool isSelfie,
      List<WallPhotoVenue> nearestVenues,
      List<Event> liveEventsFromSelectedClub,
      Option<LatLng> userLocation,
      CubitStatus addPhotoStatus,
      CubitStatus fetchNearestClubStatus,
      CubitStatus fetchLiveEventsStatus,
      CubitStatus sharePhotoStatus,
      CubitStatus processPhotoStatus,
      Option<String> snackbarMessage,
      Option<WallPhotoVenue> selectedVenue,
      Option<Event> selectedEvent,
      Option<Event> initialEvent,
      Option<TimeTask> timeTask,
      Option<WallPhoto> result,
      Option<Future<Option<Uint8List>>> processPhotoTask});
}

/// @nodoc
class __$$_AddWallPhotoStateCopyWithImpl<$Res>
    extends _$AddWallPhotoStateCopyWithImpl<$Res, _$_AddWallPhotoState>
    implements _$$_AddWallPhotoStateCopyWith<$Res> {
  __$$_AddWallPhotoStateCopyWithImpl(
      _$_AddWallPhotoState _value, $Res Function(_$_AddWallPhotoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? isSelfie = null,
    Object? nearestVenues = null,
    Object? liveEventsFromSelectedClub = null,
    Object? userLocation = null,
    Object? addPhotoStatus = null,
    Object? fetchNearestClubStatus = null,
    Object? fetchLiveEventsStatus = null,
    Object? sharePhotoStatus = null,
    Object? processPhotoStatus = null,
    Object? snackbarMessage = null,
    Object? selectedVenue = null,
    Object? selectedEvent = null,
    Object? initialEvent = null,
    Object? timeTask = null,
    Object? result = null,
    Object? processPhotoTask = null,
  }) {
    return _then(_$_AddWallPhotoState(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Option<File>,
      isSelfie: null == isSelfie
          ? _value.isSelfie
          : isSelfie // ignore: cast_nullable_to_non_nullable
              as bool,
      nearestVenues: null == nearestVenues
          ? _value._nearestVenues
          : nearestVenues // ignore: cast_nullable_to_non_nullable
              as List<WallPhotoVenue>,
      liveEventsFromSelectedClub: null == liveEventsFromSelectedClub
          ? _value._liveEventsFromSelectedClub
          : liveEventsFromSelectedClub // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      addPhotoStatus: null == addPhotoStatus
          ? _value.addPhotoStatus
          : addPhotoStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchNearestClubStatus: null == fetchNearestClubStatus
          ? _value.fetchNearestClubStatus
          : fetchNearestClubStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchLiveEventsStatus: null == fetchLiveEventsStatus
          ? _value.fetchLiveEventsStatus
          : fetchLiveEventsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      sharePhotoStatus: null == sharePhotoStatus
          ? _value.sharePhotoStatus
          : sharePhotoStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      processPhotoStatus: null == processPhotoStatus
          ? _value.processPhotoStatus
          : processPhotoStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      selectedVenue: null == selectedVenue
          ? _value.selectedVenue
          : selectedVenue // ignore: cast_nullable_to_non_nullable
              as Option<WallPhotoVenue>,
      selectedEvent: null == selectedEvent
          ? _value.selectedEvent
          : selectedEvent // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      initialEvent: null == initialEvent
          ? _value.initialEvent
          : initialEvent // ignore: cast_nullable_to_non_nullable
              as Option<Event>,
      timeTask: null == timeTask
          ? _value.timeTask
          : timeTask // ignore: cast_nullable_to_non_nullable
              as Option<TimeTask>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Option<WallPhoto>,
      processPhotoTask: null == processPhotoTask
          ? _value.processPhotoTask
          : processPhotoTask // ignore: cast_nullable_to_non_nullable
              as Option<Future<Option<Uint8List>>>,
    ));
  }
}

/// @nodoc

class _$_AddWallPhotoState implements _AddWallPhotoState {
  const _$_AddWallPhotoState(
      {required this.photo,
      required this.isSelfie,
      required final List<WallPhotoVenue> nearestVenues,
      required final List<Event> liveEventsFromSelectedClub,
      required this.userLocation,
      required this.addPhotoStatus,
      required this.fetchNearestClubStatus,
      required this.fetchLiveEventsStatus,
      required this.sharePhotoStatus,
      required this.processPhotoStatus,
      required this.snackbarMessage,
      required this.selectedVenue,
      required this.selectedEvent,
      required this.initialEvent,
      required this.timeTask,
      required this.result,
      required this.processPhotoTask})
      : _nearestVenues = nearestVenues,
        _liveEventsFromSelectedClub = liveEventsFromSelectedClub;

  @override
  final Option<File> photo;
  @override
  final bool isSelfie;
  final List<WallPhotoVenue> _nearestVenues;
  @override
  List<WallPhotoVenue> get nearestVenues {
    if (_nearestVenues is EqualUnmodifiableListView) return _nearestVenues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearestVenues);
  }

  final List<Event> _liveEventsFromSelectedClub;
  @override
  List<Event> get liveEventsFromSelectedClub {
    if (_liveEventsFromSelectedClub is EqualUnmodifiableListView)
      return _liveEventsFromSelectedClub;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liveEventsFromSelectedClub);
  }

  @override
  final Option<LatLng> userLocation;
  @override
  final CubitStatus addPhotoStatus;
  @override
  final CubitStatus fetchNearestClubStatus;
  @override
  final CubitStatus fetchLiveEventsStatus;
  @override
  final CubitStatus sharePhotoStatus;
  @override
  final CubitStatus processPhotoStatus;
  @override
  final Option<String> snackbarMessage;
  @override
  final Option<WallPhotoVenue> selectedVenue;
  @override
  final Option<Event> selectedEvent;
  @override
  final Option<Event> initialEvent;
  @override
  final Option<TimeTask> timeTask;
  @override
  final Option<WallPhoto> result;
  @override
  final Option<Future<Option<Uint8List>>> processPhotoTask;

  @override
  String toString() {
    return 'AddWallPhotoState(photo: $photo, isSelfie: $isSelfie, nearestVenues: $nearestVenues, liveEventsFromSelectedClub: $liveEventsFromSelectedClub, userLocation: $userLocation, addPhotoStatus: $addPhotoStatus, fetchNearestClubStatus: $fetchNearestClubStatus, fetchLiveEventsStatus: $fetchLiveEventsStatus, sharePhotoStatus: $sharePhotoStatus, processPhotoStatus: $processPhotoStatus, snackbarMessage: $snackbarMessage, selectedVenue: $selectedVenue, selectedEvent: $selectedEvent, initialEvent: $initialEvent, timeTask: $timeTask, result: $result, processPhotoTask: $processPhotoTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddWallPhotoState &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.isSelfie, isSelfie) ||
                other.isSelfie == isSelfie) &&
            const DeepCollectionEquality()
                .equals(other._nearestVenues, _nearestVenues) &&
            const DeepCollectionEquality().equals(
                other._liveEventsFromSelectedClub,
                _liveEventsFromSelectedClub) &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation) &&
            (identical(other.addPhotoStatus, addPhotoStatus) ||
                other.addPhotoStatus == addPhotoStatus) &&
            (identical(other.fetchNearestClubStatus, fetchNearestClubStatus) ||
                other.fetchNearestClubStatus == fetchNearestClubStatus) &&
            (identical(other.fetchLiveEventsStatus, fetchLiveEventsStatus) ||
                other.fetchLiveEventsStatus == fetchLiveEventsStatus) &&
            (identical(other.sharePhotoStatus, sharePhotoStatus) ||
                other.sharePhotoStatus == sharePhotoStatus) &&
            (identical(other.processPhotoStatus, processPhotoStatus) ||
                other.processPhotoStatus == processPhotoStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.selectedVenue, selectedVenue) ||
                other.selectedVenue == selectedVenue) &&
            (identical(other.selectedEvent, selectedEvent) ||
                other.selectedEvent == selectedEvent) &&
            (identical(other.initialEvent, initialEvent) ||
                other.initialEvent == initialEvent) &&
            (identical(other.timeTask, timeTask) ||
                other.timeTask == timeTask) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.processPhotoTask, processPhotoTask) ||
                other.processPhotoTask == processPhotoTask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      photo,
      isSelfie,
      const DeepCollectionEquality().hash(_nearestVenues),
      const DeepCollectionEquality().hash(_liveEventsFromSelectedClub),
      userLocation,
      addPhotoStatus,
      fetchNearestClubStatus,
      fetchLiveEventsStatus,
      sharePhotoStatus,
      processPhotoStatus,
      snackbarMessage,
      selectedVenue,
      selectedEvent,
      initialEvent,
      timeTask,
      result,
      processPhotoTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddWallPhotoStateCopyWith<_$_AddWallPhotoState> get copyWith =>
      __$$_AddWallPhotoStateCopyWithImpl<_$_AddWallPhotoState>(
          this, _$identity);
}

abstract class _AddWallPhotoState implements AddWallPhotoState {
  const factory _AddWallPhotoState(
          {required final Option<File> photo,
          required final bool isSelfie,
          required final List<WallPhotoVenue> nearestVenues,
          required final List<Event> liveEventsFromSelectedClub,
          required final Option<LatLng> userLocation,
          required final CubitStatus addPhotoStatus,
          required final CubitStatus fetchNearestClubStatus,
          required final CubitStatus fetchLiveEventsStatus,
          required final CubitStatus sharePhotoStatus,
          required final CubitStatus processPhotoStatus,
          required final Option<String> snackbarMessage,
          required final Option<WallPhotoVenue> selectedVenue,
          required final Option<Event> selectedEvent,
          required final Option<Event> initialEvent,
          required final Option<TimeTask> timeTask,
          required final Option<WallPhoto> result,
          required final Option<Future<Option<Uint8List>>> processPhotoTask}) =
      _$_AddWallPhotoState;

  @override
  Option<File> get photo;
  @override
  bool get isSelfie;
  @override
  List<WallPhotoVenue> get nearestVenues;
  @override
  List<Event> get liveEventsFromSelectedClub;
  @override
  Option<LatLng> get userLocation;
  @override
  CubitStatus get addPhotoStatus;
  @override
  CubitStatus get fetchNearestClubStatus;
  @override
  CubitStatus get fetchLiveEventsStatus;
  @override
  CubitStatus get sharePhotoStatus;
  @override
  CubitStatus get processPhotoStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  Option<WallPhotoVenue> get selectedVenue;
  @override
  Option<Event> get selectedEvent;
  @override
  Option<Event> get initialEvent;
  @override
  Option<TimeTask> get timeTask;
  @override
  Option<WallPhoto> get result;
  @override
  Option<Future<Option<Uint8List>>> get processPhotoTask;
  @override
  @JsonKey(ignore: true)
  _$$_AddWallPhotoStateCopyWith<_$_AddWallPhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

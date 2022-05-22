import 'package:bloc/bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/application/selector_club/selector_club_cubit.dart';

part 'welcome_loader_cubit.freezed.dart';

part 'welcome_loader_state.dart';

class WelcomeLoaderCubit extends Cubit<WelcomeLoaderState> {
  final SelectorClubCubit _selectorClubCubit;
  final CurrentEventCubit _currentEventCubit;
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  WelcomeLoaderCubit({
    required SelectorClubCubit selectorClubCubit,
    required CurrentEventCubit currentEventCubit,
    required FirebaseRemoteConfig firebaseRemoteConfig,
  })  : _selectorClubCubit = selectorClubCubit,
        _currentEventCubit = currentEventCubit,
        _firebaseRemoteConfig = firebaseRemoteConfig,
        super(WelcomeLoaderState.initial());

  bool get isStatusInitial =>
      state.remoteConfigStatus.isInitial() && state.cubitStatuses.isInitial();

  bool get isStatusLoading =>
      state.remoteConfigStatus.isLoading() || state.cubitStatuses.isLoading();

  bool get isStatusFailure =>
      state.remoteConfigStatus.isFailure() || state.cubitStatuses.isFailure();

  Future<void> loadData() async {
    await _setRemoteConfigSettings();

    if (_checkIfRemoteConfigIsNotInitialized()) {
      await _initRemoteConfig();
    }

    if (!state.remoteConfigStatus.isSuccess()) return;

    await _initCubitsData();
  }

  Future<void> _initCubitsData() async {
    if (!state.cubitStatuses.isInitial()) return;

    emit(state.copyWith(cubitStatuses: CubitStatus.loading));

    await _selectorClubCubit.getClubInfo();
    await _currentEventCubit.getCurrentEvent();

    if (_checkIfCubitsHasFailures()) {
      emit(state.copyWith(cubitStatuses: CubitStatus.failure));
      return;
    }

    emit(state.copyWith(cubitStatuses: CubitStatus.success));
  }

  _checkIfRemoteConfigIsNotInitialized() {
    return state.remoteConfigStatus.isInitial() ||
        state.remoteConfigStatus.isFailure();
  }

  _checkIfCubitsHasFailures() {
    return _selectorClubCubit.state.status.isFailure() ||
        _currentEventCubit.state.status.isFailure();
  }

  Future<void> _setRemoteConfigSettings() async {
    if (!state.remoteConfigStatus.isInitial()) return;

    await _firebaseRemoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: Duration.zero,
      ),
    );
  }

  Future<void> _initRemoteConfig() async {
    emit(state.copyWith(remoteConfigStatus: CubitStatus.loading));
    try {
      await _firebaseRemoteConfig.fetchAndActivate();
      emit(state.copyWith(remoteConfigStatus: CubitStatus.success));
    } on FormatException {
      emit(state.copyWith(remoteConfigStatus: CubitStatus.failure));
    }
  }
}

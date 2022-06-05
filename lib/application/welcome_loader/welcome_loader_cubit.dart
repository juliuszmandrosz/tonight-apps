import 'package:bloc/bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/application/overview/overview_cubit.dart';

part 'welcome_loader_cubit.freezed.dart';

part 'welcome_loader_state.dart';

class WelcomeLoaderCubit extends Cubit<WelcomeLoaderState> {
  final ClubInfoCubit _clubInfoCubit;
  final OverviewCubit _overviewCubit;
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  WelcomeLoaderCubit({
    required ClubInfoCubit clubInfoCubit,
    required OverviewCubit overviewCubit,
    required FirebaseRemoteConfig firebaseRemoteConfig,
  })  : _clubInfoCubit = clubInfoCubit,
        _overviewCubit = overviewCubit,
        _firebaseRemoteConfig = firebaseRemoteConfig,
        super(WelcomeLoaderState.initial());

  Future<void> loadData() async {
    if (!_checkIfWelcomeLoaderIsNotInitialized()) return;

    emit(state.copyWith(welcomeLoaderStatus: CubitStatus.loading));

    await _setRemoteConfigSettings();

    if (_checkIfRemoteConfigIsNotInitialized()) {
      await _initRemoteConfig();
    }

    if (!state.remoteConfigStatus.isSuccess()) return;

    _initClubInfo();
    _initOverview();
  }

  Future<void> resetState() async {
    emit(WelcomeLoaderState.initial());
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
      emit(
        state.copyWith(
          remoteConfigStatus: CubitStatus.failure,
          welcomeLoaderStatus: CubitStatus.initial,
        ),
      );
    }
  }

  _initClubInfo() {
    _clubInfoCubit.initClubInfo();
    _clubInfoCubit.stream.listen((state) {
      _checkAndEmitFailure(state.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initOverview() {
    _overviewCubit.getClubSales();
    _overviewCubit.stream.listen((state) {
      _checkAndEmitFailure(state.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _checkIfWelcomeLoaderIsNotInitialized() {
    return state.welcomeLoaderStatus.isInitial() ||
        state.welcomeLoaderStatus.isFailure();
  }

  _checkIfRemoteConfigIsNotInitialized() {
    return state.remoteConfigStatus.isInitial() ||
        state.remoteConfigStatus.isFailure();
  }

  _emitSuccessIfAllLoaded() {
    if (_checkIfAllDependenciesHaveLoaded()) {
      emit(state.copyWith(welcomeLoaderStatus: CubitStatus.success));
    }
  }

  _checkIfAllDependenciesHaveLoaded() {
    return _clubInfoCubit.state.status == CubitStatus.success &&
        _overviewCubit.state.status == CubitStatus.success;
  }

  _checkAndEmitFailure(CubitStatus cubitStatus) {
    if (cubitStatus == CubitStatus.failure) {
      emit(state.copyWith(welcomeLoaderStatus: CubitStatus.failure));
    }
  }
}

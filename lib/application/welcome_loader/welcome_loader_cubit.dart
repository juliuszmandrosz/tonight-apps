import 'package:bloc/bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';

part 'welcome_loader_cubit.freezed.dart';

part 'welcome_loader_state.dart';

class WelcomeLoaderCubit extends Cubit<WelcomeLoaderState> {
  final ClubInfoCubit _clubInfoCubit;
  final Stripe _stripe;
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  WelcomeLoaderCubit({
    required ClubInfoCubit clubInfoCubit,
    required Stripe stripe,
    required FirebaseRemoteConfig firebaseRemoteConfig,
  })  : _clubInfoCubit = clubInfoCubit,
        _stripe = stripe,
        _firebaseRemoteConfig = firebaseRemoteConfig,
        super(WelcomeLoaderState.initial());

  bool get isStatusInitial =>
      state.remoteConfigStatus.isInitial() &&
      state.cubitStatuses.isInitial() &&
      state.stripeStatus.isInitial();

  bool get isStatusLoading =>
      state.remoteConfigStatus.isLoading() ||
      state.cubitStatuses.isLoading() ||
      state.stripeStatus.isLoading();

  bool get isStatusFailure =>
      state.cubitStatuses.isFailure() || state.stripeStatus.isFailure();

  Future<void> loadData() async {
    await _setRemoteConfigSettings();

    if (_checkIfRemoteConfigIsNotInitialized()) {
      await _initRemoteConfig();
    }

    if (!state.remoteConfigStatus.isSuccess()) return;

    await _initCubitsData();
    await _initStripe();
  }

  Future<void> resetState() async {
    emit(WelcomeLoaderState.initial());
  }

  Future<void> _initCubitsData() async {
    if (!state.cubitStatuses.isInitial()) return;

    emit(state.copyWith(cubitStatuses: CubitStatus.loading));

    await _clubInfoCubit.getClubInfo();

    if (_checkIfCubitsHasFailures()) {
      emit(state.copyWith(cubitStatuses: CubitStatus.failure));
      return;
    }

    await _clubInfoCubit
        .getCurrencyParams(_clubInfoCubit.state.club.getOrCrash());

    if (_checkIfCubitsHasFailures()) {
      emit(state.copyWith(cubitStatuses: CubitStatus.failure));
      return;
    }

    emit(state.copyWith(cubitStatuses: CubitStatus.success));
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

  _initStripe() async {
    emit(state.copyWith(stripeStatus: CubitStatus.loading));
    try {
      Stripe.publishableKey =
          _firebaseRemoteConfig.getString(stripePublishableKey);
      await _stripe.applySettings();
      emit(state.copyWith(stripeStatus: CubitStatus.success));
    } on Exception {
      emit(state.copyWith(stripeStatus: CubitStatus.failure));
    }
  }

  _checkIfRemoteConfigIsNotInitialized() {
    return state.remoteConfigStatus.isInitial() ||
        state.remoteConfigStatus.isFailure();
  }

  _checkIfCubitsHasFailures() {
    return _clubInfoCubit.state.status.isFailure();
  }
}

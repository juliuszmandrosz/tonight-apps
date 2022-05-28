import 'package:bloc/bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/initialization/remote_config_cubit.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver_common/raver_common.dart';

part 'welcome_loading_cubit.freezed.dart';

part 'welcome_loading_state.dart';

class WelcomeLoadingCubit extends Cubit<WelcomeLoadingState> {
  final ProfileCubit _profileCubit;
  final UserLocationCubit _userLocationCubit;
  final RemoteConfigCubit _remoteConfigCubit;

  WelcomeLoadingCubit({
    required ProfileCubit profileCubit,
    required UserLocationCubit userLocationCubit,
    required RemoteConfigCubit remoteConfigCubit,
  })
      : _profileCubit = profileCubit,
        _userLocationCubit = userLocationCubit,
        _remoteConfigCubit = remoteConfigCubit,
        super(WelcomeLoadingState.initial());

  void loadDependencies() async {
    _initRemoteConfigCubit();
    _initProfileCubit();
    _initUserLocationCubit();

    Stripe.publishableKey =
        FirebaseRemoteConfig.instance.getString(stripePublishableKey);

    await Stripe.instance.applySettings();
  }

  void _emitSuccessIfAllLoaded() {
    if (_allDependenciesLoaded()) {
      final isOnboardingCompleted = _onboardingCompleted();
      emit(state.copyWith(
          dependenciesLoaded: true,
          onboardingCompleted: isOnboardingCompleted));
    }
  }

  void _checkAndEmitFailure(CubitStatus cubitStatus) {
    if (cubitStatus == CubitStatus.failure) {
      emit(state.copyWith(isFailure: true));
    }
  }

  _initRemoteConfigCubit() {
    _remoteConfigCubit.setupRemoteConfig();
    _remoteConfigCubit.stream.listen((event) {
      _checkAndEmitFailure(event.cubitStatus);
      _emitSuccessIfAllLoaded();
    });
  }

  _initProfileCubit() {
    _profileCubit.getUserProfile();
    _profileCubit.stream.listen((event) {
      _checkAndEmitFailure(event.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initUserLocationCubit() {
    _userLocationCubit.requestUserLocationOnStart();
    _userLocationCubit.stream.listen((event) {
      _emitSuccessIfAllLoaded();
    });
  }

  _allDependenciesLoaded() {
    return _remoteConfigCubit.state.cubitStatus == CubitStatus.success &&
        !_userLocationCubit.state.isLoading &&
        _profileCubit.state.status == CubitStatus.success;
  }

  _onboardingCompleted() {
    return _profileCubit.state.user.username.isNotEmpty;
  }
}

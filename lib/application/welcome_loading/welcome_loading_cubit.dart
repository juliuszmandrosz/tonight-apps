import 'package:bloc/bloc.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';

part 'welcome_loading_cubit.freezed.dart';
part 'welcome_loading_state.dart';

class WelcomeLoadingCubit extends Cubit<WelcomeLoadingState> {
  WelcomeLoadingCubit() : super(WelcomeLoadingState.initial());

  void locationLoaded() {
    emit(state.copyWith(isLocationLoaded: true));
  }

  void remoteConfigLoaded() async {
    // TODO - consider to move this somewhere
    Stripe.publishableKey =
        FirebaseRemoteConfig.instance.getString(stripePublishableKey);
    await Stripe.instance.applySettings();
    emit(state.copyWith(isRemoteConfigLoaded: true));
  }

  void failure() {
    emit(state.copyWith(isFailure: true));
  }
}

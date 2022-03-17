import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/remote_config/remote_config_facade.dart';

part 'remote_config_cubit.freezed.dart';
part 'remote_config_state.dart';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  final RemoteConfigFacade _remoteConfigFacade;

  RemoteConfigCubit(
    this._remoteConfigFacade,
  ) : super(const RemoteConfigState.initial());

  void setupRemoteConfig() async {
    emit(const RemoteConfigState.loading());

    final failureOrSuccess = await _remoteConfigFacade.activateRemoteConfig();

    failureOrSuccess.fold(
      (_) => emit(const RemoteConfigState.configFailure()),
      (_) => emit(const RemoteConfigState.configLoaded()),
    );
  }
}

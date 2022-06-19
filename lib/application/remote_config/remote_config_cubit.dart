import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';

part 'remote_config_cubit.freezed.dart';

part 'remote_config_state.dart';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  final RemoteConfigFacade _remoteConfigFacade;
  final NetworkCheckCubit _networkCheckCubit;

  RemoteConfigCubit({
    required RemoteConfigFacade remoteConfigFacade,
    required NetworkCheckCubit networkCheckCubit,
  })  : _remoteConfigFacade = remoteConfigFacade,
        _networkCheckCubit = networkCheckCubit,
        super(RemoteConfigState.initial());

  void setupRemoteConfig() async {
    if (state.status.isSuccess() || state.status.isLoading()) {
      return;
    }

    emit(state.copyWith(status: CubitStatus.loading));

    await _networkCheckCubit.retryNetworkConnection();

    if (!_networkCheckCubit.state.isConnected) {
      emit(state.copyWith(status: CubitStatus.failure));
      return;
    }

    final failureOrSuccess = await _remoteConfigFacade.activateRemoteConfig();

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (success) => emit(state.copyWith(status: CubitStatus.success)),
    );
  }
}

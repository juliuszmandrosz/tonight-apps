import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/remote_config/remote_config_facade.dart';
import 'package:raver_common/application/cubit_status.dart';

part 'remote_config_cubit.freezed.dart';
part 'remote_config_state.dart';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  final RemoteConfigFacade _remoteConfigFacade;

  RemoteConfigCubit(
    this._remoteConfigFacade,
  ) : super(RemoteConfigState.initial());

  void setupRemoteConfig() async {
    emit(state.copyWith(cubitStatus: CubitStatus.loading));

    final failureOrSuccess = await _remoteConfigFacade.activateRemoteConfig();

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(cubitStatus: CubitStatus.failure)),
      (success) => emit(state.copyWith(cubitStatus: CubitStatus.success)),
    );
  }
}

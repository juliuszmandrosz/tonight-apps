import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_check_cubit.freezed.dart';

part 'network_check_state.dart';

class NetworkCheckCubit extends Cubit<NetworkCheckState> {
  final Connectivity _connectivity;
  late final StreamSubscription _connectivitySub;

  NetworkCheckCubit(this._connectivity) : super(NetworkCheckState.initial());

  void initNetworkListener() {
    _connectivitySub = _connectivity.onConnectivityChanged.listen(
      (result) {
        if (result == ConnectivityResult.wifi ||
            result == ConnectivityResult.mobile) {
          emit(state.copyWith(isConnected: true));
          return;
        }
        emit(state.copyWith(isConnected: false));
      },
    );
  }

  @override
  Future<void> close() {
    _connectivitySub.cancel();
    return super.close();
  }
}

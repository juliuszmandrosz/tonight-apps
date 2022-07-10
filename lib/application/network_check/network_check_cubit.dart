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
    _connectivitySub = _connectivity.onConnectivityChanged.listen((result) {
      _emitConnectionStatus(result);
    });
  }

  Future<void> retryNetworkConnection() async {
    _emitConnectionStatus(await _connectivity.checkConnectivity());
  }

  Future<bool> checkNetworkConnection() async {
    final result = await _connectivity.checkConnectivity();
    return _checkConnection(result);
  }

  _emitConnectionStatus(ConnectivityResult result) {
    if (_checkConnection(result)) {
      emit(state.copyWith(isConnected: true));
      return;
    }
    emit(state.copyWith(isConnected: false));
  }

  _checkConnection(ConnectivityResult result) {
    return result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile;
  }

  @override
  Future<void> close() {
    _connectivitySub.cancel();
    return super.close();
  }
}

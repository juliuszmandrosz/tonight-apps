import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_check_cubit.freezed.dart';

part 'network_check_state.dart';

class NetworkCheckCubit extends Cubit<NetworkCheckState> {
  final Connectivity _connectivity;

  NetworkCheckCubit(this._connectivity) : super(NetworkCheckState.initial());

  void initNetworkListener() {
    _connectivity.onConnectivityChanged.listen(
      (connectivityResult) {
        if (connectivityResult == ConnectivityResult.wifi ||
            connectivityResult == ConnectivityResult.mobile) {
          emit(state.copyWith(isConnected: true));
          return;
        }
        emit(state.copyWith(isConnected: false));
      },
    );
  }
}

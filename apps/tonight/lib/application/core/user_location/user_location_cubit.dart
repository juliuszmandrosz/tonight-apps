import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:common/common.dart';

part 'user_location_cubit.freezed.dart';
part 'user_location_state.dart';

class UserLocationCubit extends Cubit<UserLocationState> {
  final GeolocatorPlatform _geolocator;

  UserLocationCubit(this._geolocator) : super(UserLocationState.initial());

  Future<void> requestUserLocationOnStart() async {
    emit(state.copyWith(isLoading: true));

    if (!await _checkIfServiceIsEnabled()) {
      emit(state.copyWith(isLoading: false));
      return;
    }

    if (!await _checkIfPermissionIsGranted()) {
      emit(state.copyWith(isLoading: false));
      return;
    }

    await _getUserLocation();
  }

  void openAppSettings() {
    _geolocator.openAppSettings();
  }

  Future<void> setLocationIfPermissionIsGranted() async {
    emit(state.copyWith(isLoading: true));
    var permission = await _geolocator.checkPermission();

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      emit(state.copyWith(isPermissionGranted: true));

      await _getUserLocation();
    }

    emit(state.copyWith(isLoading: false));
  }

  Future<void> _getUserLocation() async {
    final userLocation = await _geolocator.getCurrentPosition();

    emit(
      state.copyWith(
        userLocation: some(
          {latitude: userLocation.latitude, longitude: userLocation.longitude},
        ),
        isLoading: false,
      ),
    );
  }

  Future<bool> _checkIfServiceIsEnabled() async {
    var _serviceEnabled = await _geolocator.isLocationServiceEnabled();
    if (!_serviceEnabled) {
      return false;
    }
    return true;
  }

  Future<bool> _checkIfPermissionIsGranted() async {
    var permission = await _geolocator.checkPermission();

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    if (permission == LocationPermission.denied) {
      permission = await _geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        return false;
      }
    }

    emit(state.copyWith(isPermissionGranted: true));

    return true;
  }
}

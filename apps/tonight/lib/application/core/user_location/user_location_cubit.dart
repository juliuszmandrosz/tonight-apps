import 'dart:async';

import 'package:common/common.dart';
import 'package:common/domain/errors/invalid_operation_error.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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

    await _setUserLocation();
  }

  void openAppSettings() {
    _geolocator.openAppSettings();
  }

  Future<LatLng> getCurrentLatLngOrCrash() async {
    await setLocationIfPermissionIsGranted();
    if (!state.isPermissionGranted) throw InvalidOperationError();
    final location = state.userLocation.getOrCrash();
    return LatLng(location[latitude]!, location[longitude]!);
  }

  Future<void> setLocationIfPermissionIsGranted() async {
    emit(state.copyWith(isLoading: true));
    var permission = await _geolocator.checkPermission();

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      emit(state.copyWith(isPermissionGranted: true));

      await _setUserLocation();
    }
  }

  Future<void> _setUserLocation() async {
    final userLocation = await _geolocator.getCurrentPosition();

    emit(
      state.copyWith(
        userLocation: some({
          latitude: userLocation.latitude,
          longitude: userLocation.longitude,
        }),
        isLoading: false,
        isPermissionGranted: true,
      ),
    );
  }

  Future<bool> _checkIfServiceIsEnabled() async {
    var isServiceEnabled = await _geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
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

    return true;
  }
}

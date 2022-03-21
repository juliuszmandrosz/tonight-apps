import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/presentation/profile/providers_list.dart';
import 'package:raver_account_settings/raver_account_settings.dart';
import 'package:raver_common/application/application.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UserAccountFacade _profileFacade;

  ProfileCubit(this._profileFacade) : super(ProfileState.initial());

  late StreamSubscription<Either<ProfileFailure, UserProfile>>
      _profileSubscription;

  void getUserProfile() {
    emit(state.copyWith(cubitStatus: CubitStatus.loading));

    _profileSubscription =
        _profileFacade.getProfile().listen((failureOrSuccess) {
      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(cubitStatus: CubitStatus.failure),
        ),
        (profile) async {
          final isFromOauth = _isFromOauth();
          emit(
            state.copyWith(
                cubitStatus: CubitStatus.success,
                user: profile,
                isFromOauth: isFromOauth),
          );
        },
      );
    });
  }

  bool _isFromOauth() {
    final providerId = _profileFacade.getProviderForUser();
    return providersList[providerId] == ProviderId.facebook ||
        providersList[providerId] == ProviderId.google;
  }

  @override
  Future<void> close() {
    _profileSubscription.cancel();
    return super.close();
  }
}

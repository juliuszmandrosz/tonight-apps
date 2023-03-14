import 'dart:async';

import 'package:account_settings/account_settings.dart';
import 'package:auth/auth.dart';
import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/profile/profile_cubit_hub.dart';
import 'package:tonight/presentation/profile/providers_list.dart';
import 'package:translations/translations.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UserAccountFacade _accountFacade;
  final CommonAuthFacade _authFacade;
  final ProfileBroadcastSubject _profileSubject;

  ProfileCubit({
    required UserAccountFacade userAccountFacade,
    required CommonAuthFacade commonAuthFacade,
    required ProfileBroadcastSubject profileBroadcastSubject,
  })  : _accountFacade = userAccountFacade,
        _authFacade = commonAuthFacade,
        _profileSubject = profileBroadcastSubject,
        super(ProfileState.initial());

  StreamSubscription<Either<UserProfileFailure, UserProfile>>?
      _profileSubscription;

  void getUserProfile() {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    _profileSubscription =
        _accountFacade.getProfile().listen((failureOrSuccess) {
      failureOrSuccess.fold(
        (failure) {
          emit(state.copyWith(initialStatus: CubitStatus.failure));
          _profileSubject.addToSubject(state);
        },
        (profile) async {
          final isFromOauth = _isFromOauth();
          emit(
            state.copyWith(
                initialStatus: CubitStatus.success,
                user: profile,
                isFromOauth: isFromOauth),
          );
          _profileSubject.addToSubject(state);
        },
      );
    });
  }

  Future<void> deleteAccount() async {
    emit(state.copyWith(deletingAccountStatus: CubitStatus.loading));

    final failureOrSuccess = await _authFacade.deleteAccount();

    failureOrSuccess.fold(
      (failure) => _emitDeleteAccountFailure(),
      (success) => emit(
        state.copyWith(deletingAccountStatus: CubitStatus.success),
      ),
    );
  }

  _emitDeleteAccountFailure() {
    emit(
      state.copyWith(
        deletingAccountStatus: CubitStatus.failure,
        snackbarMessage: some(S().serverError),
      ),
    );
    emit(state.copyWith(snackbarMessage: none()));
  }

  bool _isFromOauth() {
    final providerId = _accountFacade.getProviderForUser();
    final provider = providersList[providerId];
    return provider == ProviderId.facebook ||
        provider == ProviderId.google ||
        provider == ProviderId.apple;
  }

  @override
  Future<void> close() {
    _profileSubscription?.cancel();
    return super.close();
  }
}

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/profile/profile_cubit_hub.dart';
import 'package:raver/presentation/profile/providers_list.dart';
import 'package:raver_account_settings/raver_account_settings.dart';
import 'package:raver_common/application/application.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UserAccountFacade _profileFacade;
  final ProfileBroadcastSubject _subject;

  ProfileCubit(this._profileFacade, this._subject)
      : super(ProfileState.initial());

  StreamSubscription<Either<ProfileFailure, UserProfile>>? _profileSubscription;

  void getUserProfile() {
    emit(state.copyWith(status: CubitStatus.loading));

    _profileSubscription =
        _profileFacade.getProfile().listen((failureOrSuccess) {
      failureOrSuccess.fold(
        (failure) {
          emit(
            state.copyWith(status: CubitStatus.failure),
          );
          _subject.addToSubject(state);
        },
        (profile) async {
          final isFromOauth = _isFromOauth();
          emit(
            state.copyWith(
                status: CubitStatus.success,
                user: profile,
                isFromOauth: isFromOauth),
          );
          _subject.addToSubject(state);
        },
      );
    });
  }

  bool _isFromOauth() {
    final providerId = _profileFacade.getProviderForUser();
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

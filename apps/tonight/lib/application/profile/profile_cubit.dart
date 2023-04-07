import 'dart:async';

import 'package:auth/auth.dart';
import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/user_profile/user_profile_aggregator.dart';
import 'package:tonight/domain/user_profile/user_profile_failure.dart';
import 'package:tonight/domain/user_profile/user_profile_model.dart';
import 'package:translations/translations.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UserProfileAggregator _userProfileAggregator;
  final CommonAuthFacade _authFacade;

  ProfileCubit({
    required UserProfileAggregator userProfileAggregator,
    required CommonAuthFacade commonAuthFacade,
  })  : _userProfileAggregator = userProfileAggregator,
        _authFacade = commonAuthFacade,
        super(ProfileState.initial());

  StreamSubscription<Either<UserProfileFailure, UserProfile>>?
      _profileSubscription;

  void getUserProfile() {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    _profileSubscription =
        _userProfileAggregator.getUserProfile().listen((result) {
      result.fold(
        (failure) {
          emit(state.copyWith(initialStatus: CubitStatus.failure));
        },
        (profile) {
          emit(
            state.copyWith(
              initialStatus: CubitStatus.success,
              userProfile: some(profile),
            ),
          );
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

  @override
  Future<void> close() {
    _profileSubscription?.cancel();
    return super.close();
  }
}

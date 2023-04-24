import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/user_details/user_details_aggregator.dart';
import 'package:tonight/domain/user_details/user_details_model.dart';

part 'user_details_cubit.freezed.dart';
part 'user_details_state.dart';

class UserDetailsCubit extends Cubit<UserDetailsState> {
  final UserDetailsAggregator _userDetailsRepository;

  UserDetailsCubit(this._userDetailsRepository)
      : super(UserDetailsState.initial());

  Future<void> getUserById(String userId) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final result = await _userDetailsRepository.getUserDetails(userId);

    result.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (user) => emit(
        state.copyWith(status: CubitStatus.success, user: user),
      ),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_account_settings/raver_account_settings.dart';
import 'package:raver_common/raver_common.dart';

part 'push_notifications_cubit.freezed.dart';
part 'push_notifications_state.dart';

class PushNotificationsCubit extends Cubit<PushNotificationsState> {
  final UserAccountFacade _accountFacade;

  PushNotificationsCubit(this._accountFacade)
      : super(PushNotificationsState.initial());

  Future<void> savePushNotificationToken(String token) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess =
        await _accountFacade.savePushNotificationsToken(token);

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (success) => emit(state.copyWith(status: CubitStatus.success)),
    );
  }
}

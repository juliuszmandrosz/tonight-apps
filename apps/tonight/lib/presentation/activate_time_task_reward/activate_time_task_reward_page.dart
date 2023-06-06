import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:tonight/application/activate_time_task_reward/activate_time_task_reward_cubit.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/domain/time_task_vouchers/time_task_voucher_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/activate_time_task_reward/widgets/activate_time_task_reward_button.dart';
import 'package:tonight/presentation/activate_time_task_reward/widgets/activate_time_task_reward_name_info.dart';
import 'package:tonight/presentation/activate_time_task_reward/widgets/activate_time_task_reward_photo.dart';
import 'package:tonight/presentation/activate_time_task_reward/widgets/activate_time_task_reward_valid_until_info.dart';
import 'package:tonight/presentation/activate_time_task_reward/widgets/activate_time_task_reward_voucher_info.dart';
import 'package:tonight/presentation/activate_time_task_reward/widgets/receive_time_task_voucher_reward_button.dart';
import 'package:tonight/presentation/activate_time_task_reward/widgets/time_task_voucher_expired_info.dart';
import 'package:tonight/presentation/commons/widgets/countdown_timer.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ActivateTimeTaskRewardPage extends StatefulWidget {
  final WallPhoto photo;

  const ActivateTimeTaskRewardPage({
    required this.photo,
    Key? key,
  }) : super(key: key);

  @override
  State<ActivateTimeTaskRewardPage> createState() =>
      _ActivateTimeTaskRewardPageState();
}

class _ActivateTimeTaskRewardPageState
    extends State<ActivateTimeTaskRewardPage> {
  @override
  void initState() {
    ScreenBrightness().setScreenBrightness(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ActivateTimeTaskRewardCubit>()
        ..getVoucherByTimeTaskId(widget.photo.timeTaskId!),
      child: BlocListener<ActivateTimeTaskRewardCubit,
          ActivateTimeTaskRewardState>(
        listener: (context, state) {
          state.snackbarMessage.fold(
            () => null,
            (message) => context.showSnackbarMessage(message),
          );

          if (state.receiveRewardStatus.isSuccess()) {
            context.router.popUntil(
              (route) => route.settings.name == WelcomeLoaderRoute.name,
            );
            context.read<ProfileBloc>().add(
                  ProfileEvent.userWallPhotoUpdated(
                    widget.photo.copyWith(isRewardAcquired: true),
                  ),
                );
            // TODO - add translation
            context.showSnackbarMessage('Na zdrowie! 🍻');
          }
        },
        child: Scaffold(
          appBar: TonightAppBar(
            title: '',
            backgroundColor: context.backgroundColor,
          ),
          body: BlocBuilder<ActivateTimeTaskRewardCubit,
              ActivateTimeTaskRewardState>(
            builder: (context, state) {
              switch (state.getVoucherStatus) {
                case CubitStatus.initial:
                  return const SizedBox.shrink();
                case CubitStatus.loading:
                  return const WaveLoadingIndicator();
                case CubitStatus.failure:
                  return state.failure.getOrCrash().maybeWhen(
                        voucherNotExists: () =>
                            const TimeTaskVoucherExpiredInfo(),
                        orElse: () => FailureInfo(
                          retryCallback: () => context
                              .read<ActivateTimeTaskRewardCubit>()
                              .getVoucherByTimeTaskId(widget.photo.timeTaskId!),
                        ),
                      );
                case CubitStatus.success:
                  final voucher = state.voucher.getOrCrash();
                  final secondsLeftForReceiveReward = voucher.usedAt
                      ?.add(const Duration(minutes: 10))
                      .difference(DateTime.now())
                      .inSeconds;
                  final isVoucherExpired = _checkIfVoucherExpired(
                      voucher, secondsLeftForReceiveReward);
                  return isVoucherExpired
                      ? const TimeTaskVoucherExpiredInfo()
                      : Column(
                          children: [
                            if (voucher.isActivated &&
                                secondsLeftForReceiveReward! > 0)
                              CountdownTimer(
                                secondsLeft: secondsLeftForReceiveReward,
                                onTimerCompleted: () {
                                  // TODO - add translation
                                  context.showSnackbarMessage(
                                    'Czas na odebranie nagrody minął',
                                  );
                                  context.popRoute();
                                },
                                textStyle: context.headlineMedium,
                              ),
                            const SizedBox(height: 20),
                            ActivateTimeTaskRewardVoucherInfo(
                              voucherName: voucher.voucherName,
                            ),
                            const SizedBox(height: 20),
                            ActivateTimeTaskRewardNameInfo(
                              timeTaskName: voucher.timeTaskName,
                            ),
                            const SizedBox(height: 20),
                            ActivateTimeTaskRewardPhoto(
                              photoUrl: widget.photo.photoUrl,
                            ),
                            if (!voucher.isActivated)
                              const SizedBox(height: 20),
                            if (!voucher.isActivated)
                              ActivateTimeTaskRewardValidUntilInfo(
                                validUntil: voucher.validUntil,
                              ),
                            const Spacer(),
                            voucher.isActivated &&
                                    secondsLeftForReceiveReward! > 0
                                ? const ReceiveTimeTaskVoucherRewardButton()
                                : const ActivateTimeTaskRewardButton(),
                            const SizedBox(height: 12),
                          ],
                        );
              }
            },
          ),
        ),
      ),
    );
  }

  bool _checkIfVoucherExpired(
    TimeTaskVoucher voucher,
    int? secondsLeftForReceiveReward,
  ) {
    if (voucher.validUntil.isBefore(DateTime.now())) return true;

    if (voucher.isRewardAcquired) return true;

    if (voucher.isActivated && secondsLeftForReceiveReward! <= 0) return true;

    return false;
  }

  @override
  void dispose() {
    ScreenBrightness().resetScreenBrightness();
    super.dispose();
  }
}

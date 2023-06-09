import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/activate_time_task_reward/activate_time_task_reward_cubit.dart';
import 'package:translations/translations.dart';

class ReceiveTimeTaskVoucherRewardButton extends StatelessWidget {
  const ReceiveTimeTaskVoucherRewardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivateTimeTaskRewardCubit,
        ActivateTimeTaskRewardState>(
      builder: (context, state) {
        return state.receiveRewardStatus.isLoading()
            ? const CircleLoadingIndicator()
            : SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: state.voucher.isNone()
                      ? null
                      : () async {
                          final result = await context
                              .showConfirmationDialogWithCustomMessage(
                            S().confirmRewardReceived,
                          );

                          if (result == true && context.mounted) {
                            context
                                .read<ActivateTimeTaskRewardCubit>()
                                .receiveReward();
                          }
                        },
                  icon: const Icon(Icons.check),
                  label: Text(S().rewardReceived),
                ),
              );
      },
    );
  }
}

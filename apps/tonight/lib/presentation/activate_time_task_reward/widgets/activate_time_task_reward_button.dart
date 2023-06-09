import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/activate_time_task_reward/activate_time_task_reward_cubit.dart';
import 'package:translations/translations.dart';

class ActivateTimeTaskRewardButton extends StatelessWidget {
  const ActivateTimeTaskRewardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivateTimeTaskRewardCubit,
        ActivateTimeTaskRewardState>(
      builder: (context, state) {
        return state.activateVoucherStatus.isLoading()
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
                            S().confirmTimeTaskVoucherUse,
                          );

                          if (result == true && context.mounted) {
                            context
                                .read<ActivateTimeTaskRewardCubit>()
                                .activateVoucher();
                          }
                        },
                  icon: const Icon(Icons.check),
                  label: Text(S().activate),
                ),
              );
      },
    );
  }
}

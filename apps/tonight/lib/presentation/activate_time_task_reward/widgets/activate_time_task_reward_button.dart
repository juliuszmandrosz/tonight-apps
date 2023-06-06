import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/activate_time_task_reward/activate_time_task_reward_cubit.dart';

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
                            // TODO - add translation
                            'Czy na pewno chcesz aktywować nagrodę? Będzie ważna przez 10 minut. Upewnij się, że zdążysz do baru.',
                          );

                          if (result == true && context.mounted) {
                            context
                                .read<ActivateTimeTaskRewardCubit>()
                                .activateVoucher();
                          }
                        },
                  icon: const Icon(Icons.check),
                  // TODO - add translation
                  label: const Text('Aktywuj'),
                ),
              );
      },
    );
  }
}

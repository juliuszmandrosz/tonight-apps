import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/redeem_tonight_voucher/redeem_tonight_voucher_cubit.dart';

class RedeemTonightVoucherButton extends StatelessWidget {
  final String eventId;

  const RedeemTonightVoucherButton({
    required this.eventId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RedeemTonightVoucherCubit, RedeemTonightVoucherState>(
      builder: (context, state) {
        return state.redeemVoucherStatus.isLoading()
            ? const CircleLoadingIndicator()
            : SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    final result =
                        await context.showConfirmationDialogWithCustomMessage(
                      // TODO - add translation
                      'Czy na pewno nagroda została odebrana?',
                    );

                    if (result == true && context.mounted) {
                      context
                          .read<RedeemTonightVoucherCubit>()
                          .redeemTonightVoucher(eventId);
                    }
                  },
                  icon: const Icon(Icons.check),
                  // TODO - add translation
                  label: const Text('Nagroda odebrana'),
                ),
              );
      },
    );
  }
}

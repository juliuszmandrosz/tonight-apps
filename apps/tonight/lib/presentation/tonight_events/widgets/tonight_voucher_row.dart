import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:tonight/application/tonight_events/models/event_voucher_model.dart';
import 'package:tonight/presentation/utils/show_confirm_phone_number_dialog.dart';
import 'package:translations/translations.dart';

class TonightVoucherRow extends StatelessWidget {
  final EventVoucher voucher;

  const TonightVoucherRow({
    required this.voucher,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (!context.read<AuthCubit>().checkIfPhoneNumberIsVerified()) {
          final result = await showConfirmPhoneNumberDialog(context);
          if (result != true) return;
        }

        if (context.mounted) {
          final result = await context.showConfirmationDialogWithCustomMessage(
            S().confirmTonightVoucherUse,
          );

          if (result != true) return;

          if (context.mounted) {
            context
                .read<TonightEventsBloc>()
                .add(TonightEventsEvent.eventVoucherUsed(voucher));
          }
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          top: 4,
          right: 12,
          bottom: 8,
        ),
        child: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.gifts,
              size: 20,
              color: context.secondaryColor,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                voucher.voucherName,
                style: context.labelSmall.copyWith(
                  color: context.secondaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

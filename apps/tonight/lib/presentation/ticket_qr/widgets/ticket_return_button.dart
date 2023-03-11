import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_qr/ticket_qr_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketReturnButton extends StatelessWidget {
  const TicketReturnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketQrCubit, TicketQrState>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () async {
                  final confirmation =
                      await context.showConfirmationDialogWithCustomMessage(
                    S().confirmTicketReturn,
                  );

                  if (confirmation ?? false) {
                    context.read<TicketQrCubit>().returnTicket();
                  }
                },
                child: Text(S().returnTicket),
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/ticket_qr/ticket_qr_cubit.dart';
import 'package:translations/translations.dart';

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
